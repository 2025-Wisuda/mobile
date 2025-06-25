import 'package:freezed_annotation/freezed_annotation.dart';

part 'enroll_course_model.freezed.dart';
part 'enroll_course_model.g.dart';

@freezed
abstract class EnrollCourseModel with _$EnrollCourseModel {
  const factory EnrollCourseModel({
    @JsonKey(name: 'enroll_key') String? enrollKey,
  }) = _EnrollCourseModel;

  factory EnrollCourseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollCourseModelFromJson(json);
}
