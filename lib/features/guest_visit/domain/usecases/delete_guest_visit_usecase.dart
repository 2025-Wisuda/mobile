import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteGuestVisitUsecase {
  final GuestVisitRepository guestVisitRepository;

  DeleteGuestVisitUsecase(this.guestVisitRepository);

  Future<Either<Failure, void>> execute({
    required String id,
  }) {
    return guestVisitRepository.deleteGuestVisit(id: id);
  }
}
