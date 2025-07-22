import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'package:mobile/features/face_recognition/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class RecognizeFaceUseCase {
  final FaceRecognitionRepository _repository;

  RecognizeFaceUseCase(this._repository);

  Future<Either<Failure, FaceRecognitionResponseEntity>> execute(
    FaceRecognitionRequestEntity request,
  ) {
    return _repository.recognizeFace(request);
  }
}
