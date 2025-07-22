import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';
import 'course_session_api_client.dart';

part 'course_session_remote_datasource_impl.dart';

abstract class CourseSessionRemoteDataSource {
  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      fetchCourseSessionDetail({
    required String courseId,
    required String courseSessionId,
  });

  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      createCourseSession({
    required String courseId,
    required SaveCourseSessionRequestModel data,
  });

  Future<Either<Failure, BaseResponseModel<CourseSessionModel>>>
      partialUpdateCourseSession({
    required String courseId,
    required SaveCourseSessionRequestModel data,
    required String courseSessionId,
  });

  Future<Either<Failure, void>> deleteCourseSession({
    required String courseId,
    required String courseSessionId,
  });
}
