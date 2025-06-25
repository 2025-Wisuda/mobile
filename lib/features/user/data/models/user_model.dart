import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';

part 'user_filter_params_model.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
part 'user_model_extension.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'username', includeIfNull: false) String? username,
    @JsonKey(name: 'email', includeIfNull: false) String? email,
    @JsonKey(name: 'first_name', includeIfNull: false) String? firstName,
    @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
    @JsonKey(name: 'student_number', includeIfNull: false)
    String? studentNumber,
    @JsonKey(name: 'employee_number', includeIfNull: false)
    String? employeeNumber,
    @JsonKey(name: 'face_image', includeIfNull: false) String? faceImage,
    @JsonKey(name: 'face_uploaded', includeIfNull: false) bool? faceUploaded,
    @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
    @JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,
    @JsonKey(name: 'is_staff', includeIfNull: false) bool? isStaff,
    @JsonKey(name: 'date_joined', includeIfNull: false) DateTime? dateJoined,
    @JsonKey(name: 'last_login', includeIfNull: false) DateTime? lastLogin,
    @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt,
    @JsonKey(name: 'group', includeIfNull: false) String? group,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
