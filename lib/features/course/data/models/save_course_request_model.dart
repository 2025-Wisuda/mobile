// Dart imports:
import 'dart:io';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_course_request_model.freezed.dart';
part 'save_course_request_model.g.dart';

@freezed
abstract class SaveCourseRequestModel with _$SaveCourseRequestModel {
  const factory SaveCourseRequestModel({
    @JsonKey(name: 'title', includeIfNull: false) String? title,
    @JsonKey(name: 'description', includeIfNull: false) String? description,
    @JsonKey(name: 'start_date', includeIfNull: false) String? startDate,
    @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
    @JsonKey(name: 'students', includeIfNull: false) List<String>? students,
    @JsonKey(name: 'teaching_assistants', includeIfNull: false)
    List<String>? teachingAssistants,
    @JsonKey(name: 'enroll_key', includeIfNull: false) String? enrollKey,
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _SaveCourseRequestModel;

  factory SaveCourseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCourseRequestModelFromJson(json);
}
