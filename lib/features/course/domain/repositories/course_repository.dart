import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class CourseRepository {
  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> fetchListCourse(
      {CourseFilterParamsModel? params});

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> fetchCourseDetail({
    required String courseId,
  });

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> createCourse({
    required SaveCourseRequestEntity data,
  });

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>>
      partialUpdateCourse({
    required SaveCourseRequestEntity data,
    required String courseId,
  });

  Future<Either<Failure, void>> deleteCourse({required String courseId});

  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> enrollCourse({
    required EnrollCourseEntity data,
    required String courseId,
  });

  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> myCourse({
    CourseFilterParamsModel? params,
  });
}
