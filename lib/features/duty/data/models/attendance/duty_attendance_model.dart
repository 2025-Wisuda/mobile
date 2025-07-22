import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import '../schedule/duty_schedule_model.dart';

part 'duty_attendance_model.freezed.dart';
part 'duty_attendance_model.g.dart';
part 'duty_attendance_model_extension.dart';

@freezed
abstract class DutyAttendanceModel with _$DutyAttendanceModel {
  const factory DutyAttendanceModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'clock_in_time') String? clockInTime,
    @JsonKey(name: 'clock_out_time') String? clockOutTime,
    @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
    @JsonKey(name: 'face_recognition_confidence')
    double? faceRecognitionConfidence,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'manual_clock_in_override') bool? manualClockInOverride,
    @JsonKey(name: 'manual_clock_out_override') bool? manualClockOutOverride,
    @JsonKey(name: 'laboratory_assistant')
    DutyScheduleModel? laboratoryAssistant,
  }) = _DutyAttendanceModel;

  factory DutyAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$DutyAttendanceModelFromJson(json);
}
