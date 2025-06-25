part of 'lab_schedule_model.dart';

extension LabScheduleModelExtension on LabScheduleModel {
  LabScheduleEntity toEntity() {
    return LabScheduleEntity(
      id: id,
      date: date,
      startTime: startTime,
      endTime: endTime,
      type: type,
      detail: detail,
      createdBy: createdBy,
      updatedAt: updatedAt,
    );
  }
}
