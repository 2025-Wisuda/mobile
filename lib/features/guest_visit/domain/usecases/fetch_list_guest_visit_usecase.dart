import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListGuestVisitUsecase {
  final GuestVisitRepository guestVisitRepository;

  FetchListGuestVisitUsecase(this.guestVisitRepository);

  Future<Either<Failure, BaseListResponseEntity<GuestVisitEntity>>> execute({
    GuestVisitFilterParamsModel? params,
  }) {
    return guestVisitRepository.fetchListGuestVisit(params: params);
  }
}
