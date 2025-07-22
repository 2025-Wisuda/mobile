import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteCourseUsecase {
  final CourseRepository courseRepository;

  DeleteCourseUsecase(this.courseRepository);

  Future<Either<Failure, void>> execute({required String courseId}) {
    return courseRepository.deleteCourse(courseId: courseId);
  }
}
