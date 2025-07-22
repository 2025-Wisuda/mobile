import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchCourseDetailUsecase {
  final CourseRepository courseRepository;

  FetchCourseDetailUsecase(this.courseRepository);

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> execute({
    required String courseId,
  }) {
    return courseRepository.fetchCourseDetail(courseId: courseId);
  }
}
