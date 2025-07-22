import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchMyCourseSessionAttendanceUsecase {
  final CourseSessionAttendanceRepository _courseSessionAttendanceRepository;

  FetchMyCourseSessionAttendanceUsecase(
      this._courseSessionAttendanceRepository);

  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      execute({
    required String courseId,
    required String sessionId,
  }) {
    return _courseSessionAttendanceRepository.fetchMyCourseSessionAttendance(
      courseId: courseId,
      sessionId: sessionId,
    );
  }
}
