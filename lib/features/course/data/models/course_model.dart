// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/course/data/models/course_session_model.dart';
import 'package:mobile/features/user/user.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'students') List<UserModel>? students,
    @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
    @JsonKey(name: 'sessions') List<CourseSessionModel>? sessions,
    @JsonKey(name: 'created_by') UserModel? createdBy,
    @JsonKey(name: 'enroll_key') String? enrollKey,
    @JsonKey(name: 'total_students') int? totalStudents,
    @JsonKey(name: 'total_teaching_assistants') int? totalTeachingAssistants,
    @JsonKey(name: 'total_participants') int? totalParticipants,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}
