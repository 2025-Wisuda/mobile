import 'package:mobile/features/lab_schedule/data/models/update_lab_schedule_request_model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/update_lab_schedule_request_entity.dart';

extension UpdateLabScheduleRequestModelExtension
    on UpdateLabScheduleRequestModel {
  static UpdateLabScheduleRequestModel fromEntity(
    UpdateLabScheduleRequestEntity entity,
  ) {
    return UpdateLabScheduleRequestModel(
      activityType: entity.activityType,
      activityDescription: entity.activityDescription,
      scheduleDate: entity.scheduleDate,
      startTime: entity.startTime,
      endTime: entity.endTime,
    );
  }

  UpdateLabScheduleRequestEntity toEntity() {
    return UpdateLabScheduleRequestEntity(
      activityType: activityType,
      activityDescription: activityDescription,
      scheduleDate: scheduleDate,
      startTime: startTime,
      endTime: endTime,
    );
  }
}
