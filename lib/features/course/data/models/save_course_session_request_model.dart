// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_course_session_request_model.freezed.dart';
part 'save_course_session_request_model.g.dart';

@freezed
abstract class SaveCourseSessionRequestModel
    with _$SaveCourseSessionRequestModel {
  const factory SaveCourseSessionRequestModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'course') dynamic course,
    @JsonKey(name: 'session_date') DateTime? sessionDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'teaching_assistants') List<String>? teachingAssistants,
  }) = _SaveCourseSessionRequestModel;

  factory SaveCourseSessionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCourseSessionRequestModelFromJson(json);
}
