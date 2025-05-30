// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/datasources/course_remote_datasource.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/data/models/course_model_extension.dart';
import 'package:mobile/features/course/data/models/list_course_model_extension.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource courseRemoteDataSource;

  CourseRepositoryImpl(this.courseRemoteDataSource);

  @override
  Future<Either<Failure, ListCourseEntity>> fetchListCourse({
    CourseFilterParamsModel? params,
  }) async {
    final response = await courseRemoteDataSource.fetchListCourse(
      params: params,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseEntity>> fetchCourseDetail({
    required String courseId,
  }) async {
    final response = await courseRemoteDataSource.fetchCourseDetail(
      courseId: courseId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseEntity>> createCourse({
    required SaveCourseRequestEntity data,
  }) async {
    final response = await courseRemoteDataSource.createCourse(
      data: data.toModel(),
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseEntity>> updateCourse({
    required SaveCourseRequestEntity data,
    required String courseId,
  }) async {
    final response = await courseRemoteDataSource.updateCourse(
      data: data.toModel(),
      courseId: courseId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, CourseEntity>> partialUpdateCourse({
    required Map<String, dynamic> data,
    required String courseId,
  }) async {
    final response = await courseRemoteDataSource.partialUpdateCourse(
      data: data,
      courseId: courseId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> deleteCourse({required String courseId}) async {
    final response = await courseRemoteDataSource.deleteCourse(
      courseId: courseId,
    );
    return response.fold((failure) => left(failure), (_) => right(null));
  }

  @override
  Future<Either<Failure, void>> enrollCourse({
    required EnrollCourseEntity data,
    required String courseId,
  }) async {
    final response = await courseRemoteDataSource.enrollCourse(
      data: data.toModel(),
      courseId: courseId,
    );
    return response.fold((failure) => left(failure), (_) => right(null));
  }
}
