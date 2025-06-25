import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_detail_controller.dart';
import 'package:mobile/shared/entities/base_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class DetailGuestVisitController
    extends BaseDetailController<GuestVisitEntity, String> {
  final FetchGuestVisitDetailUsecase _fetchGuestVisitDetailUsecase;

  DetailGuestVisitController(this._fetchGuestVisitDetailUsecase);

  @override
  String get baseStateKey => 'guest_visit_detail';

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> executeUsecase(
      String id) async {
    return await _fetchGuestVisitDetailUsecase.execute(id: id);
  }
}
