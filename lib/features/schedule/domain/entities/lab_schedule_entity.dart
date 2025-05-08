import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/user/user.dart';

part 'lab_schedule_entity.freezed.dart';

@freezed
abstract class LabScheduleEntity with _$LabScheduleEntity {
  const factory LabScheduleEntity({
    String? id,
    String? activityType,
    String? activityTypeDisplay,
    String? activityDescription,
    DateTime? scheduleDate,
    String? startTime,
    String? endTime,
    UserModel? createdBy,
    bool? isActive,
    String? approvalStatus,
    UserModel? approvedBy,
    DateTime? approvalTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LabScheduleEntity;
}
