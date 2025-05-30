// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class PartialUpdateCourseUsecase {
  final CourseRepository courseRepository;

  PartialUpdateCourseUsecase(this.courseRepository);

  Future<Either<Failure, CourseEntity>> execute({
    required Map<String, dynamic> data,
    required String courseId,
  }) {
    return courseRepository.partialUpdateCourse(data: data, courseId: courseId);
  }
}
