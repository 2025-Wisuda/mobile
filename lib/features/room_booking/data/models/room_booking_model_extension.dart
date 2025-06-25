import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/user/data/models/model.dart';

extension RoomBookingModelExtension on RoomBookingModel {
  RoomBookingEntity toEntity() {
    return RoomBookingEntity(
      id: id,
      booker: booker,
      bookerName: bookerName,
      bookerIdentifier: bookerIdentifier,
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
      approvalStatus: approvalStatus,
      approvedByUser: approvedByUser?.toEntity(),
      approvalTimestamp: approvalTimestamp,
      approvalNotes: approvalNotes,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
