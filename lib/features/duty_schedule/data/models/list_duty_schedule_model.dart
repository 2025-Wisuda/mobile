// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/model.dart';
import 'duty_schedule_model.dart';

part 'list_duty_schedule_model.freezed.dart';
part 'list_duty_schedule_model.g.dart';

@freezed
abstract class ListDutyScheduleModel with _$ListDutyScheduleModel {
  const factory ListDutyScheduleModel({
    @JsonKey(name: 'data', includeIfNull: false) List<DutyScheduleModel>? data,
    @JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta,
  }) = _ListDutyScheduleModel;

  factory ListDutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ListDutyScheduleModelFromJson(json);
}
