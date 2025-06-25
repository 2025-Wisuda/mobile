import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/helpers/helper.dart';

part 'lab_schedule_entity.freezed.dart';
part 'lab_schedule_entity_extension.dart';

@freezed
abstract class LabScheduleEntity with _$LabScheduleEntity {
  const factory LabScheduleEntity({
    String? id,
    DateTime? date,
    String? startTime,
    String? endTime,
    String? type,
    String? detail,
    String? createdBy,
    DateTime? updatedAt,
  }) = _LabScheduleEntity;
}
