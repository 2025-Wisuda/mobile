import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/datasources/datasource.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/models/model.dart';

class CourseSessionAttendanceRepositoryImpl
    implements CourseSessionAttendanceRepository {
  final CourseSessionAttendanceRemoteDataSource
      _courseSessionAttendanceRemoteDataSource;

  CourseSessionAttendanceRepositoryImpl(
      this._courseSessionAttendanceRemoteDataSource);

  @override
  Future<Either<Failure, BaseListResponseEntity<CourseSessionAttendanceEntity>>>
      fetchListCourseSessionAttendances({
    required String courseId,
    required String sessionId,
    CourseSessionAttendanceFilterParamsModel? params,
  }) async {
    final result = await _courseSessionAttendanceRemoteDataSource
        .fetchListCourseSessionAttendances(
            courseId: courseId, sessionId: sessionId, params: params);
    return result.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity(
          (courseSessionAttendance) => courseSessionAttendance.toEntity())),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      fetchCourseSessionAttendanceDetail({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) async {
    final result = await _courseSessionAttendanceRemoteDataSource
        .fetchCourseSessionAttendanceDetail(
            courseId: courseId,
            sessionId: sessionId,
            attendanceId: attendanceId);
    return result.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity(
          (courseSessionAttendance) => courseSessionAttendance.toEntity())),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionAttendanceEntity>>>
      fetchMyCourseSessionAttendance({
    required String courseId,
    required String sessionId,
  }) async {
    final result = await _courseSessionAttendanceRemoteDataSource
        .fetchMyCourseSessionAttendance(
            courseId: courseId, sessionId: sessionId);
    return result.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity((m) => m.toEntity())),
    );
  }

  @override
  Future<Either<Failure, CourseSessionAttendanceEntity>>
      manualOverrideAttendance({
    required String courseId,
    required String sessionId,
    required String attendanceId,
  }) async {
    final result =
        await _courseSessionAttendanceRemoteDataSource.manualOverrideAttendance(
            courseId: courseId,
            sessionId: sessionId,
            attendanceId: attendanceId);
    return result.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }
}
