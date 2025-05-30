// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_lab_schedule_request_model.freezed.dart';
part 'approval_lab_schedule_request_model.g.dart';

@freezed
abstract class ApprovalLabScheduleRequestModel
    with _$ApprovalLabScheduleRequestModel {
  const factory ApprovalLabScheduleRequestModel({
    @JsonKey(name: 'approval_status', includeIfNull: false)
    String? approvalStatus,
    @JsonKey(name: 'approved_by', includeIfNull: false) String? approvedBy,
    @JsonKey(name: 'approval_time', includeIfNull: false)
    DateTime? approvalTime,
  }) = _ApprovalLabScheduleRequestModel;

  factory ApprovalLabScheduleRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ApprovalLabScheduleRequestModelFromJson(json);
}
