import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_profile_request_model.freezed.dart';
part 'update_user_profile_request_model.g.dart';

File? _fileFromJson(String? path) => path == null ? null : File(path);
String? _fileToJson(File? file) => file?.path;

@freezed
abstract class UpdateUserProfileRequestModel
    with _$UpdateUserProfileRequestModel {
  const factory UpdateUserProfileRequestModel({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson)
    File? faceImage,
    @JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson)
    File? avatar,
    @JsonKey(name: 'email') String? email,
  }) = _UpdateUserProfileRequestModel;

  factory UpdateUserProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileRequestModelFromJson(json);
}
