import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class CourseSessionAttendanceRepository {
  Future<Either<Failure, BaseListResponseEntity<CourseSessionAttendanceEntity>>>
      fetchListCourseSessionAttendances({
    required String courseId,
    required String sessionId,
    CourseSessionAttendanceFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      fetchCourseSessionAttendanceDetail({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  });

  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      fetchMyCourseSessionAttendance({
    required String courseId,
    required String sessionId,
  });

  Future<Either<Failure, CourseSessionAttendanceEntity>>
      manualOverrideAttendance({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  });
}
