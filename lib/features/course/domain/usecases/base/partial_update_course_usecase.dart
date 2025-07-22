import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class PartialUpdateCourseUsecase {
  final CourseRepository courseRepository;

  PartialUpdateCourseUsecase(this.courseRepository);

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> execute({
    required SaveCourseRequestEntity data,
    required String courseId,
  }) {
    return courseRepository.partialUpdateCourse(data: data, courseId: courseId);
  }
}
