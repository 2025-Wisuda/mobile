// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';

abstract class CourseRepository {
  Future<Either<Failure, ListCourseEntity>> fetchListCourse({
    CourseFilterParamsModel? params,
  });

  Future<Either<Failure, CourseEntity>> fetchCourseDetail({
    required String courseId,
  });

  Future<Either<Failure, CourseEntity>> createCourse({
    required SaveCourseRequestEntity data,
  });

  Future<Either<Failure, CourseEntity>> updateCourse({
    required SaveCourseRequestEntity data,
    required String courseId,
  });

  Future<Either<Failure, CourseEntity>> partialUpdateCourse({
    required Map<String, dynamic> data,
    required String courseId,
  });

  Future<Either<Failure, void>> deleteCourse({required String courseId});

  Future<Either<Failure, void>> enrollCourse({
    required EnrollCourseEntity data,
    required String courseId,
  });
}
