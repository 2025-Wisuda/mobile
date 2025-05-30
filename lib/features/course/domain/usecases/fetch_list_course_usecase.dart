// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class FetchListCourseUsecase {
  final CourseRepository courseRepository;

  FetchListCourseUsecase(this.courseRepository);

  Future<Either<Failure, ListCourseEntity>> execute({
    CourseFilterParamsModel? params,
  }) {
    return courseRepository.fetchListCourse(params: params);
  }
}
