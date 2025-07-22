import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'course_session_api_client.g.dart';

@RestApi()
abstract class CourseSessionApiClient {
  factory CourseSessionApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _CourseSessionApiClient;

  @POST("/courses/{course_pk}/sessions")
  Future<BaseResponseModel<CourseSessionModel>> createCourseSession(
    @Path("course_pk") String courseId,
    @Body() SaveCourseSessionRequestModel data,
  );

  @GET("/courses/{course_pk}/sessions/{id}")
  Future<BaseResponseModel<CourseSessionModel>> fetchCourseSessionDetail(
    @Path("course_pk") String courseId,
    @Path("id") String courseSessionId,
  );

  @PATCH("/courses/{course_pk}/sessions/{id}")
  Future<BaseResponseModel<CourseSessionModel>> updateCourseSession(
    @Path("course_pk") String courseId,
    @Path("id") String courseSessionId,
    @Body() SaveCourseSessionRequestModel data,
  );

  @DELETE("/courses/{course_pk}/sessions/{id}")
  Future<void> deleteCourseSession(
    @Path("course_pk") String courseId,
    @Path("id") String courseSessionId,
  );
}
