import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/user/data/models/user_model.dart';

part 'duty_schedule_model.freezed.dart';
part 'duty_schedule_model.g.dart';

@freezed
abstract class DutyScheduleModel with _$DutyScheduleModel {
  const factory DutyScheduleModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
    @JsonKey(name: 'days') String? days,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _DutyScheduleModel;

  factory DutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleModelFromJson(json);
}
