// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class UpdateCourseUsecase {
  final CourseRepository courseRepository;

  UpdateCourseUsecase(this.courseRepository);

  Future<Either<Failure, CourseEntity>> execute({
    required SaveCourseRequestEntity data,
    required String courseId,
  }) {
    return courseRepository.updateCourse(data: data, courseId: courseId);
  }
}
