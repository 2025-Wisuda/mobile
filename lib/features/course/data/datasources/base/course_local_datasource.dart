import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/databases/course_database.dart';
import 'package:mobile/shared/errors/failure.dart';

part 'course_local_datasource_impl.dart';

abstract class CourseLocalDatasource {
  Future<Either<Failure, void>> saveCourseList(List<CourseEntity> courses);
  Future<Either<Failure, List<CourseEntity>>> getCourseList();
  Future<Either<Failure, void>> clearCourseData();
}
