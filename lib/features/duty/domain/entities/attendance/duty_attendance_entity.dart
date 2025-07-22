import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/helpers/helper.dart';
import '../schedule/duty_schedule_entity.dart';

part 'duty_attendance_entity.freezed.dart';
part 'duty_attendance_entity_extension.dart';

@freezed
abstract class DutyAttendanceEntity with _$DutyAttendanceEntity {
  const factory DutyAttendanceEntity({
    String? id,
    String? date,
    String? startTime,
    String? endTime,
    String? clockInTime,
    String? clockOutTime,
    String? status,
    String? otpValidatedAt,
    double? faceRecognitionConfidence,
    bool? manualClockInOverride,
    bool? manualClockOutOverride,
    DutyScheduleEntity? laboratoryAssistant,
  }) = _DutyAttendanceEntity;
}
