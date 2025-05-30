// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/model.dart';
import 'lab_schedule_model.dart';

part 'list_lab_schedule_model.freezed.dart';
part 'list_lab_schedule_model.g.dart';

@freezed
abstract class ListLabScheduleModel with _$ListLabScheduleModel {
  const factory ListLabScheduleModel({
    @JsonKey(name: 'data', includeIfNull: false) List<LabScheduleModel>? data,
    @JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta,
  }) = _ListLabScheduleModel;

  factory ListLabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ListLabScheduleModelFromJson(json);
}
