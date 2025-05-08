// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_lab_schedule_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApprovalLabScheduleRequestModel _$ApprovalLabScheduleRequestModelFromJson(
  Map<String, dynamic> json,
) => _ApprovalLabScheduleRequestModel(
  approvalStatus: json['approval_status'] as String?,
  approvedBy: json['approved_by'] as String?,
  approvalTime:
      json['approval_time'] == null
          ? null
          : DateTime.parse(json['approval_time'] as String),
);

Map<String, dynamic> _$ApprovalLabScheduleRequestModelToJson(
  _ApprovalLabScheduleRequestModel instance,
) => <String, dynamic>{
  if (instance.approvalStatus case final value?) 'approval_status': value,
  if (instance.approvedBy case final value?) 'approved_by': value,
  if (instance.approvalTime?.toIso8601String() case final value?)
    'approval_time': value,
};
