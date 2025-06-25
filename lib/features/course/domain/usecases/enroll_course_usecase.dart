import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class EnrollCourseUsecase {
  final CourseRepository courseRepository;

  EnrollCourseUsecase(this.courseRepository);

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> execute({
    required EnrollCourseEntity data,
    required String courseId,
  }) {
    return courseRepository.enrollCourse(data: data, courseId: courseId);
  }
}
