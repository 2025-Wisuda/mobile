import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_delete_controller.dart';
import 'package:mobile/shared/errors/failure.dart';

class DeleteGuestVisitController extends BaseDeleteController<String, void> {
  final DeleteGuestVisitUsecase _deleteGuestVisitUsecase;

  DeleteGuestVisitController(this._deleteGuestVisitUsecase);

  @override
  String get baseStateKey => 'delete_guest_visit';

  @override
  Future<Either<Failure, void>> executeUsecase(String id) async {
    return await _deleteGuestVisitUsecase.execute(id: id);
  }
}
