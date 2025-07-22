import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class DutyScheduleRepository {
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleListEntity>>>
      fetchListDutySchedule({DutyScheduleFilterParamsModel? params});

  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
      fetchDutyScheduleForToday({DutyScheduleFilterParamsModel? params});
}
