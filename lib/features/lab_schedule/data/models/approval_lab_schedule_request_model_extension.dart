// Project imports:
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';

extension ApprovalLabScheduleRequestModelExtension
    on ApprovalLabScheduleRequestModel {
  static ApprovalLabScheduleRequestModel fromEntity(
    ApprovalLabScheduleRequestEntity entity,
  ) {
    return ApprovalLabScheduleRequestModel(
      approvalStatus: entity.approvalStatus,
      approvedBy: entity.approvedBy,
      approvalTime: entity.approvalTime,
    );
  }

  ApprovalLabScheduleRequestEntity toEntity() {
    return ApprovalLabScheduleRequestEntity(
      approvalStatus: approvalStatus,
      approvedBy: approvedBy,
      approvalTime: approvalTime,
    );
  }
}
