import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/user.dart';

part 'room_booking_model.freezed.dart';
part 'room_booking_model.g.dart';

@freezed
abstract class RoomBookingModel with _$RoomBookingModel {
  const factory RoomBookingModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'booker') String? booker,
    @JsonKey(name: 'booker_name') String? bookerName,
    @JsonKey(name: 'booker_identifier') String? bookerIdentifier,
    @JsonKey(name: 'booking_type') String? bookingType,
    @JsonKey(name: 'purpose') String? purpose,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seminar_type') String? seminarType,
    @JsonKey(name: 'research_title') String? researchTitle,
    @JsonKey(name: 'supervisor_main') String? supervisorMain,
    @JsonKey(name: 'supervisor_secondary') String? supervisorSecondary,
    @JsonKey(name: 'examiner') String? examiner,
    @JsonKey(name: 'document_proof') String? documentProof,
    @JsonKey(name: 'approval_status') String? approvalStatus,
    @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
    UserModel? approvedByUser,
    @JsonKey(name: 'approval_timestamp') DateTime? approvalTimestamp,
    @JsonKey(name: 'approval_notes') String? approvalNotes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _RoomBookingModel;

  factory RoomBookingModel.fromJson(Map<String, dynamic> json) =>
      _$RoomBookingModelFromJson(json);
}

UserModel? _approvedByUserFromJson(dynamic json) {
  if (json == null) return null;

  if (json is String) {
    return UserModel(id: json);
  }

  if (json is Map<String, dynamic>) {
    return UserModel.fromJson(json);
  }

  return null;
}
