// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_room_booking_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveRoomBookingRequestModel _$SaveRoomBookingRequestModelFromJson(
        Map<String, dynamic> json) =>
    _SaveRoomBookingRequestModel(
      bookingType: json['booking_type'] as String?,
      purpose: json['purpose'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      seminarType: json['seminar_type'] as String?,
      researchTitle: json['research_title'] as String?,
      supervisorMain: json['supervisor_main'] as String?,
      supervisorSecondary: json['supervisor_secondary'] as String?,
      examiner: json['examiner'] as String?,
      documentProof: json['document_proof'] as String?,
    );

Map<String, dynamic> _$SaveRoomBookingRequestModelToJson(
        _SaveRoomBookingRequestModel instance) =>
    <String, dynamic>{
      if (instance.bookingType case final value?) 'booking_type': value,
      if (instance.purpose case final value?) 'purpose': value,
      if (instance.date case final value?) 'date': value,
      if (instance.startTime case final value?) 'start_time': value,
      if (instance.endTime case final value?) 'end_time': value,
      if (instance.seminarType case final value?) 'seminar_type': value,
      if (instance.researchTitle case final value?) 'research_title': value,
      if (instance.supervisorMain case final value?) 'supervisor_main': value,
      if (instance.supervisorSecondary case final value?)
        'supervisor_secondary': value,
      if (instance.examiner case final value?) 'examiner': value,
      if (instance.documentProof case final value?) 'document_proof': value,
    };
