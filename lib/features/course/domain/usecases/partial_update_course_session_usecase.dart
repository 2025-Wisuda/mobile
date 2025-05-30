// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class PartialUpdateCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  PartialUpdateCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, CourseSessionEntity>> execute({
    required Map<String, dynamic> data,
    required String courseSessionId,
  }) {
    return courseSessionRepository.partialUpdateCourseSession(
      data: data,
      courseSessionId: courseSessionId,
    );
  }
}
