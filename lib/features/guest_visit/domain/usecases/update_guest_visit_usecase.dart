import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class UpdateGuestVisitUsecase {
  final GuestVisitRepository guestVisitRepository;

  UpdateGuestVisitUsecase(this.guestVisitRepository);

  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> execute({
    required String id,
    required SaveGuestVisitRequestEntity data,
  }) {
    return guestVisitRepository.updateGuestVisit(id: id, data: data);
  }
}
