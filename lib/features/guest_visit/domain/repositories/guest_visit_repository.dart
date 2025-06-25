import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class GuestVisitRepository {
  /// Fetch list of guest visits with filtering
  Future<Either<Failure, BaseListResponseEntity<GuestVisitEntity>>>
      fetchListGuestVisit({
    GuestVisitFilterParamsModel? params,
  });

  /// Fetch detailed guest visit information
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      fetchGuestVisitDetail({
    required String id,
  });

  /// Create new guest visit
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      createGuestVisit({
    required SaveGuestVisitRequestEntity data,
  });

  /// Update existing guest visit (partial update)
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>>
      updateGuestVisit({
    required String id,
    required SaveGuestVisitRequestEntity data,
  });

  /// Delete guest visit (soft delete)
  Future<Either<Failure, void>> deleteGuestVisit({
    required String id,
  });
}
