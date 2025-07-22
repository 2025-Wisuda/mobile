import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailGuestVisitController
    extends GetBaseDetailController<GuestVisitEntity, String> {
  final FetchGuestVisitDetailUsecase _fetchGuestVisitDetailUsecase;

  DetailGuestVisitController(
    this._fetchGuestVisitDetailUsecase,
  );

  @override
  String get baseStateKey => 'GuestVisitDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> executeUsecase(
    String guestVisitId,
  ) async {
    return await _fetchGuestVisitDetailUsecase.execute(id: guestVisitId);
  }
}
