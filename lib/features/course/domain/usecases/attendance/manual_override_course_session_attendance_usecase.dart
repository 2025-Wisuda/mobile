import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class ManualOverrideCourseSessionAttendanceUsecase {
  final CourseSessionAttendanceRepository _courseSessionAttendanceRepository;

  ManualOverrideCourseSessionAttendanceUsecase(
      this._courseSessionAttendanceRepository);

  Future<Either<Failure, CourseSessionAttendanceEntity>> execute({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) async {
    return _courseSessionAttendanceRepository.manualOverrideAttendance(
      courseId: courseId,
      sessionId: sessionId,
      attendanceId: attendanceId,
    );
  }
}
