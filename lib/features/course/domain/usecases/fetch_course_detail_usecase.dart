// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class FetchCourseDetailUsecase {
  final CourseRepository courseRepository;

  FetchCourseDetailUsecase(this.courseRepository);

  Future<Either<Failure, CourseEntity>> execute({required String courseId}) {
    return courseRepository.fetchCourseDetail(courseId: courseId);
  }
}
