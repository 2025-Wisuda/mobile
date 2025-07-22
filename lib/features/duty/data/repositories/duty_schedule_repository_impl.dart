import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/data.dart';
import 'package:mobile/features/duty/domain/domain.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/network_helper.dart';
import 'package:mobile/shared/models/model.dart';

class DutyScheduleRepositoryImpl implements DutyScheduleRepository {
  final DutyScheduleRemoteDatasource _dutyScheduleRemoteDatasource;
  final DutyScheduleLocalDatasource _dutyScheduleLocalDatasource;

  DutyScheduleRepositoryImpl(
    this._dutyScheduleRemoteDatasource,
    this._dutyScheduleLocalDatasource,
  );

  final String noInternet = 'common'.message('noInternet');

  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
      _handleCacheFallback(Failure originalFailure) async {
    final localData =
        await _dutyScheduleLocalDatasource.getDutyScheduleForToday();
    return localData.fold((localFailure) => left(originalFailure), (
      cachedDutySchedule,
    ) {
      if (cachedDutySchedule != null) {
        return right(BaseListResponseEntity(data: cachedDutySchedule));
      } else {
        return left(originalFailure);
      }
    });
  }

  Future<void> _saveToCache(List<DutyScheduleModel> model) async {
    await _dutyScheduleLocalDatasource.saveDutyScheduleForToday(
      model.map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleListEntity>>>
      fetchListDutySchedule({DutyScheduleFilterParamsModel? params}) async {
    final response = await _dutyScheduleRemoteDatasource.fetchListDutySchedule(
      params: params,
    );
    return response.map(
      (model) => model.toEntity((dutySchedule) => dutySchedule.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
      fetchDutyScheduleForToday({DutyScheduleFilterParamsModel? params}) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response =
          await _dutyScheduleRemoteDatasource.fetchDutyScheduleForToday(
              params: params ?? DutyScheduleFilterParamsModel());
      return response.fold(
        (failure) async {
          return await _handleCacheFallback(failure);
        },
        (model) async {
          if (model.data != null) {
            await _saveToCache(model.data!);
          }
          return right(
            model.toEntity((dutySchedule) => dutySchedule.toEntity()),
          );
        },
      );
    } else {
      final localData =
          await _dutyScheduleLocalDatasource.getDutyScheduleForToday();
      return localData.fold(
        (failure) => left(NoConnectionFailure(noInternet)),
        (cachedDutySchedule) {
          if (cachedDutySchedule != null) {
            return right(BaseListResponseEntity(data: cachedDutySchedule));
          } else {
            return left(NoConnectionFailure(noInternet));
          }
        },
      );
    }
  }
}
