import 'package:mobile/features/duty_schedule/data/models/duty_schedule_model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/duty_schedule_entity.dart';
import 'package:mobile/features/user/data/models/user_model_extension.dart';

extension DutyScheduleModelExtension on DutyScheduleModel {
  DutyScheduleEntity toEntity() {
    return DutyScheduleEntity(
      id: id,
      teachingAssistants: teachingAssistants?.map((e) => e.toEntity()).toList(),
      days: days,
      startDate: startDate,
      endDate: endDate,
      startTime: startTime,
      endTime: endTime,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
