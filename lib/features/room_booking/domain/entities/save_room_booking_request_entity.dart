import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';

part 'save_room_booking_request_entity.freezed.dart';
part 'save_room_booking_request_entity_extension.dart';

@freezed
abstract class SaveRoomBookingRequestEntity
    with _$SaveRoomBookingRequestEntity {
  const factory SaveRoomBookingRequestEntity({
    String? bookingType,
    String? purpose,
    String? date,
    String? startTime,
    String? endTime,
    String? seminarType,
    String? researchTitle,
    String? supervisorMain,
    String? supervisorSecondary,
    String? examiner,
    String? documentProof,
  }) = _SaveRoomBookingRequestEntity;
}
