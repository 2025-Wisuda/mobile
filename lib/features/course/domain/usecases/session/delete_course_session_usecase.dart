import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  DeleteCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, void>> execute({
    required String courseId,
    required String courseSessionId,
  }) {
    return courseSessionRepository.deleteCourseSession(
      courseId: courseId,
      courseSessionId: courseSessionId,
    );
  }
}
