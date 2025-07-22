// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_session_attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseSessionAttendanceModel _$CourseSessionAttendanceModelFromJson(
        Map<String, dynamic> json) =>
    _CourseSessionAttendanceModel(
      id: json['id'] as String?,
      student: json['student'] == null
          ? null
          : DutyScheduleModel.fromJson(json['student'] as Map<String, dynamic>),
      status: json['status'] as String?,
      markedAt: json['marked_at'] as String?,
      markedBy: json['marked_by_name'] as String?,
      manualAttendanceOverride: json['manual_attendance_override'] as bool?,
      faceRecognitionConfidence:
          (json['face_recognition_confidence'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CourseSessionAttendanceModelToJson(
        _CourseSessionAttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'status': instance.status,
      'marked_at': instance.markedAt,
      'marked_by_name': instance.markedBy,
      'manual_attendance_override': instance.manualAttendanceOverride,
      'face_recognition_confidence': instance.faceRecognitionConfidence,
    };
