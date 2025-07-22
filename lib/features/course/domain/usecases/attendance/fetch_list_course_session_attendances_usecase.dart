import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListCourseSessionAttendancesUsecase {
  final CourseSessionAttendanceRepository _courseSessionAttendanceRepository;

  FetchListCourseSessionAttendancesUsecase(
      this._courseSessionAttendanceRepository);

  Future<Either<Failure, BaseListResponseEntity<CourseSessionAttendanceEntity>>>
      execute({
    required String courseId,
    required String sessionId,
    CourseSessionAttendanceFilterParamsModel? params,
  }) {
    return _courseSessionAttendanceRepository.fetchListCourseSessionAttendances(
      courseId: courseId,
      sessionId: sessionId,
      params: params,
    );
  }
}
