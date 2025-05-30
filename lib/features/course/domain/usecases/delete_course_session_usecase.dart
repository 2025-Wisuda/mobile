// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class DeleteCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  DeleteCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, void>> execute({required String courseSessionId}) {
    return courseSessionRepository.deleteCourseSession(
      courseSessionId: courseSessionId,
    );
  }
}
