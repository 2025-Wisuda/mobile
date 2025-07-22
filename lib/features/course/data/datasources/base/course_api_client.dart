import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'course_api_client.g.dart';

@RestApi()
abstract class CourseApiClient {
  factory CourseApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _CourseApiClient;

  @GET("/courses")
  Future<BaseListResponseModel<CourseModel>> fetchListCourse(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/courses/{id}")
  Future<BaseResponseModel<CourseModel>> fetchCourseDetail(
    @Path("id") String id,
  );

  @POST("/courses")
  @MultiPart()
  Future<BaseResponseModel<CourseModel>> createCourse(@Body() FormData data);

  @PATCH("/courses/{id}")
  @MultiPart()
  Future<BaseResponseModel<CourseModel>> updateCourse(
    @Path("id") String id,
    @Body() FormData data,
  );

  @DELETE("/courses/{id}")
  Future<void> deleteCourse(@Path("id") String id);

  @POST("/courses/{id}/enroll")
  Future<BaseResponseModel<CourseModel>> enrollCourse(
    @Path("id") String id,
    @Body() EnrollCourseModel data,
  );

  @GET("/courses/me")
  Future<BaseListResponseModel<CourseModel>> myCourse(
    @Queries() Map<String, dynamic> queries,
  );
}
