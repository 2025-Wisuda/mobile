import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class FaceRecognitionRepository {
  Future<Either<Failure, FaceRecognitionResponseEntity>> recognizeFace(
    FaceRecognitionRequestEntity request,
  );

  Future<Either<Failure, void>> connectWebSocket();

  Future<Either<Failure, void>> disconnectWebSocket();

  bool get isConnected;

  Stream<FaceRecognitionResponseEntity>? recognitionUpdatesStream();
}
