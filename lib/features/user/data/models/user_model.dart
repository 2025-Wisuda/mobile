import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'is_staff') bool? isStaff,
    @JsonKey(name: 'date_joined') DateTime? dateJoined,
    @JsonKey(name: 'face_image') String? faceImage,
    @JsonKey(name: 'face_uploaded') bool? faceUploaded,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'group') String? group,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
