part of 'duty_schedule_model.dart';

extension DutyScheduleModelExtension on DutyScheduleModel {
  DutyScheduleEntity toEntity() {
    return DutyScheduleEntity(
      avatar: avatar,
      name: name,
      studentNumber: studentNumber,
      status: status,
    );
  }
}
