import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailCourseSessionController
    extends BaseDetailController<CourseSessionEntity, List<String>> {
  final FetchCourseSessionDetailUsecase _fetchCourseSessionDetailUsecase;

  DetailCourseSessionController(
    this._fetchCourseSessionDetailUsecase,
  );

  @override
  String get baseStateKey => 'CourseDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      executeUsecase(
    List<String> params,
  ) async {
    final courseId = params[0];
    final courseSessionId = params[1];
    return await _fetchCourseSessionDetailUsecase.execute(
        courseId: courseId, courseSessionId: courseSessionId);
  }
}
