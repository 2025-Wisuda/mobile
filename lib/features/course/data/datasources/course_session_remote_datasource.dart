// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:mobile/core/errors/texts/course_session_text.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class CourseSessionRemoteDataSource {
  Future<Either<Failure, ListCourseSessionModel>> fetchListCourseSession({
    CourseSessionFilterParamsModel? params,
  });

  Future<Either<Failure, CourseSessionModel>> fetchCourseSessionDetail({
    required String courseSessionId,
  });

  Future<Either<Failure, CourseSessionModel>> createCourseSession({
    required SaveCourseSessionRequestModel data,
  });

  Future<Either<Failure, CourseSessionModel>> updateCourseSession({
    required SaveCourseSessionRequestModel data,
    required String courseSessionId,
  });

  Future<Either<Failure, CourseSessionModel>> partialUpdateCourseSession({
    required Map<String, dynamic> data,
    required String courseSessionId,
  });

  Future<Either<Failure, void>> deleteCourseSession({
    required String courseSessionId,
  });
}

class CourseSessionRemoteDataSourceImpl
    implements CourseSessionRemoteDataSource {
  final Dio _dio;

  CourseSessionRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, ListCourseSessionModel>> fetchListCourseSession({
    CourseSessionFilterParamsModel? params,
  }) async {
    try {
      LoggerUtil.logInfo('Fetch all course sessions request');

      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final uri = Uri.parse(
        BaseUrlUtil.courseSessionUrl,
      ).replace(queryParameters: stringParams);
      LoggerUtil.logInfo('GET ${uri.toString()}');

      final response = await _dio.get(
        BaseUrlUtil.courseSessionUrl,
        queryParameters: stringParams,
      );

      LoggerUtil.logInfo(
        'Fetch list course sessions response: ${LoggerUtil.prettyJson(response.data)}',
      );

      if (response.statusCode == 200) {
        return right(ListCourseSessionModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryFetchListCourseSession(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch all course sessions error: ${e.toString()}');
      return left(
        ServerFailure(CourseSessionText.catchFetchListCourseSession(e)),
      );
    }
  }

  @override
  Future<Either<Failure, CourseSessionModel>> fetchCourseSessionDetail({
    required String courseSessionId,
  }) async {
    try {
      LoggerUtil.logInfo(
        'Fetch course session detail request: $courseSessionId',
      );
      LoggerUtil.logInfo(
        'GET ${BaseUrlUtil.courseSessionUrl}/$courseSessionId',
      );
      final response = await _dio.get(
        '${BaseUrlUtil.courseSessionUrl}/$courseSessionId',
      );
      LoggerUtil.logInfo(
        'Fetch course session detail response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(CourseSessionModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryFetchCourseSessionDetail(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch course session detail error: ${e.toString()}');
      return left(
        ServerFailure(CourseSessionText.catchFetchCourseSessionDetail(e)),
      );
    }
  }

  @override
  Future<Either<Failure, CourseSessionModel>> createCourseSession({
    required SaveCourseSessionRequestModel data,
  }) async {
    try {
      LoggerUtil.logInfo(
        'Create course session request: ${LoggerUtil.prettyJson(data.toJson())}',
      );
      final response = await _dio.post(
        BaseUrlUtil.courseSessionUrl,
        data: data.toJson(),
      );
      LoggerUtil.logInfo(
        'Create course session response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 201) {
        return right(CourseSessionModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryCreateCourseSession(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Create course session error: ${e.toString()}');
      return left(ServerFailure(CourseSessionText.catchCreateCourseSession(e)));
    }
  }

  @override
  Future<Either<Failure, CourseSessionModel>> updateCourseSession({
    required SaveCourseSessionRequestModel data,
    required String courseSessionId,
  }) async {
    try {
      LoggerUtil.logInfo(
        'Update course session request: ${LoggerUtil.prettyJson(data.toJson())}',
      );
      final response = await _dio.put(
        '${BaseUrlUtil.courseSessionUrl}/$courseSessionId',
        data: data.toJson(),
      );
      LoggerUtil.logInfo(
        'Update course session response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(CourseSessionModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryUpdateCourseSession(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Update course session error: ${e.toString()}');
      return left(ServerFailure(CourseSessionText.catchUpdateCourseSession(e)));
    }
  }

  @override
  Future<Either<Failure, CourseSessionModel>> partialUpdateCourseSession({
    required Map<String, dynamic> data,
    required String courseSessionId,
  }) async {
    try {
      LoggerUtil.logInfo(
        'Partial update course session request: ${LoggerUtil.prettyJson(data)}',
      );
      final response = await _dio.patch(
        '${BaseUrlUtil.courseSessionUrl}/$courseSessionId',
        data: data,
      );
      LoggerUtil.logInfo(
        'Partial update course session response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(CourseSessionModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryUpdateCourseSession(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError(
        'Partial update course session error: ${e.toString()}',
      );
      return left(ServerFailure(CourseSessionText.catchUpdateCourseSession(e)));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCourseSession({
    required String courseSessionId,
  }) async {
    try {
      LoggerUtil.logInfo('Delete course session request: $courseSessionId');
      final response = await _dio.delete(
        '${BaseUrlUtil.courseSessionUrl}/$courseSessionId',
      );
      LoggerUtil.logInfo(
        'Delete course session response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 204) {
        return right(null);
      } else {
        return left(
          ServerFailure(
            CourseSessionText.tryDeleteCourseSession(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Delete course session error: ${e.toString()}');
      return left(ServerFailure(CourseSessionText.catchDeleteCourseSession(e)));
    }
  }
}
