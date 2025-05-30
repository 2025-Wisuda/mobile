// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/meta_model.dart';
import 'package:mobile/features/course/data/models/course_model.dart';

part 'list_course_model.freezed.dart';
part 'list_course_model.g.dart';

@freezed
abstract class ListCourseModel with _$ListCourseModel {
  const factory ListCourseModel({
    @JsonKey(name: 'data') List<CourseModel>? data,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ListCourseModel;

  factory ListCourseModel.fromJson(Map<String, dynamic> json) =>
      _$ListCourseModelFromJson(json);
}
