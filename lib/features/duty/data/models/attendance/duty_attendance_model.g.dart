// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DutyAttendanceModel _$DutyAttendanceModelFromJson(Map<String, dynamic> json) =>
    _DutyAttendanceModel(
      id: json['id'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      clockInTime: json['clock_in_time'] as String?,
      clockOutTime: json['clock_out_time'] as String?,
      otpValidatedAt: json['otp_validated_at'] as String?,
      faceRecognitionConfidence:
          (json['face_recognition_confidence'] as num?)?.toDouble(),
      status: json['status'] as String?,
      manualClockInOverride: json['manual_clock_in_override'] as bool?,
      manualClockOutOverride: json['manual_clock_out_override'] as bool?,
      laboratoryAssistant: json['laboratory_assistant'] == null
          ? null
          : DutyScheduleModel.fromJson(
              json['laboratory_assistant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DutyAttendanceModelToJson(
        _DutyAttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'clock_in_time': instance.clockInTime,
      'clock_out_time': instance.clockOutTime,
      'otp_validated_at': instance.otpValidatedAt,
      'face_recognition_confidence': instance.faceRecognitionConfidence,
      'status': instance.status,
      'manual_clock_in_override': instance.manualClockInOverride,
      'manual_clock_out_override': instance.manualClockOutOverride,
      'laboratory_assistant': instance.laboratoryAssistant,
    };
