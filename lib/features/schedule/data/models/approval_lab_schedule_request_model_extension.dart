import 'package:mobile/features/schedule/data/models/approval_lab_schedule_request_model.dart';
import 'package:mobile/features/schedule/domain/entities/approval_lab_schedule_request_entity.dart';

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
