// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_user_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeUserPasswordRequestModel _$ChangeUserPasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _ChangeUserPasswordRequestModel(
  oldPassword: json['old_password'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$ChangeUserPasswordRequestModelToJson(
  _ChangeUserPasswordRequestModel instance,
) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'new_password': instance.newPassword,
};
