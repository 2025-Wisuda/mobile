import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class DutyAttendanceRepository {
  Future<Either<Failure, OtpValidationResponseEntity>> validateOtp(
      {required String otpCode});

  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      fetchMyAttendanceRecords({DutyAttendanceFilterParamsModel? params});

  Future<Either<Failure, DutyAttendanceEntity>> manualOverrideAttendance({
    required String attendanceId,
    required String action,
  });

  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      fetchListDutyAttendances({DutyAttendanceFilterParamsModel? params});

  Future<Either<Failure, BaseResponseEntity<DutyAttendanceEntity>>>
      fetchDutyAttendanceDetail({
    required String attendanceId,
  });

  Future<Either<Failure, BaseResponseEntity<DutyAttendanceStatisticsEntity>>>
      fetchAttendanceStatistics({
    String? startDate,
    String? endDate,
    String? assistantId,
  });
}
