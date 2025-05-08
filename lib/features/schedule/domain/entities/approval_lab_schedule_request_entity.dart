import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_lab_schedule_request_entity.freezed.dart';

@freezed
abstract class ApprovalLabScheduleRequestEntity
    with _$ApprovalLabScheduleRequestEntity {
  const factory ApprovalLabScheduleRequestEntity({
    String? approvalStatus,
    String? approvedBy,
    DateTime? approvalTime,
  }) = _ApprovalLabScheduleRequestEntity;
}
