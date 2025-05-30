// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/data/models/model.dart';

part 'lab_schedule_model.freezed.dart';
part 'lab_schedule_model.g.dart';

@freezed
abstract class LabScheduleModel with _$LabScheduleModel {
  const factory LabScheduleModel({
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'activity_type', includeIfNull: false) String? activityType,
    @JsonKey(name: 'activity_type_display', includeIfNull: false)
    String? activityTypeDisplay,
    @JsonKey(name: 'activity_description', includeIfNull: false)
    String? activityDescription,
    @JsonKey(name: 'schedule_date', includeIfNull: false)
    DateTime? scheduleDate,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'created_by', includeIfNull: false) UserModel? createdBy,
    @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
    @JsonKey(name: 'approval_status') String? approvalStatus,
    @JsonKey(name: 'approved_by', includeIfNull: false) UserModel? approvedBy,
    @JsonKey(name: 'approval_time', includeIfNull: false)
    DateTime? approvalTime,
    @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
    @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
  }) = _LabScheduleModel;

  factory LabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$LabScheduleModelFromJson(json);
}
