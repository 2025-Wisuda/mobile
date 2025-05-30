// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class UpdateCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  UpdateCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, CourseSessionEntity>> execute({
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  }) {
    return courseSessionRepository.updateCourseSession(
      data: data,
      courseSessionId: courseSessionId,
    );
  }
}
