import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListCourseUsecase {
  final CourseRepository courseRepository;

  FetchListCourseUsecase(this.courseRepository);

  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> execute({
    CourseFilterParamsModel? params,
  }) {
    return courseRepository.fetchListCourse(params: params);
  }
}
