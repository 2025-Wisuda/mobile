import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/face_recognition/data/datasources/datasource.dart';
import 'package:mobile/features/face_recognition/data/models/model.dart';
import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'package:mobile/features/face_recognition/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class FaceRecognitionRepositoryImpl implements FaceRecognitionRepository {
  final FaceRecognitionWebSocketDataSource _webSocketDataSource;

  const FaceRecognitionRepositoryImpl(this._webSocketDataSource);

  @override
  Future<Either<Failure, FaceRecognitionResponseEntity>> recognizeFace(
    FaceRecognitionRequestEntity request,
  ) async {
    final requestModel = FaceRecognitionRequestModel.fromEntity(request);
    final requestJson = requestModel.toJson();

    final response = await _webSocketDataSource.recognizeFace(requestJson);

    return response.map((jsonData) {
      final responseModel = FaceRecognitionResponseModel.fromJson(jsonData);
      return responseModel.toEntity();
    });
  }

  @override
  Future<Either<Failure, void>> connectWebSocket() async {
    return await _webSocketDataSource.connect();
  }

  @override
  Future<Either<Failure, void>> disconnectWebSocket() async {
    return await _webSocketDataSource.disconnect();
  }

  @override
  Stream<FaceRecognitionResponseEntity>? recognitionUpdatesStream() {
    return _webSocketDataSource.recognitionStream?.map((jsonData) {
      final responseModel = FaceRecognitionResponseModel.fromJson(jsonData);
      return responseModel.toEntity();
    });
  }

  @override
  bool get isConnected => _webSocketDataSource.isConnected;
}
