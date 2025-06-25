part of 'course_local_datasource.dart';

class CourseLocalDatasourceImpl implements CourseLocalDatasource {
  final CourseDatabase _courseDatabase;

  CourseLocalDatasourceImpl(this._courseDatabase);

  @override
  Future<Either<Failure, void>> saveCourseList(
    List<CourseEntity> courses,
  ) async {
    try {
      await _courseDatabase.saveCourseList(courses);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CourseEntity>>> getCourseList() async {
    try {
      final courses = await _courseDatabase.getCourseList();
      return Right(courses);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearCourseData() async {
    try {
      await _courseDatabase.clearCourseData();
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }
}
