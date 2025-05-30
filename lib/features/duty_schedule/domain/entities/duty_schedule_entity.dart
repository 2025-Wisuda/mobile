// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/domain/entities/entity.dart';

part 'duty_schedule_entity.freezed.dart';

@freezed
abstract class DutyScheduleEntity with _$DutyScheduleEntity {
  const factory DutyScheduleEntity({
    String? id,
    List<UserEntity>? teachingAssistants,
    String? days,
    DateTime? startDate,
    DateTime? endDate,
    String? startTime,
    String? endTime,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DutyScheduleEntity;
}
