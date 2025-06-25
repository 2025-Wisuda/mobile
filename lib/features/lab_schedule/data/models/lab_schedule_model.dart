import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';

part 'lab_schedule_model.freezed.dart';
part 'lab_schedule_model.g.dart';
part 'lab_schedule_model_extension.dart';

@freezed
abstract class LabScheduleModel with _$LabScheduleModel {
  const factory LabScheduleModel({
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'date', includeIfNull: false) DateTime? date,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'type', includeIfNull: false) String? type,
    @JsonKey(name: 'detail', includeIfNull: false) String? detail,
    @JsonKey(name: 'created_by', includeIfNull: false) String? createdBy,
    @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
  }) = _LabScheduleModel;

  factory LabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$LabScheduleModelFromJson(json);
}
