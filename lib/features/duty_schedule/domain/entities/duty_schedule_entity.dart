import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

part 'duty_schedule_entity.freezed.dart';
part 'duty_schedule_entity_extension.dart';
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
