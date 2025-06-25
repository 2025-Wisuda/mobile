import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/data/datasources/datasource.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/network_helper.dart';
import 'package:mobile/shared/models/model.dart';

class LabScheduleRepositoryImpl implements LabScheduleRepository {
  final LabScheduleRemoteDataSource _labScheduleRemoteDataSource;
  final LabScheduleLocalDatasource _labScheduleLocalDataSource;
  final String noInternet = 'common'.message('noInternet');

  LabScheduleRepositoryImpl(
    this._labScheduleRemoteDataSource,
    this._labScheduleLocalDataSource,
  );

  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      _handleListCacheFallback(Failure originalFailure) async {
    final localData = await _labScheduleLocalDataSource.getLabScheduleList();
    return localData.fold((localFailure) => left(originalFailure), (
      cachedSchedules,
    ) {
      if (cachedSchedules.isNotEmpty) {
        return right(
          BaseListResponseEntity<LabScheduleEntity>(data: cachedSchedules),
        );
      } else {
        return left(originalFailure);
      }
    });
  }

  Future<void> _saveListToCache(List<LabScheduleEntity> schedules) async {
    await _labScheduleLocalDataSource.saveLabScheduleList(schedules);
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      fetchListLabSchedule({LabScheduleFilterParamsModel? params}) async {
    final response = await _labScheduleRemoteDataSource.fetchListLabSchedule(
      params: params,
    );
    return response.map(
      (model) => model.toEntity((schedule) => schedule.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<LabScheduleEntity>>>
      fetchLabScheduleDetail(String labScheduleId) async {
    final response = await _labScheduleRemoteDataSource.fetchLabScheduleDetail(
      labScheduleId,
    );
    return response.map(
      (model) => model.toEntity((schedule) => schedule.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<LabAvailabilityEntity>>>
      fetchLabAvailability(String date) async {
    final response = await _labScheduleRemoteDataSource.fetchLabAvailability(
      date,
    );
    return response.map(
      (model) => model.toEntity((availability) => availability.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      fetchMyLabSchedule({LabScheduleFilterParamsModel? params}) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response = await _labScheduleRemoteDataSource.fetchMyLabSchedule(
        params: params,
      );
      return response.fold(
        (failure) async {
          return await _handleListCacheFallback(failure);
        },
        (model) async {
          final entity = model.toEntity((schedule) => schedule.toEntity());
          if (entity.data != null) {
            await _saveListToCache(entity.data!);
          }
          return right(entity);
        },
      );
    } else {
      final localData = await _labScheduleLocalDataSource.getLabScheduleList();
      return localData.fold(
        (failure) => left(NoConnectionFailure(noInternet)),
        (cachedSchedules) {
          if (cachedSchedules.isNotEmpty) {
            return right(
              BaseListResponseEntity<LabScheduleEntity>(data: cachedSchedules),
            );
          } else {
            return left(NoConnectionFailure(noInternet));
          }
        },
      );
    }
  }
}
