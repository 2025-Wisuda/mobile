// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class CreateCourseUsecase {
  final CourseRepository courseRepository;

  CreateCourseUsecase(this.courseRepository);

  Future<Either<Failure, CourseEntity>> execute({
    required SaveCourseRequestEntity data,
  }) {
    return courseRepository.createCourse(data: data);
  }
}
