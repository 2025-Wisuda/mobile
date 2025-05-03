// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserProfileRequestModel _$UpdateUserProfileRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateUserProfileRequestModel(
  studentId: json['student_id'] as String?,
  employeeId: json['employee_id'] as String?,
  faceImage: _fileFromJson(json['face_image'] as String?),
  avatar: _fileFromJson(json['avatar'] as String?),
  email: json['email'] as String?,
);

Map<String, dynamic> _$UpdateUserProfileRequestModelToJson(
  _UpdateUserProfileRequestModel instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'employee_id': instance.employeeId,
  'face_image': _fileToJson(instance.faceImage),
  'avatar': _fileToJson(instance.avatar),
  'email': instance.email,
};
