import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/data/data.dart';
import 'package:mobile/features/duty_schedule/domain/domain.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/helpers/network_helper.dart';

class DutyScheduleRepositoryImpl implements DutyScheduleRepository {
  final DutyScheduleRemoteDatasource dutyScheduleRemoteDatasource;
  final DutyScheduleLocalDatasource dutyScheduleLocalDatasource;

  DutyScheduleRepositoryImpl(
    this.dutyScheduleRemoteDatasource,
    this.dutyScheduleLocalDatasource,
  );

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
  fetchListDutySchedule({DutyScheduleFilterParamsModel? params}) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response = await dutyScheduleRemoteDatasource.fetchListDutySchedule(
        params: params,
      );
      return response.fold(
        (failure) async {
          final localData = await dutyScheduleLocalDatasource.getDutySchedule();
          return localData.fold(
            (localFailure) => left(failure), 
            (cachedSchedule) {
              if (cachedSchedule != null) {
                return right(
                  BaseListResponseEntity<DutyScheduleEntity>(
                    data: [cachedSchedule],
                  ),
                );
              } else {
                return left(failure); 
              }
            },
          );
        },
        (model) async {
          if (model.data != null && model.data!.isNotEmpty) {
            final firstSchedule = model.data!.first.toEntity();
            await dutyScheduleLocalDatasource.saveDutySchedule(firstSchedule);
          }

          return right(
            BaseListResponseEntity<DutyScheduleEntity>(
              data: model.data?.map((e) => e.toEntity()).toList(),
            ),
          );
        },
      );
    } else {
      final localData = await dutyScheduleLocalDatasource.getDutySchedule();
      return localData.fold(
        (failure) => left(
          LocalFailure('No internet connection and no cached data available'),
        ),
        (cachedSchedule) {
          if (cachedSchedule != null) {
            return right(
              BaseListResponseEntity<DutyScheduleEntity>(
                data: [cachedSchedule],
              ),
            );
          } else {
            return left(
              LocalFailure(
                'No internet connection and no cached data available',
              ),
            );
          }
        },
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  fetchDutyScheduleDetail({required String dutyScheduleId}) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response = await dutyScheduleRemoteDatasource
          .fetchDutyScheduleDetail(dutyScheduleId);
      return response.fold(
        (failure) async {
          final localData = await dutyScheduleLocalDatasource.getDutySchedule();
          return localData.fold(
            (localFailure) => left(failure), // Return original server failure
            (cachedSchedule) {
              if (cachedSchedule != null) {
                return right(
                  BaseResponseEntity<DutyScheduleEntity>(data: cachedSchedule),
                );
              } else {
                return left(failure); // No local data available
              }
            },
          );
        },
        (model) async {
          if (model.data != null) {
            await dutyScheduleLocalDatasource.saveDutySchedule(
              model.data!.toEntity(),
            );
          }

          return right(
            BaseResponseEntity<DutyScheduleEntity>(
              data: model.data?.toEntity(),
            ),
          );
        },
      );
    } else {
      final localData = await dutyScheduleLocalDatasource.getDutySchedule();
      return localData.fold(
        (failure) => left(
          LocalFailure('No internet connection and no cached data available'),
        ),
        (cachedSchedule) {
          if (cachedSchedule != null) {
            return right(
              BaseResponseEntity<DutyScheduleEntity>(data: cachedSchedule),
            );
          } else {
            return left(
              LocalFailure(
                'No internet connection and no cached data available',
              ),
            );
          }
        },
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  createDutySchedule({required SaveDutyScheduleRequestEntity data}) async {
    final response = await dutyScheduleRemoteDatasource.createDutySchedule(
      data: data.toModel(),
    );
    return response.map(
      (model) =>
          BaseResponseEntity<DutyScheduleEntity>(data: model.data?.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  updateDutySchedule({
    required String dutyScheduleId,
    required SaveDutyScheduleRequestEntity data,
  }) async {
    final response = await dutyScheduleRemoteDatasource.updateDutySchedule(
      dutyScheduleId: dutyScheduleId,
      data: data.toModel(),
    );
    return response.map(
      (model) =>
          BaseResponseEntity<DutyScheduleEntity>(data: model.data?.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> deleteDutySchedule({
    required String dutyScheduleId,
  }) async {
    final response = await dutyScheduleRemoteDatasource.deleteDutySchedule(
      dutyScheduleId,
    );
    return response.map((_) {});
  }

  @override
  Future<Either<Failure, void>> saveDutySchedule(
    DutyScheduleEntity dutySchedule,
  ) async {
    return await dutyScheduleLocalDatasource.saveDutySchedule(dutySchedule);
  }

  @override
  Future<Either<Failure, DutyScheduleEntity?>> getDutySchedule() async {
    return await dutyScheduleLocalDatasource.getDutySchedule();
  }

  @override
  Future<Either<Failure, void>> clearDutyScheduleData() async {
    return await dutyScheduleLocalDatasource.clearDutyScheduleData();
  }
}
