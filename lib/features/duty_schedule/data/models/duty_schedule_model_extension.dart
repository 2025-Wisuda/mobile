// Project imports:
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/user/data/models/model.dart';

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
