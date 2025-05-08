import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/user/data/models/user_model.dart';

part 'lab_schedule_model.freezed.dart';
part 'lab_schedule_model.g.dart';

@freezed
abstract class LabScheduleModel with _$LabScheduleModel {
  const factory LabScheduleModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'activity_type_display') String? activityTypeDisplay,
    @JsonKey(name: 'activity_description') String? activityDescription,
    @JsonKey(name: 'schedule_date') DateTime? scheduleDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'created_by') UserModel? createdBy,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'approval_status') String? approvalStatus,
    @JsonKey(name: 'approved_by') UserModel? approvedBy,
    @JsonKey(name: 'approval_time') DateTime? approvalTime,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _LabScheduleModel;

  factory LabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$LabScheduleModelFromJson(json);
}
