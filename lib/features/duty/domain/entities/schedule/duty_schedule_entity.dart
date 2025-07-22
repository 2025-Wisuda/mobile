import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_schedule_entity.freezed.dart';
part 'duty_schedule_entity_extension.dart';

@freezed
abstract class DutyScheduleEntity with _$DutyScheduleEntity {
  const factory DutyScheduleEntity({
    String? avatar,
    String? name,
    String? studentNumber,
    String? status,
  }) = _DutyScheduleEntity;
}
