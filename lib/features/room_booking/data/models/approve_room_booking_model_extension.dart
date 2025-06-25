part of 'approve_room_booking_model.dart';

extension ApproveRoomBookingModelExtension on ApproveRoomBookingModel {
  ApproveRoomBookingEntity toEntity() {
    return ApproveRoomBookingEntity(
      approvalNotes: approvalNotes,
    );
  }
}

extension ApproveRoomBookingEntityExtension on ApproveRoomBookingEntity {
  ApproveRoomBookingModel toModel() {
    return ApproveRoomBookingModel(
      approvalNotes: approvalNotes,
    );
  }
}
