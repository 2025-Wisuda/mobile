import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/face_recognition/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class DisconnectWebSocketUseCase {
  final FaceRecognitionRepository _repository;

  DisconnectWebSocketUseCase(this._repository);

  Future<Either<Failure, void>> execute() {
    return _repository.disconnectWebSocket();
  }
}
