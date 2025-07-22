// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_guest_visit_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveGuestVisitRequestModel _$SaveGuestVisitRequestModelFromJson(
        Map<String, dynamic> json) =>
    _SaveGuestVisitRequestModel(
      visitor: json['visitor'] as String?,
      name: json['name'] as String?,
      identityType: json['identity_type'] as String?,
      identityNumber: json['identity_number'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      purpose: json['purpose'] as String?,
    );

Map<String, dynamic> _$SaveGuestVisitRequestModelToJson(
        _SaveGuestVisitRequestModel instance) =>
    <String, dynamic>{
      if (instance.visitor case final value?) 'visitor': value,
      if (instance.name case final value?) 'name': value,
      if (instance.identityType case final value?) 'identity_type': value,
      if (instance.identityNumber case final value?) 'identity_number': value,
      if (instance.date case final value?) 'date': value,
      if (instance.startTime case final value?) 'start_time': value,
      if (instance.endTime case final value?) 'end_time': value,
      if (instance.purpose case final value?) 'purpose': value,
    };
