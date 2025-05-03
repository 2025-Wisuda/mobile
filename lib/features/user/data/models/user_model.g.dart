// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String?,
  password: json['password'] as String?,
  lastLogin:
      json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
  isSuperuser: json['is_superuser'] as bool?,
  username: json['username'] as String?,
  studentId: json['student_id'] as String?,
  employeeId: json['employee_id'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  email: json['email'] as String?,
  isActive: json['is_active'] as bool?,
  isStaff: json['is_staff'] as bool?,
  dateJoined:
      json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
  faceImage: json['face_image'] as String?,
  faceUploaded: json['face_uploaded'] as bool?,
  avatar: json['avatar'] as String?,
  group: json['group'] as String?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  updatedAt:
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'last_login': instance.lastLogin?.toIso8601String(),
      'is_superuser': instance.isSuperuser,
      'username': instance.username,
      'student_id': instance.studentId,
      'employee_id': instance.employeeId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'is_active': instance.isActive,
      'is_staff': instance.isStaff,
      'date_joined': instance.dateJoined?.toIso8601String(),
      'face_image': instance.faceImage,
      'face_uploaded': instance.faceUploaded,
      'avatar': instance.avatar,
      'group': instance.group,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
