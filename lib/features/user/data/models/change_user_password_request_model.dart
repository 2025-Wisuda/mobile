import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_password_request_model.freezed.dart';
part 'change_user_password_request_model.g.dart';

@freezed
abstract class ChangeUserPasswordRequestModel
    with _$ChangeUserPasswordRequestModel {
  const factory ChangeUserPasswordRequestModel({
    @JsonKey(name: 'old_password') required String oldPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangeUserPasswordRequestModel;

  factory ChangeUserPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeUserPasswordRequestModelFromJson(json);
}
