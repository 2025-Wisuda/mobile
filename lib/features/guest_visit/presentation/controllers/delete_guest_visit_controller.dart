import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteGuestVisitController extends GetBaseDeleteController<String, void> {
  final DeleteGuestVisitUsecase _deleteGuestVisitUsecase;

  DeleteGuestVisitController(this._deleteGuestVisitUsecase);

  @override
  String get baseStateKey => 'deleteGuestVisit';

  @override
  Future<Either<Failure, void>> executeUsecase(String guestVisitId) async {
    return await _deleteGuestVisitUsecase.execute(id: guestVisitId);
  }
}
