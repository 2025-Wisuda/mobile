// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_visit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestVisitModel _$GuestVisitModelFromJson(Map<String, dynamic> json) =>
    _GuestVisitModel(
      id: json['id'] as String?,
      visitor: json['visitor'] == null
          ? null
          : UserModel.fromJson(json['visitor'] as Map<String, dynamic>),
      name: json['name'] as String?,
      identityType: json['identity_type'] as String?,
      identityNumber: json['identity_number'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      purpose: json['purpose'] as String?,
      paraf: json['paraf'] as String?,
      staff: json['staff'] == null
          ? null
          : UserModel.fromJson(json['staff'] as Map<String, dynamic>),
      nameDisplay: json['name_display'] as String?,
      identityDisplay: json['identity_display'] as String?,
      canEdit: json['can_edit'] as bool?,
      createdBy: json['created_by'] == null
          ? null
          : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$GuestVisitModelToJson(_GuestVisitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'visitor': instance.visitor,
      'name': instance.name,
      'identity_type': instance.identityType,
      'identity_number': instance.identityNumber,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'purpose': instance.purpose,
      'paraf': instance.paraf,
      'staff': instance.staff,
      'name_display': instance.nameDisplay,
      'identity_display': instance.identityDisplay,
      'can_edit': instance.canEdit,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
