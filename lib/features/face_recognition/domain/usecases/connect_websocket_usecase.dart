import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/face_recognition/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class ConnectWebSocketUseCase {
  final FaceRecognitionRepository _repository;

  ConnectWebSocketUseCase(this._repository);

  Future<Either<Failure, void>> execute() {
    return _repository.connectWebSocket();
  }
}
