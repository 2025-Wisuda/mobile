import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class CreateGuestVisitUsecase {
  final GuestVisitRepository guestVisitRepository;

  CreateGuestVisitUsecase(this.guestVisitRepository);

  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> execute({
    required SaveGuestVisitRequestEntity data,
  }) {
    return guestVisitRepository.createGuestVisit(data: data);
  }
}
