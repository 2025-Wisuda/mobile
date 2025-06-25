import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/datasources/course_session_remote_datasource.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/models/model.dart';

class CourseSessionRepositoryImpl implements CourseSessionRepository {
  final CourseSessionRemoteDataSource _courseSessionRemoteDataSource;

  CourseSessionRepositoryImpl(this._courseSessionRemoteDataSource);

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      fetchCourseSessionDetail({
    required String courseId,
    required String courseSessionId,
  }) async {
    final result =
        await _courseSessionRemoteDataSource.fetchCourseSessionDetail(
      courseId: courseId,
      courseSessionId: courseSessionId,
    );

    return result.fold(
      (failure) => left(failure),
      (model) =>
          right(model.toEntity((courseSession) => courseSession.toEntity())),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      createCourseSession({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
  }) async {
    final result = await _courseSessionRemoteDataSource.createCourseSession(
      courseId: courseId,
      data: data.toModel(),
    );

    return result.fold(
      (failure) => left(failure),
      (model) =>
          right(model.toEntity((courseSession) => courseSession.toEntity())),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      partialUpdateCourseSession({
    required String courseId,
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  }) async {
    final result =
        await _courseSessionRemoteDataSource.partialUpdateCourseSession(
      courseId: courseId,
      data: data.toModel(),
      courseSessionId: courseSessionId,
    );

    return result.fold(
      (failure) => left(failure),
      (model) =>
          right(model.toEntity((courseSession) => courseSession.toEntity())),
    );
  }

  @override
  Future<Either<Failure, void>> deleteCourseSession({
    required String courseId,
    required String courseSessionId,
  }) async {
    try {
      await _courseSessionRemoteDataSource.deleteCourseSession(
        courseId: courseId,
        courseSessionId: courseSessionId,
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure('Failed to delete course session'));
    }
  }
}
