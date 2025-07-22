import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class PartialUpdateCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  PartialUpdateCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>> execute({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  }) {
    return courseSessionRepository.partialUpdateCourseSession(
      courseId: courseId,
      data: data,
      courseSessionId: courseSessionId,
    );
  }
}
