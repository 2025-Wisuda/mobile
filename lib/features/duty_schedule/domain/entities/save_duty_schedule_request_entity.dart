import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/duty_schedule/data/models/save_duty_schedule_request_model.dart';

part 'save_duty_schedule_request_entity.freezed.dart';
part 'save_duty_schedule_request_entity_extension.dart';

@freezed
abstract class SaveDutyScheduleRequestEntity with _$SaveDutyScheduleRequestEntity {
  const factory SaveDutyScheduleRequestEntity({
    List<String>? teachingAssistantIds,
    String? days,
    DateTime? startDate,
    DateTime? endDate,
    String? startTime,
    String? endTime,
  }) = _SaveDutyScheduleRequestEntity;
}
