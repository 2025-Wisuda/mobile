import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/duty/data/models/schedule/schedule.dart';

part 'course_session_attendance_model.freezed.dart';
part 'course_session_attendance_model.g.dart';
part 'course_session_attendance_model_extension.dart';

@freezed
abstract class CourseSessionAttendanceModel
    with _$CourseSessionAttendanceModel {
  const factory CourseSessionAttendanceModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'student') DutyScheduleModel? student,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'marked_at') String? markedAt,
    @JsonKey(name: 'marked_by_name') String? markedBy,
    @JsonKey(name: 'manual_attendance_override') bool? manualAttendanceOverride,
    @JsonKey(name: 'face_recognition_confidence')
    double? faceRecognitionConfidence,
  }) = _CourseSessionAttendanceModel;

  factory CourseSessionAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionAttendanceModelFromJson(json);
}
