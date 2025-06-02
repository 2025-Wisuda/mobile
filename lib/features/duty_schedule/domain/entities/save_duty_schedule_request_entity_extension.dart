part of 'save_duty_schedule_request_entity.dart';

extension SaveDutyScheduleRequestEntityExtension
    on SaveDutyScheduleRequestEntity {
  SaveDutyScheduleRequestModel toModel() {
    return SaveDutyScheduleRequestModel(
      teachingAssistantIds: teachingAssistantIds,
      days: days,
      startDate: startDate,
      endDate: endDate,
      startTime: startTime,
      endTime: endTime,
    );
  }
}
