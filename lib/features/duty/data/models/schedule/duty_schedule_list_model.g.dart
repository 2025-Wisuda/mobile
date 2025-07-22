// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_schedule_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DutyScheduleListModel _$DutyScheduleListModelFromJson(
        Map<String, dynamic> json) =>
    _DutyScheduleListModel(
      days: json['days'] as String?,
      laboratoryAssistant: (json['laboratory_assistant'] as List<dynamic>?)
          ?.map((e) => DutyScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DutyScheduleListModelToJson(
        _DutyScheduleListModel instance) =>
    <String, dynamic>{
      'days': instance.days,
      'laboratory_assistant': instance.laboratoryAssistant,
    };
