// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_recognition_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaceRecognitionRequestModel _$FaceRecognitionRequestModelFromJson(
        Map<String, dynamic> json) =>
    _FaceRecognitionRequestModel(
      type: json['type'] as String,
      attendanceId: json['attendance_id'] as String,
      image: json['image'] as String,
      action: json['action'] as String?,
      requestId: json['request_id'] as String?,
    );

Map<String, dynamic> _$FaceRecognitionRequestModelToJson(
        _FaceRecognitionRequestModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'attendance_id': instance.attendanceId,
      'image': instance.image,
      'action': instance.action,
      'request_id': instance.requestId,
    };
