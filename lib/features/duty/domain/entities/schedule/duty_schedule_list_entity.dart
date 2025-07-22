import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty/domain/entities/schedule/duty_schedule_entity.dart';

part 'duty_schedule_list_entity.freezed.dart';
part 'duty_schedule_list_entity_extension.dart';

@freezed
abstract class DutyScheduleListEntity with _$DutyScheduleListEntity {
  const factory DutyScheduleListEntity({
    String? days,
    @JsonKey(name: 'laboratory_assistant')
    List<DutyScheduleEntity>? laboratoryAssistant,
  }) = _DutyScheduleListEntity;
}
