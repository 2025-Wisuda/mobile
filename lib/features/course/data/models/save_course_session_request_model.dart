import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_course_session_request_model.freezed.dart';
part 'save_course_session_request_model.g.dart';

@freezed
abstract class SaveCourseSessionRequestModel
    with _$SaveCourseSessionRequestModel {
  const factory SaveCourseSessionRequestModel({
    @JsonKey(name: 'title', includeIfNull: false) String? title,
    @JsonKey(name: 'description', includeIfNull: false) String? description,
    @JsonKey(name: 'type', includeIfNull: false) String? type,
    @JsonKey(name: 'date', includeIfNull: false) String? date,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'status', includeIfNull: false) String? status,
    @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
    List<String>? teachingAssistants,
  }) = _SaveCourseSessionRequestModel;

  factory SaveCourseSessionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCourseSessionRequestModelFromJson(json);
}
