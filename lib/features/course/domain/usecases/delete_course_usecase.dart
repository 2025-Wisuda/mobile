// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class DeleteCourseUsecase {
  final CourseRepository courseRepository;

  DeleteCourseUsecase(this.courseRepository);

  Future<Either<Failure, void>> execute({required String courseId}) {
    return courseRepository.deleteCourse(courseId: courseId);
  }
}
