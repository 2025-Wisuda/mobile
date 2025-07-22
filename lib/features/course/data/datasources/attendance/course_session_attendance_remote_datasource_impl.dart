import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/datasources/datasource.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/helpers/text_helper.dart';
import 'package:mobile/shared/models/model.dart';

class CourseSessionAttendanceRemoteDataSourceImpl
    implements CourseSessionAttendanceRemoteDataSource {
  final CourseSessionAttendanceApiClient _courseSessionAttendanceApiClient;

  CourseSessionAttendanceRemoteDataSourceImpl(
      this._courseSessionAttendanceApiClient);

  @override
  Future<Either<Failure, BaseListResponseModel<CourseSessionAttendanceModel>>>
      fetchListCourseSessionAttendances({
    required String courseId,
    required String sessionId,
    CourseSessionAttendanceFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _courseSessionAttendanceApiClient.fetchCourseSessionAttendances(
        courseId,
        sessionId,
        queryParams,
      );
      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure(TextHelper.error(e,
          feature: 'course', action: 'fetchCourseSessionAttendances')));
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseSessionAttendanceModel>>>
      fetchCourseSessionAttendanceDetail({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) async {
    try {
      final response = await _courseSessionAttendanceApiClient
          .fetchCourseSessionAttendanceDetail(
              courseId, sessionId, attendanceId);
      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure(TextHelper.error(e,
          feature: 'course', action: 'fetchCourseSessionAttendanceDetail')));
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseSessionAttendanceModel>>>
      fetchMyCourseSessionAttendance({
    required String courseId,
    required String sessionId,
  }) async {
    try {
      final response = await _courseSessionAttendanceApiClient
          .fetchMyCourseSessionAttendance(courseId, sessionId);
      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure(TextHelper.error(e,
          feature: 'course', action: 'fetchMyCourseSessionAttendanceSingle')));
    }
  }

  @override
  Future<Either<Failure, CourseSessionAttendanceModel>>
      manualOverrideAttendance({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) async {
    try {
      final response = await _courseSessionAttendanceApiClient
          .manualOverrideAttendance(courseId, sessionId, attendanceId);
      return right(response);
    } on DioException catch (e) {
      return left(ServerFailure(TextHelper.error(e,
          feature: 'course', action: 'manualOverrideAttendance')));
    }
  }
}
