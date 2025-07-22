import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_detail_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class MyCourseSessionAttendanceController extends GetBaseDetailController<
    CourseSessionAttendanceEntity, Map<String, String>> {
  final FetchMyCourseSessionAttendanceUsecase
      _fetchMyCourseSessionAttendanceUsecase;

  MyCourseSessionAttendanceController(
      this._fetchMyCourseSessionAttendanceUsecase);

  @override
  String get baseStateKey => 'myCourseSessionAttendance';

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      executeUsecase(Map<String, String> params) async {
    return await _fetchMyCourseSessionAttendanceUsecase.execute(
      courseId: params['courseId']!,
      sessionId: params['sessionId']!,
    );
  }
}
