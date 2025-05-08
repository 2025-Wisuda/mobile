import 'package:mobile/features/schedule/data/models/lab_schedule_model.dart';
import 'package:mobile/features/schedule/domain/entities/lab_schedule_entity.dart';

extension LabScheduleModelExtension on LabScheduleModel {
  LabScheduleEntity toEntity() {
    return LabScheduleEntity(
      id: id,
      activityType: activityType,
      activityTypeDisplay: activityTypeDisplay,
      activityDescription: activityDescription,
      scheduleDate: scheduleDate,
      startTime: startTime,
      endTime: endTime,
      createdBy: createdBy,
      isActive: isActive,
      approvalStatus: approvalStatus,
      approvedBy: approvedBy,
      approvalTime: approvalTime,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
