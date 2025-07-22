import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailCourseController
    extends BaseDetailController<CourseEntity, String> {
  final FetchCourseDetailUsecase _fetchCourseDetailUsecase;

  DetailCourseController(
    this._fetchCourseDetailUsecase,
  );

  @override
  String get baseStateKey => 'CourseDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> executeUsecase(
    String courseId,
  ) async {
    return await _fetchCourseDetailUsecase.execute(courseId: courseId);
  }
}
