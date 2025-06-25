import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/data/datasources/guest_visit_remote_datasource.dart';
import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/models/model.dart';

class GuestVisitRepositoryImpl implements GuestVisitRepository {
  final GuestVisitRemoteDataSource _remoteDataSource;

  GuestVisitRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, BaseListResponseEntity<GuestVisitEntity>>>
      fetchListGuestVisit({
    GuestVisitFilterParamsModel? params,
  }) async {
    final remoteResult =
        await _remoteDataSource.fetchListGuestVisit(params: params);

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((guestVisit) => guestVisit.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      fetchGuestVisitDetail({
    required String id,
  }) async {
    final remoteResult = await _remoteDataSource.fetchGuestVisitDetail(id: id);

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((guestVisit) => guestVisit.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      createGuestVisit({
    required SaveGuestVisitRequestEntity data,
  }) async {
    final modelData = data.toModel();
    final response = await _remoteDataSource.createGuestVisit(data: modelData);

    return response.fold(
      (failure) => left(failure),
      (model) {
        final entity = model.toEntity((guestVisit) => guestVisit.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      updateGuestVisit({
    required String id,
    required SaveGuestVisitRequestEntity data,
  }) async {
    final modelData = data.toModel();
    final response =
        await _remoteDataSource.updateGuestVisit(id: id, data: modelData);

    return response.fold(
      (failure) => left(failure),
      (model) {
        final entity = model.toEntity((guestVisit) => guestVisit.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, void>> deleteGuestVisit({
    required String id,
  }) async {
    final response = await _remoteDataSource.deleteGuestVisit(id: id);
    return response.fold((failure) => left(failure), (model) => right(model));
  }
}
