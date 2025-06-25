import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class CreateCourseUsecase {
  final CourseRepository courseRepository;

  CreateCourseUsecase(this.courseRepository);

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> execute({
    required SaveCourseRequestEntity data,
  }) {
    return courseRepository.createCourse(data: data);
  }
}
