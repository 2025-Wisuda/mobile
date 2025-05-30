// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/domain/entities/entity.dart';

// Project imports:

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
    UserEntity? createdBy,
    bool? isActive,
    String? approvalStatus,
    UserEntity? approvedBy,
    DateTime? approvalTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LabScheduleEntity;
}
