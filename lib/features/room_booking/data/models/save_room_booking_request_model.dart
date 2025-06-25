import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_room_booking_request_model.freezed.dart';
part 'save_room_booking_request_model.g.dart';

@freezed
abstract class SaveRoomBookingRequestModel with _$SaveRoomBookingRequestModel {
  const factory SaveRoomBookingRequestModel({
    @JsonKey(name: 'booking_type', includeIfNull: false) String? bookingType,
    @JsonKey(name: 'purpose', includeIfNull: false) String? purpose,
    @JsonKey(name: 'date', includeIfNull: false) String? date,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'seminar_type', includeIfNull: false) String? seminarType,
    @JsonKey(name: 'research_title', includeIfNull: false)
    String? researchTitle,
    @JsonKey(name: 'supervisor_main', includeIfNull: false)
    String? supervisorMain,
    @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
    String? supervisorSecondary,
    @JsonKey(name: 'examiner', includeIfNull: false) String? examiner,
    @JsonKey(name: 'document_proof', includeIfNull: false)
    String? documentProof,
  }) = _SaveRoomBookingRequestModel;

  factory SaveRoomBookingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveRoomBookingRequestModelFromJson(json);
}
