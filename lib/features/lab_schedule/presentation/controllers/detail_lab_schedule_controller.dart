import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailLabScheduleController
    extends GetBaseDetailController<LabScheduleEntity, String> {
  final FetchLabScheduleDetailUsecase _fetchLabScheduleDetailUsecase;

  DetailLabScheduleController(
    this._fetchLabScheduleDetailUsecase,
  );

  @override
  String get baseStateKey => 'labScheduleDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<LabScheduleEntity>>> executeUsecase(
    String labScheduleId,
  ) async {
    return await _fetchLabScheduleDetailUsecase.execute(
        labScheduleId: labScheduleId);
  }
}
