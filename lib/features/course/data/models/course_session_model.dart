// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/user.dart';

part 'course_session_model.freezed.dart';
part 'course_session_model.g.dart';

@freezed
abstract class CourseSessionModel with _$CourseSessionModel {
  const factory CourseSessionModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'course') dynamic course,
    @JsonKey(name: 'session_date') DateTime? sessionDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
    @JsonKey(name: 'created_by') UserModel? createdBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CourseSessionModel;

  factory CourseSessionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionModelFromJson(json);
}
