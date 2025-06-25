part of 'save_room_booking_request_entity.dart';

extension SaveRoomBookingRequestEntityExtension
    on SaveRoomBookingRequestEntity {
  SaveRoomBookingRequestModel toModel() {
    return SaveRoomBookingRequestModel(
      bookingType: bookingType,
      purpose: purpose,
      date: date,
      startTime: startTime,
      endTime: endTime,
      seminarType: seminarType,
      researchTitle: researchTitle,
      supervisorMain: supervisorMain,
      supervisorSecondary: supervisorSecondary,
      examiner: examiner,
      documentProof: documentProof,
    );
  }
}
