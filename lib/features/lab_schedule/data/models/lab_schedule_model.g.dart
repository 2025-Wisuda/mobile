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
      'id': instance.id,
      'activity_type': instance.activityType,
      'activity_type_display': instance.activityTypeDisplay,
      'activity_description': instance.activityDescription,
      'schedule_date': instance.scheduleDate?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'created_by': instance.createdBy,
      'is_active': instance.isActive,
      'approval_status': instance.approvalStatus,
      'approved_by': instance.approvedBy,
      'approval_time': instance.approvalTime?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
