// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  studentNumber: json['student_number'] as String?,
  employeeNumber: json['employee_number'] as String?,
  faceImageUrl: json['face_image_url'] as String?,
  faceUploaded: json['face_uploaded'] as bool?,
  avatarUrl: json['avatar_url'] as String?,
  isActive: json['is_active'] as bool?,
  isStaff: json['is_staff'] as bool?,
  dateJoined:
      json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
  lastLogin:
      json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
  createdBy: json['created_by'] as String?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  updatedBy: json['updated_by'] as String?,
  updatedAt:
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
  group: json['group'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.username case final value?) 'username': value,
      if (instance.email case final value?) 'email': value,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.studentNumber case final value?) 'student_number': value,
      if (instance.employeeNumber case final value?) 'employee_number': value,
      if (instance.faceImageUrl case final value?) 'face_image_url': value,
      if (instance.faceUploaded case final value?) 'face_uploaded': value,
      if (instance.avatarUrl case final value?) 'avatar_url': value,
      if (instance.isActive case final value?) 'is_active': value,
      if (instance.isStaff case final value?) 'is_staff': value,
      if (instance.dateJoined?.toIso8601String() case final value?)
        'date_joined': value,
      if (instance.lastLogin?.toIso8601String() case final value?)
        'last_login': value,
      if (instance.createdBy case final value?) 'created_by': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedBy case final value?) 'updated_by': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.group case final value?) 'group': value,
    };
