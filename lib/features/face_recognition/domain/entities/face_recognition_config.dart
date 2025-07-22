import 'package:mobile/core/config/base_url.dart';
import 'package:mobile/features/face_recognition/domain/enums/enum.dart';

import 'face_recognition_response_entity.dart';

typedef OnSuccessCallback = Future<void> Function(
    FaceRecognitionResponseEntity response);
typedef OnFailureCallback = Future<void> Function(
    String reason, int attemptCount);
typedef OnConnectionFailureCallback = Future<void> Function(
    String errorMessage);

class FaceRecognitionConfig {
  final String websocketUrl;
  final String attendanceType;
  final String module;
  final Map<String, dynamic> contextData;
  final int maxRetries;
  final Duration timeout;
  final Duration qualityCheckDelay;
  final Duration successDisplayDuration;
  final Duration retryDelay;
  final double minFaceSize;
  final double excellentQualityThreshold;
  final double goodQualityThreshold;

  // Mode configuration
  final FaceRecognitionMode mode;
  final Duration timerAutoCaptureDelay;

  final OnSuccessCallback? onSuccess;
  final OnFailureCallback? onFailure;
  final OnConnectionFailureCallback? onConnectionFailure;

  const FaceRecognitionConfig({
    required this.websocketUrl,
    required this.attendanceType,
    required this.module,
    required this.contextData,
    this.maxRetries = 3,
    this.timeout = const Duration(seconds: 300),
    this.qualityCheckDelay = const Duration(milliseconds: 500),
    this.successDisplayDuration = const Duration(seconds: 2),
    this.retryDelay = const Duration(seconds: 3),
    this.minFaceSize = 0.15,
    this.excellentQualityThreshold = 0.1,
    this.goodQualityThreshold = 0.05,
    this.mode = FaceRecognitionMode.current,
    this.timerAutoCaptureDelay = const Duration(milliseconds: 500),
    this.onSuccess,
    this.onFailure,
    this.onConnectionFailure,
  });

  static FaceRecognitionConfig dutySchedule({
    required String attendanceId,
    String action = 'clock_in',
    Duration? successDisplayDuration,
    FaceRecognitionMode? mode,
    Duration? timerAutoCaptureDelay,
    OnSuccessCallback? onSuccess,
    OnFailureCallback? onFailure,
    OnConnectionFailureCallback? onConnectionFailure,
  }) {
    return FaceRecognitionConfig(
      websocketUrl: BaseUrl.wsDuty,
      attendanceType: 'duty_schedule',
      module: 'duty',
      contextData: {
        'attendance_id': attendanceId,
        'action': action,
      },
      successDisplayDuration:
          successDisplayDuration ?? const Duration(seconds: 2),
      mode: mode ?? FaceRecognitionMode.current,
      timerAutoCaptureDelay:
          timerAutoCaptureDelay ?? const Duration(milliseconds: 500),
      onSuccess: onSuccess,
      onFailure: onFailure,
      onConnectionFailure: onConnectionFailure,
    );
  }

  static FaceRecognitionConfig courseSession({
    required String attendanceId,
    required String studentId,
    FaceRecognitionMode? mode,
    Duration? timerAutoCaptureDelay,
    OnSuccessCallback? onSuccess,
    OnFailureCallback? onFailure,
    OnConnectionFailureCallback? onConnectionFailure,
  }) {
    return FaceRecognitionConfig(
      websocketUrl: BaseUrl.wsCourse,
      attendanceType: 'course_session',
      module: 'course_session',
      contextData: {
        'attendance_id': attendanceId,
        'student_id': studentId,
        'action': 'mark_attendance',
      },
      mode: mode ?? FaceRecognitionMode.current,
      timerAutoCaptureDelay:
          timerAutoCaptureDelay ?? const Duration(milliseconds: 500),
      onSuccess: onSuccess,
      onFailure: onFailure,
      onConnectionFailure: onConnectionFailure,
    );
  }

  static FaceRecognitionConfig guestVisit({
    FaceRecognitionMode? mode,
    Duration? timerAutoCaptureDelay,
    OnSuccessCallback? onSuccess,
    OnFailureCallback? onFailure,
    OnConnectionFailureCallback? onConnectionFailure,
  }) {
    return FaceRecognitionConfig(
      websocketUrl: BaseUrl.wsGuestVisit,
      attendanceType: 'guest_visit',
      module: 'guest_visit',
      contextData: {
        'action': 'verify_visitor',
      },
      mode: mode ?? FaceRecognitionMode.current,
      timerAutoCaptureDelay:
          timerAutoCaptureDelay ?? const Duration(milliseconds: 500),
      onSuccess: onSuccess,
      onFailure: onFailure,
      onConnectionFailure: onConnectionFailure,
    );
  }

 

  Map<String, dynamic> buildWebSocketMessage(
      String imageBase64, String requestId) {
    final baseMessage = {
      'type': 'face_recognition',
      'image': imageBase64,
      'request_id': requestId,
    };

    switch (module) {
      case 'duty':
        final message = {
          ...baseMessage,
          'attendance_id': contextData['attendance_id'],
          'action': contextData['action'],
        };
        return message;
      case 'course_session':
        return {
          ...baseMessage,
          'attendance_id': contextData['attendance_id'],
          'student_id': contextData['student_id'],
          'action': contextData['action'],
        };
      case 'guest_visit':
        return {
          ...baseMessage,
          'action': contextData['action'],
        };
      
      default:
        return baseMessage;
    }
  }

  Map<String, dynamic> buildContext() {
    return {
      'module': module,
      ...contextData,
    };
  }
}
