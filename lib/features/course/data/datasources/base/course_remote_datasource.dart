import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';
import 'course_api_client.dart';

part 'course_remote_datasource_impl.dart';

abstract class CourseRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<CourseModel>>> fetchListCourse({
    CourseFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<CourseModel>>> fetchCourseDetail({
    required String courseId,
  });

  Future<Either<Failure, BaseResponseModel<CourseModel>>> createCourse({
    required SaveCourseRequestModel data,
  });

  Future<Either<Failure, BaseResponseModel<CourseModel>>> partialUpdateCourse({
    required SaveCourseRequestModel data,
    required String courseId,
  });

  Future<Either<Failure, void>> deleteCourse({required String courseId});

  Future<Either<Failure, BaseResponseModel<CourseModel>>> enrollCourse({
    required EnrollCourseModel data,
    required String courseId,
  });

  Future<Either<Failure, BaseListResponseModel<CourseModel>>> myCourse({
    CourseFilterParamsModel? params,
  });
}
