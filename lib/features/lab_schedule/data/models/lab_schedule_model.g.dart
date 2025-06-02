// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabScheduleModel _$LabScheduleModelFromJson(Map<String, dynamic> json) =>
    _LabScheduleModel(
      id: json['id'] as String?,
      activityType: json['activity_type'] as String?,
      activityTypeDisplay: json['activity_type_display'] as String?,
      activityDescription: json['activity_description'] as String?,
      scheduleDate:
          json['schedule_date'] == null
              ? null
              : DateTime.parse(json['schedule_date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      createdBy:
          json['created_by'] == null
              ? null
              : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool?,
      approvalStatus: json['approval_status'] as String?,
      approvedBy:
          json['approved_by'] == null
              ? null
              : UserModel.fromJson(json['approved_by'] as Map<String, dynamic>),
      approvalTime:
          json['approval_time'] == null
              ? null
              : DateTime.parse(json['approval_time'] as String),
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LabScheduleModelToJson(_LabScheduleModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.activityType case final value?) 'activity_type': value,
      if (instance.activityTypeDisplay case final value?)
        'activity_type_display': value,
      if (instance.activityDescription case final value?)
        'activity_description': value,
      if (instance.scheduleDate?.toIso8601String() case final value?)
        'schedule_date': value,
      if (instance.startTime case final value?) 'start_time': value,
      if (instance.endTime case final value?) 'end_time': value,
      if (instance.createdBy case final value?) 'created_by': value,
      if (instance.isActive case final value?) 'is_active': value,
      'approval_status': instance.approvalStatus,
      if (instance.approvedBy case final value?) 'approved_by': value,
      if (instance.approvalTime?.toIso8601String() case final value?)
        'approval_time': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
