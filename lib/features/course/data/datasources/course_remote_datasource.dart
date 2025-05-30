// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
// Project imports:
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class CourseRemoteDataSource {
  Future<Either<Failure, ListCourseModel>> fetchListCourse({
    CourseFilterParamsModel? params,
  });

  Future<Either<Failure, CourseModel>> fetchCourseDetail({
    required String courseId,
  });

  Future<Either<Failure, CourseModel>> createCourse({
    required SaveCourseRequestModel data,
  });

  Future<Either<Failure, CourseModel>> updateCourse({
    required SaveCourseRequestModel data,
    required String courseId,
  });

  Future<Either<Failure, CourseModel>> partialUpdateCourse({
    required Map<String, dynamic> data,
    required String courseId,
  });

  Future<Either<Failure, void>> deleteCourse({required String courseId});

  Future<Either<Failure, void>> enrollCourse({
    required EnrollCourseModel data,
    required String courseId,
  });
}

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  final Dio _dio;

  CourseRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, ListCourseModel>> fetchListCourse({
    CourseFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final stringParams = queryParams.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      final url = BaseUrlUtil.courseUrl;
      final response = await _dio.get(url, queryParameters: stringParams);
      if (response.statusCode == 200) {
        return right(ListCourseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(CourseText.tryFetchListCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(CourseText.catchFetchListCourse(e)));
    }
  }

  @override
  Future<Either<Failure, CourseModel>> fetchCourseDetail({
    required String courseId,
  }) async {
    try {
      final url = '${BaseUrlUtil.courseUrl}/$courseId';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return right(CourseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(CourseText.tryFetchCourseDetail(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(CourseText.catchFetchCourseDetail(e)));
    }
  }

  @override
  Future<Either<Failure, CourseModel>> createCourse({
    required SaveCourseRequestModel data,
  }) async {
    try {
      final formData = FormData.fromMap(data.toJson());
      if (data.image != null) {
        formData.files.add(
          MapEntry(
            'image',
            await MultipartFile.fromFile(
              data.image?.path ?? '',
              filename: data.image!.path.split('/').last,
            ),
          ),
        );
      }
      final url = BaseUrlUtil.courseUrl;
      final response = await _dio.post(url, data: formData);
      if (response.statusCode == 201) {
        return right(CourseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(CourseText.tryCreateCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(CourseText.catchCreateCourse(e)));
    }
  }

  @override
  Future<Either<Failure, CourseModel>> updateCourse({
    required SaveCourseRequestModel data,
    required String courseId,
  }) async {
    try {
      final formData = FormData.fromMap(data.toJson());
      if (data.image != null) {
        formData.files.add(
          MapEntry(
            'image',
            await MultipartFile.fromFile(
              data.image?.path ?? '',
              filename: data.image!.path.split('/').last,
            ),
          ),
        );
      }
      final url = '${BaseUrlUtil.courseUrl}/$courseId';
      final response = await _dio.put(url, data: formData);
      if (response.statusCode == 200) {
        return right(CourseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(CourseText.tryUpdateCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(CourseText.catchUpdateCourse(e)));
    }
  }

  @override
  Future<Either<Failure, CourseModel>> partialUpdateCourse({
    required Map<String, dynamic> data,
    required String courseId,
  }) async {
    try {
      LoggerUtil.logInfo(
        'Partial update course request: ${LoggerUtil.prettyJson(data)}',
      );
      LoggerUtil.logInfo('Data yang dikirim: ${LoggerUtil.prettyJson(data)}');
      final response = await _dio.patch(
        '${BaseUrlUtil.courseUrl}/$courseId',
        data: data,
      );
      LoggerUtil.logInfo(
        'Partial update course response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(CourseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(CourseText.tryUpdateCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Partial update course error: ${e.toString()}');
      return left(ServerFailure(CourseText.catchUpdateCourse(e)));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCourse({required String courseId}) async {
    try {
      LoggerUtil.logInfo('Delete course request: $courseId');
      final response = await _dio.delete('${BaseUrlUtil.courseUrl}/$courseId');
      LoggerUtil.logInfo(
        'Delete course response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 204) {
        return right(null);
      } else {
        return left(
          ServerFailure(CourseText.tryDeleteCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Delete course error: ${e.toString()}');
      return left(ServerFailure(CourseText.catchDeleteCourse(e)));
    }
  }

  @override
  Future<Either<Failure, void>> enrollCourse({
    required EnrollCourseModel data,
    required String courseId,
  }) async {
    try {
      final url = '${BaseUrlUtil.courseUrl}/$courseId/enroll';
      final response = await _dio.post(url, data: data);
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(
          ServerFailure(CourseText.tryEnrollCourse(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(CourseText.catchEnrollCourse(e)));
    }
  }
}
