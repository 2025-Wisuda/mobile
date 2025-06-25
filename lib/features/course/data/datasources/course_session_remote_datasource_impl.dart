part of 'course_session_remote_datasource.dart';

class CourseSessionRemoteDataSourceImpl
    implements CourseSessionRemoteDataSource {
  final CourseSessionApiClient _courseSessionApiClient;
  final Connectivity connectivity;
  final Dio dio;

  CourseSessionRemoteDataSourceImpl(
      this._courseSessionApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      fetchCourseSessionDetail({
    required String courseId,
    required String courseSessionId,
  }) async {
    try {
      final response = await _courseSessionApiClient.fetchCourseSessionDetail(
        courseId,
        courseSessionId,
      );
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'course',
            action: 'fetchCourseSessionDetail',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      createCourseSession({
    required String courseId,
    required SaveCourseSessionRequestModel data,
  }) async {
    try {
      final response =
          await _courseSessionApiClient.createCourseSession(courseId, data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'createCourseSession'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      partialUpdateCourseSession({
    required String courseId,
    required SaveCourseSessionRequestModel data,
    required String courseSessionId,
  }) async {
    try {
      final response = await _courseSessionApiClient.updateCourseSession(
        courseId,
        courseSessionId,
        data,
      );
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'updateCourseSession'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteCourseSession({
    required String courseId,
    required String courseSessionId,
  }) async {
    try {
      await _courseSessionApiClient.deleteCourseSession(
          courseId, courseSessionId);
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'deleteCourseSession'),
        ),
      );
    }
  }
}
