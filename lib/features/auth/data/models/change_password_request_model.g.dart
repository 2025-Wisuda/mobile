// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordRequestModel(
  oldPassword: json['old_password'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestModelToJson(
  _ChangePasswordRequestModel instance,
) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'new_password': instance.newPassword,
};
