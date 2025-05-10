import 'package:mobile/features/lab_schedule/data/models/lab_schedule_model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/features/user/data/models/user_model_extension.dart';

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
      createdBy: createdBy?.toEntity(),
      isActive: isActive,
      approvalStatus: approvalStatus,
      approvedBy: approvedBy?.toEntity(),
      approvalTime: approvalTime,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
