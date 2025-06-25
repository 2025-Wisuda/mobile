import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/user.dart';

part 'course_session_model.freezed.dart';
part 'course_session_model.g.dart';

@freezed
abstract class CourseSessionModel with _$CourseSessionModel {
  const factory CourseSessionModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
    @JsonKey(name: 'teaching_assistant_ids') List<String>? teachingAssistantIds,
  }) = _CourseSessionModel;

  factory CourseSessionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionModelFromJson(json);
}
