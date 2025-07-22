// import 'package:fpdart/fpdart.dart';
// import 'package:mobile/features/course/domain/entities/course_session_attendance_entity.dart';
// import 'package:mobile/features/course/domain/repositories/course_session_attendance_repository.dart';
// import 'package:mobile/shared/entities/entity.dart';
// import 'package:mobile/shared/errors/error.dart';

// class FetchCourseSessionAttendanceDetailUsecase {
//   final CourseSessionAttendanceRepository _repository;

//   FetchCourseSessionAttendanceDetailUsecase(this._repository);

//   Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
//       execute({
//     required String courseId,
//     required String sessionId,
//     required String attendanceId,
//   }) {
//     return _repository.fetchCourseSessionAttendanceDetail(
//       courseId: courseId,
//       sessionId: sessionId,
//       attendanceId: attendanceId,
//     );
//   }
// }
