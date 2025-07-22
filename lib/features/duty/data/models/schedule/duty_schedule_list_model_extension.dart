part of 'duty_schedule_list_model.dart';

extension DutyScheduleListModelExtension on DutyScheduleListModel {
  DutyScheduleListEntity toEntity() {
    return DutyScheduleListEntity(
      days: days,
      laboratoryAssistant:
          laboratoryAssistant?.map((model) => model.toEntity()).toList(),
    );
  }
}
