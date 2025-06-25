import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/repositories/guest_visit_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchGuestVisitDetailUsecase {
  final GuestVisitRepository guestVisitRepository;

  FetchGuestVisitDetailUsecase(this.guestVisitRepository);

  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> execute({
    required String id,
  }) {
    return guestVisitRepository.fetchGuestVisitDetail(id: id);
  }
}
