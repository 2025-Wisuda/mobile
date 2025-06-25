import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';

part 'approve_room_booking_model.freezed.dart';
part 'approve_room_booking_model.g.dart';
part 'approve_room_booking_model_extension.dart';

@freezed
abstract class ApproveRoomBookingModel with _$ApproveRoomBookingModel {
  const factory ApproveRoomBookingModel({
    @JsonKey(name: 'approval_notes') String? approvalNotes,
  }) = _ApproveRoomBookingModel;

  factory ApproveRoomBookingModel.fromJson(Map<String, dynamic> json) =>
      _$ApproveRoomBookingModelFromJson(json);
}
