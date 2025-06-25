import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/user.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'room_booking_entity.freezed.dart';
part 'room_booking_entity_extension.dart';

@freezed
abstract class RoomBookingEntity with _$RoomBookingEntity {
  const factory RoomBookingEntity({
    String? id,
    String? booker,
    String? bookerName,
    String? bookerIdentifier,
    String? bookingType,
    String? purpose,
    DateTime? date,
    String? startTime,
    String? endTime,
    String? seminarType,
    String? researchTitle,
    String? supervisorMain,
    String? supervisorSecondary,
    String? examiner,
    String? documentProof,
    String? approvalStatus,
    UserEntity? approvedByUser,
    DateTime? approvalTimestamp,
    String? approvalNotes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RoomBookingEntity;
}
