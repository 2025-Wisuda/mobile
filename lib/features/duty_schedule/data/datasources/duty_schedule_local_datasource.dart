import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/data/datasources/datasource.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'duty_schedule_local_datasource_impl.dart';

abstract class DutyScheduleLocalDatasource {
  Future<Either<Failure, void>> saveDutySchedule(DutyScheduleEntity user);
  Future<Either<Failure, DutyScheduleEntity?>> getDutySchedule();
  Future<Either<Failure, void>> clearDutyScheduleData();
}
