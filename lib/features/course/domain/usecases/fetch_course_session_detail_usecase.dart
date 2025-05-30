// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class FetchCourseSessionDetailUsecase {
  final CourseSessionRepository courseSessionRepository;

  FetchCourseSessionDetailUsecase(this.courseSessionRepository);

  Future<Either<Failure, CourseSessionEntity>> execute({
    required String courseSessionId,
  }) {
    return courseSessionRepository.fetchCourseSessionDetail(
      courseSessionId: courseSessionId,
    );
  }
}
