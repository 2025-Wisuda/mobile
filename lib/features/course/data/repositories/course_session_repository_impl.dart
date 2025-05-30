// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/data.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class CourseSessionRepositoryImpl implements CourseSessionRepository {
  final CourseSessionRemoteDataSource courseSessionRemoteDataSource;

  CourseSessionRepositoryImpl(this.courseSessionRemoteDataSource);

  @override
  Future<Either<Failure, ListCourseSessionEntity>> fetchListCourseSession({
    CourseSessionFilterParamsModel? params,
  }) async {
    final response = await courseSessionRemoteDataSource.fetchListCourseSession(
      params: params,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseSessionEntity>> fetchCourseSessionDetail({
    required String courseSessionId,
  }) async {
    final response = await courseSessionRemoteDataSource
        .fetchCourseSessionDetail(courseSessionId: courseSessionId);
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseSessionEntity>> createCourseSession({
    required SaveCourseSessionRequestEntity data,
  }) async {
    final response = await courseSessionRemoteDataSource.createCourseSession(
      data: data.toModel(),
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseSessionEntity>> updateCourseSession({
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  }) async {
    final response = await courseSessionRemoteDataSource.updateCourseSession(
      data: data.toModel(),
      courseSessionId: courseSessionId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseSessionEntity>> partialUpdateCourseSession({
    required Map<String, dynamic> data,
    required String courseSessionId,
  }) async {
    final response = await courseSessionRemoteDataSource
        .partialUpdateCourseSession(
          data: data,
          courseSessionId: courseSessionId,
        );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> deleteCourseSession({
    required String courseSessionId,
  }) async {
    final response = await courseSessionRemoteDataSource.deleteCourseSession(
      courseSessionId: courseSessionId,
    );
    return response.fold((failure) => left(failure), (_) => right(null));
  }
}
