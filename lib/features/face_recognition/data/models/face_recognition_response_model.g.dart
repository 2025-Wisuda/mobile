// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_recognition_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaceRecognitionResponseModel _$FaceRecognitionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _FaceRecognitionResponseModel(
      type: json['type'] as String?,
      attendanceId: json['attendance_id'] as String?,
      action: json['action'] as String?,
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      message: json['message'] as String?,
      requestId: json['request_id'] as String?,
      timestamp: json['timestamp'] as String?,
      faceRecognitionDetails: json['face_recognition_details'] == null
          ? null
          : FaceRecognitionDetailsModel.fromJson(
              json['face_recognition_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FaceRecognitionResponseModelToJson(
        _FaceRecognitionResponseModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'attendance_id': instance.attendanceId,
      'action': instance.action,
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'request_id': instance.requestId,
      'timestamp': instance.timestamp,
      'face_recognition_details': instance.faceRecognitionDetails,
    };

_FaceRecognitionDetailsModel _$FaceRecognitionDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _FaceRecognitionDetailsModel(
      success: json['success'] as bool?,
      expectedIdentifier: json['expected_identifier'] as String?,
      expectedName: json['expected_name'] as String?,
      detectedIdentifier: json['detected_identifier'] as String?,
      detectedName: json['detected_name'] as String?,
      identifierType: json['identifier_type'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      confidencePercentage: (json['confidence_percentage'] as num?)?.toDouble(),
      threshold: (json['threshold'] as num?)?.toDouble(),
      attendanceType: json['attendance_type'] as String?,
      error: json['error'] as String?,
      rawPersonId: json['raw_person_id'] as String?,
    );

Map<String, dynamic> _$FaceRecognitionDetailsModelToJson(
        _FaceRecognitionDetailsModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expected_identifier': instance.expectedIdentifier,
      'expected_name': instance.expectedName,
      'detected_identifier': instance.detectedIdentifier,
      'detected_name': instance.detectedName,
      'identifier_type': instance.identifierType,
      'confidence': instance.confidence,
      'confidence_percentage': instance.confidencePercentage,
      'threshold': instance.threshold,
      'attendance_type': instance.attendanceType,
      'error': instance.error,
      'raw_person_id': instance.rawPersonId,
    };
