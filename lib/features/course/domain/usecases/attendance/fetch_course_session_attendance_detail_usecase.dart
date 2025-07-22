import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchCourseSessionAttendanceDetailUsecase {
  final CourseSessionAttendanceRepository _courseSessionAttendanceRepository;

  FetchCourseSessionAttendanceDetailUsecase(
      this._courseSessionAttendanceRepository);

  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      execute({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) {
    return _courseSessionAttendanceRepository
        .fetchCourseSessionAttendanceDetail(
      courseId: courseId,
      sessionId: sessionId,
      attendanceId: attendanceId,
    );
  }
}
