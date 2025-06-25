// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabAvailabilityModel _$LabAvailabilityModelFromJson(
        Map<String, dynamic> json) =>
    _LabAvailabilityModel(
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );

Map<String, dynamic> _$LabAvailabilityModelToJson(
        _LabAvailabilityModel instance) =>
    <String, dynamic>{
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
