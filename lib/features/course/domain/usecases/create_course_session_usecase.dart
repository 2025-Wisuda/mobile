import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class CreateCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  CreateCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>> execute({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
  }) {
    return courseSessionRepository.createCourseSession(
      courseId: courseId,
      data: data,
    );
  }
}
