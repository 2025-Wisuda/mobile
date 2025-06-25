import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchCourseSessionDetailUsecase {
  final CourseSessionRepository courseSessionRepository;

  FetchCourseSessionDetailUsecase(this.courseSessionRepository);

  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>> execute({
    required String courseId,
    required String courseSessionId,
  }) {
    return courseSessionRepository.fetchCourseSessionDetail(
      courseId: courseId,
      courseSessionId: courseSessionId,
    );
  }
}
