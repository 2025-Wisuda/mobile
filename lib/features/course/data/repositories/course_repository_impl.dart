import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/data/datasources/course_local_datasource.dart';
import 'package:mobile/features/course/data/datasources/course_remote_datasource.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/data/models/course_model_extension.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/network_helper.dart';
import 'package:mobile/shared/models/model.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource _courseRemoteDataSource;
  final CourseLocalDatasource _courseLocalDatasource;

  CourseRepositoryImpl(
    this._courseRemoteDataSource,
    this._courseLocalDatasource,
  );

  final String noInternet = 'common'.message('noInternet');

  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>>
      _handleMyCoursesCacheFallback(Failure originalFailure) async {
    final localData = await _courseLocalDatasource.getCourseList();
    return localData.fold((localFailure) => left(originalFailure), (
      cachedCourses,
    ) {
      if (cachedCourses.isNotEmpty) {
        return right(BaseListResponseEntity<CourseEntity>(data: cachedCourses));
      } else {
        return left(originalFailure);
      }
    });
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> fetchListCourse(
      {CourseFilterParamsModel? params}) async {
    final remoteResult = await _courseRemoteDataSource.fetchListCourse(
      params: params,
    );

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((course) => course.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> fetchCourseDetail({
    required String courseId,
  }) async {
    final remoteResult = await _courseRemoteDataSource.fetchCourseDetail(
      courseId: courseId,
    );

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((course) => course.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> createCourse({
    required SaveCourseRequestEntity data,
  }) async {
    final modelData = data.toModel();
    final response = await _courseRemoteDataSource.createCourse(
      data: modelData,
    );

    return response.fold(
      (failure) {
        return left(failure);
      },
      (model) {
        final entity = model.toEntity((course) => course.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, void>> deleteCourse({required String courseId}) async {
    final response = await _courseRemoteDataSource.deleteCourse(
      courseId: courseId,
    );

    return response.fold((failure) => left(failure), (model) => right(model));
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> enrollCourse({
    required EnrollCourseEntity data,
    required String courseId,
  }) async {
    final response = await _courseRemoteDataSource.enrollCourse(
      data: data.toModel(),
      courseId: courseId,
    );

    return response.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((course) => course.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>>
      partialUpdateCourse({
    required SaveCourseRequestEntity data,
    required String courseId,
  }) async {
    final modelData = data.toModel();
    final response = await _courseRemoteDataSource.partialUpdateCourse(
      courseId: courseId,
      data: modelData,
    );

    return response.fold(
      (failure) {
        return left(failure);
      },
      (model) {
        final entity = model.toEntity((course) => course.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> myCourse({
    CourseFilterParamsModel? params,
  }) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();
    if (hasConnection) {
      final remoteResult = await _courseRemoteDataSource.myCourse(
        params: params,
      );
      return remoteResult.fold(
        (failure) async {
          return await _handleMyCoursesCacheFallback(failure);
        },
        (model) async {
          final entity = model.toEntity((course) => course.toEntity());
          if (entity.data != null) {
            await _courseLocalDatasource.saveCourseList(entity.data!);
          }
          return right(entity);
        },
      );
    } else {
      final localData = await _courseLocalDatasource.getCourseList();
      return localData.fold(
        (failure) => left(NoConnectionFailure(noInternet)),
        (cachedCourses) {
          if (cachedCourses.isNotEmpty) {
            return right(
              BaseListResponseEntity<CourseEntity>(data: cachedCourses),
            );
          } else {
            return left(NoConnectionFailure(noInternet));
          }
        },
      );
    }
  }
}
