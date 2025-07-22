import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/attendance/fetch_course_session_attendance_detail_usecase.dart';
import 'package:mobile/shared/controllers/get_base_detail_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailCourseSessionAttendanceController extends GetBaseDetailController<
    CourseSessionAttendanceEntity, Map<String, String>> {
  final FetchCourseSessionAttendanceDetailUsecase
      _fetchCourseSessionAttendanceDetailUsecase;

  DetailCourseSessionAttendanceController(
    this._fetchCourseSessionAttendanceDetailUsecase,
  );

  @override
  String get baseStateKey => 'courseSessionAttendanceDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      executeUsecase(Map<String, String> params) async {
    return await _fetchCourseSessionAttendanceDetailUsecase.execute(
      courseId: params['courseId']!,
      sessionId: params['sessionId']!,
      attendanceId: params['attendanceId']!,
    );
  }
}
