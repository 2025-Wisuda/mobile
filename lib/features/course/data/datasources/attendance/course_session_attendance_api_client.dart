import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/models/base_list_response_model.dart';
import 'package:mobile/shared/models/base_response_model.dart';

part 'course_session_attendance_api_client.g.dart';

@RestApi()
abstract class CourseSessionAttendanceApiClient {
  factory CourseSessionAttendanceApiClient(
    Dio dio, {
    String? baseUrl,
  }) = _CourseSessionAttendanceApiClient;

  @GET("/courses/{courseId}/sessions/{sessionId}/attendances")
  Future<BaseListResponseModel<CourseSessionAttendanceModel>>
      fetchCourseSessionAttendances(
    @Path("courseId") String courseId,
    @Path("sessionId") String sessionId,
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/courses/{courseId}/sessions/{sessionId}/attendances/{id}")
  Future<BaseResponseModel<CourseSessionAttendanceModel>>
      fetchCourseSessionAttendanceDetail(
    @Path("courseId") String courseId,
    @Path("sessionId") String sessionId,
    @Path("id") String attendanceId,
  );

  @GET("/courses/{courseId}/sessions/{sessionId}/attendances/me")
  Future<BaseResponseModel<CourseSessionAttendanceModel>>
      fetchMyCourseSessionAttendance(
    @Path("courseId") String courseId,
    @Path("sessionId") String sessionId,
  );

  @PATCH(
      "/courses/{courseId}/sessions/{sessionId}/attendances/{id}/manual-override")
  Future<CourseSessionAttendanceModel> manualOverrideAttendance(
    @Path("courseId") String courseId,
    @Path("sessionId") String sessionId,
    @Path("id") String attendanceId,
  );
}
