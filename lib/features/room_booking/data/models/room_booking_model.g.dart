// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomBookingModel _$RoomBookingModelFromJson(Map<String, dynamic> json) =>
    _RoomBookingModel(
      id: json['id'] as String?,
      booker: json['booker'] as String?,
      bookerName: json['booker_name'] as String?,
      bookerIdentifier: json['booker_identifier'] as String?,
      bookingType: json['booking_type'] as String?,
      purpose: json['purpose'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      seminarType: json['seminar_type'] as String?,
      researchTitle: json['research_title'] as String?,
      supervisorMain: json['supervisor_main'] as String?,
      supervisorSecondary: json['supervisor_secondary'] as String?,
      examiner: json['examiner'] as String?,
      documentProof: json['document_proof'] as String?,
      approvalStatus: json['approval_status'] as String?,
      approvedByUser: _approvedByUserFromJson(json['approved_by_user']),
      approvalTimestamp: json['approval_timestamp'] == null
          ? null
          : DateTime.parse(json['approval_timestamp'] as String),
      approvalNotes: json['approval_notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$RoomBookingModelToJson(_RoomBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booker': instance.booker,
      'booker_name': instance.bookerName,
      'booker_identifier': instance.bookerIdentifier,
      'booking_type': instance.bookingType,
      'purpose': instance.purpose,
      'date': instance.date?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'seminar_type': instance.seminarType,
      'research_title': instance.researchTitle,
      'supervisor_main': instance.supervisorMain,
      'supervisor_secondary': instance.supervisorSecondary,
      'examiner': instance.examiner,
      'document_proof': instance.documentProof,
      'approval_status': instance.approvalStatus,
      'approved_by_user': instance.approvedByUser,
      'approval_timestamp': instance.approvalTimestamp?.toIso8601String(),
      'approval_notes': instance.approvalNotes,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
