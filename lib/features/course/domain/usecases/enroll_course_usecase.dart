// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class EnrollCourseUsecase {
  final CourseRepository courseRepository;

  EnrollCourseUsecase(this.courseRepository);

  Future<Either<Failure, void>> execute({
    required EnrollCourseEntity data,
    required String courseId,
  }) {
    return courseRepository.enrollCourse(data: data, courseId: courseId);
  }
}
