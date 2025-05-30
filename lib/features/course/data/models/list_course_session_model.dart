// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/meta_model.dart';
import 'package:mobile/features/course/data/models/course_session_model.dart';

part 'list_course_session_model.freezed.dart';
part 'list_course_session_model.g.dart';

@freezed
abstract class ListCourseSessionModel with _$ListCourseSessionModel {
  const factory ListCourseSessionModel({
    @JsonKey(name: 'data') List<CourseSessionModel>? data,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ListCourseSessionModel;

  factory ListCourseSessionModel.fromJson(Map<String, dynamic> json) =>
      _$ListCourseSessionModelFromJson(json);
}
