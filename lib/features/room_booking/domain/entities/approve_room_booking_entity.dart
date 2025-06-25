import 'package:freezed_annotation/freezed_annotation.dart';

part 'approve_room_booking_entity.freezed.dart';

@freezed
abstract class ApproveRoomBookingEntity with _$ApproveRoomBookingEntity {
  const factory ApproveRoomBookingEntity({
    String? approvalNotes,
  }) = _ApproveRoomBookingEntity;
}
