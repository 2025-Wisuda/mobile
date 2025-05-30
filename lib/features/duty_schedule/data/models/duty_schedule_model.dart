// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/data/models/model.dart';

part 'duty_schedule_model.freezed.dart';
part 'duty_schedule_model.g.dart';

@freezed
abstract class DutyScheduleModel with _$DutyScheduleModel {
  const factory DutyScheduleModel({
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'teaching_assistants', includeIfNull: false)
    List<UserModel>? teachingAssistants,
    @JsonKey(name: 'days', includeIfNull: false) String? days,
    @JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,
    @JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
    @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
  }) = _DutyScheduleModel;

  factory DutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleModelFromJson(json);
}
