import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';

import 'package:mobile/core/config/session.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class FaceRecognitionWebSocketDataSource {
  Future<Either<Failure, Map<String, dynamic>>> recognizeFace(
    Map<String, dynamic> request,
  );

  Future<Either<Failure, void>> connect();
  Future<Either<Failure, void>> disconnect();
  Stream<Map<String, dynamic>>? get recognitionStream;
  bool get isConnected;
}

class FaceRecognitionWebSocketDataSourceImpl
    implements FaceRecognitionWebSocketDataSource {
  final String _baseUrl;
  WebSocket? _webSocket;
  final StreamController<Map<String, dynamic>> _responseController =
      StreamController<Map<String, dynamic>>.broadcast();
  bool _isClosed = false;
  bool _isConnected = false;
  String? _currentRequestId;
  Completer<Either<Failure, Map<String, dynamic>>>? _responseCompleter;
  final Duration _timeout = const Duration(seconds: 300); // 5 minutes

  FaceRecognitionWebSocketDataSourceImpl(this._baseUrl);

  Future<String> get _urlWithToken async {
    final token = await Session.getAccessToken();
    if (token != null && token.isNotEmpty) {
      return '$_baseUrl?token=$token';
    }
    return _baseUrl;
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> recognizeFace(
    Map<String, dynamic> request,
  ) async {
    if (!isConnected) {
      SimpleLogger.error('[V1_V2_ERROR] WebSocket not connected');
      return Left(ServerFailure('WebSocket not connected'));
    }

    try {
      final message = {
        'type': 'face_recognition',
        'action': request['action'],
        'attendance_id': request['attendance_id'],
        'image': request['image'],
        'request_id': request['request_id'],
      };

      // V1 vs V2 Performance Logging
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Sending WebSocket request: ${request['request_id']}');
      _webSocket!.add(jsonEncode(message));

      // V1 vs V2 Performance Logging
      SimpleLogger.info('[V1_V2_PERFORMANCE] Waiting for response...');
      _currentRequestId = request['request_id'];
      _responseCompleter = Completer<Either<Failure, Map<String, dynamic>>>();

      // Set timeout
      Timer(_timeout, () {
        if (!_responseCompleter!.isCompleted) {
          SimpleLogger.error(
              '[V1_V2_ERROR] WebSocket timeout for request: ${request['request_id']}');
          _responseCompleter!.complete(Left(ServerFailure('Request timeout')));
        }
      });

      return await _responseCompleter!.future;
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] WebSocket send error: $e');
      return Left(ServerFailure('Failed to send request: $e'));
    }
  }

  void _handleResponse(String data) {
    try {
      final jsonData = jsonDecode(data);

      // V1 vs V2 Performance Logging
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Received response: ${jsonData['type']}');

      if (_responseCompleter != null && !_responseCompleter!.isCompleted) {
        final responseRequestId = jsonData['request_id'] as String?;
        if (responseRequestId == _currentRequestId) {
          // Only complete for final responses, not intermediate ones
          final responseType = jsonData['type'] as String?;
          if (responseType == 'face_recognition_success' ||
              responseType == 'face_recognition_error') {
            SimpleLogger.success(
                '[V1_V2_SUCCESS] Final response matched request ID');
            _responseCompleter!.complete(Right(jsonData));
          } else {
            SimpleLogger.info(
                '[V1_V2_PERFORMANCE] Intermediate response: $responseType');
          }
        } else {
          SimpleLogger.warning(
              '[V1_V2_ERROR] Request ID mismatch: expected $_currentRequestId, got $responseRequestId');
        }
      }
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] Response parsing error: $e');
      if (_responseCompleter != null && !_responseCompleter!.isCompleted) {
        _responseCompleter!
            .complete(Left(ServerFailure('Invalid response format')));
      }
    }
  }

  @override
  Future<Either<Failure, void>> connect() async {
    try {
      final url = await _urlWithToken;
      // V1 vs V2 Performance Logging
      SimpleLogger.info('[V1_V2_PERFORMANCE] Connecting to WebSocket: $url');

      _webSocket = await WebSocket.connect(url);
      _isClosed = false;
      _isConnected = true;

      SimpleLogger.success('[V1_V2_SUCCESS] WebSocket connected');

      _webSocket!.listen(
        (data) {
          // V1 vs V2 Performance Logging
          SimpleLogger.info(
              '[V1_V2_PERFORMANCE] Raw data received: ${data.toString().substring(0, 100)}...');
          _handleResponse(data.toString());
        },
        onError: (error) {
          SimpleLogger.error('[V1_V2_ERROR] WebSocket error: $error');
          _isConnected = false;
        },
        onDone: () {
          SimpleLogger.info('[V1_V2_PERFORMANCE] WebSocket connection closed');
          _isClosed = true;
          _isConnected = false;
        },
      );

      return const Right(null);
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] WebSocket connection failed: $e');
      return Left(ServerFailure('Failed to connect: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> disconnect() async {
    _isClosed = true;

    // Close WebSocket first
    if (_webSocket != null) {
      await _webSocket!.close();
      _webSocket = null;
    }

    // Don't close stream controller here - only close on failure/success
    // if (!_responseController.isClosed) {
    //   try {
    //     await _responseController.close();
    //   } catch (e) {
    //     SimpleLogger.warning(
    //         '⚠️ [WebSocket] Error closing response controller: $e');
    //   }
    // }

    return const Right(null);
  }

  @override
  Stream<Map<String, dynamic>>? get recognitionStream =>
      _isClosed ? null : _responseController.stream;

  @override
  bool get isConnected =>
      _webSocket != null &&
      _webSocket!.readyState == WebSocket.open &&
      !_isClosed &&
      _isConnected;
}
