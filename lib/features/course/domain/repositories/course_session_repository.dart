// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/course_session_filter_params_model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';

abstract class CourseSessionRepository {
  Future<Either<Failure, ListCourseSessionEntity>> fetchListCourseSession({
    CourseSessionFilterParamsModel? params,
  });

  Future<Either<Failure, CourseSessionEntity>> fetchCourseSessionDetail({
    required String courseSessionId,
  });

  Future<Either<Failure, CourseSessionEntity>> createCourseSession({
    required SaveCourseSessionRequestEntity data,
  });

  Future<Either<Failure, CourseSessionEntity>> updateCourseSession({
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  });

  Future<Either<Failure, CourseSessionEntity>> partialUpdateCourseSession({
    required Map<String, dynamic> data,
    required String courseSessionId,
  });

  Future<Either<Failure, void>> deleteCourseSession({
    required String courseSessionId,
  });
}
