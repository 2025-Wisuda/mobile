import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/models/model.dart';

abstract class CourseSessionAttendanceRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<CourseSessionAttendanceModel>>>
      fetchListCourseSessionAttendances({
    required String courseId,
    required String sessionId,
    CourseSessionAttendanceFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<CourseSessionAttendanceModel>>>
      fetchMyCourseSessionAttendance({
    required String courseId,
    required String sessionId,
  });

  Future<Either<Failure, BaseResponseModel<CourseSessionAttendanceModel>>>
      fetchCourseSessionAttendanceDetail({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  });

  Future<Either<Failure, CourseSessionAttendanceModel>>
      manualOverrideAttendance({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  });
}
