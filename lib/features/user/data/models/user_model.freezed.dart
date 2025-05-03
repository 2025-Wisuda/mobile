// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'password') String? get password;@JsonKey(name: 'last_login') DateTime? get lastLogin;@JsonKey(name: 'is_superuser') bool? get isSuperuser;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'employee_id') String? get employeeId;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'is_staff') bool? get isStaff;@JsonKey(name: 'date_joined') DateTime? get dateJoined;@JsonKey(name: 'face_image') String? get faceImage;@JsonKey(name: 'face_uploaded') bool? get faceUploaded;@JsonKey(name: 'avatar') String? get avatar;@JsonKey(name: 'group') String? get group;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.username, username) || other.username == username)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isStaff, isStaff) || other.isStaff == isStaff)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.faceUploaded, faceUploaded) || other.faceUploaded == faceUploaded)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.group, group) || other.group == group)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,password,lastLogin,isSuperuser,username,studentId,employeeId,firstName,lastName,email,isActive,isStaff,dateJoined,faceImage,faceUploaded,avatar,group,createdAt,updatedAt]);

@override
String toString() {
  return 'UserModel(id: $id, password: $password, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, studentId: $studentId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'password') String? password,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'is_superuser') bool? isSuperuser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'is_staff') bool? isStaff,@JsonKey(name: 'date_joined') DateTime? dateJoined,@JsonKey(name: 'face_image') String? faceImage,@JsonKey(name: 'face_uploaded') bool? faceUploaded,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'group') String? group,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? password = freezed,Object? lastLogin = freezed,Object? isSuperuser = freezed,Object? username = freezed,Object? studentId = freezed,Object? employeeId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? isActive = freezed,Object? isStaff = freezed,Object? dateJoined = freezed,Object? faceImage = freezed,Object? faceUploaded = freezed,Object? avatar = freezed,Object? group = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,isSuperuser: freezed == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,isStaff: freezed == isStaff ? _self.isStaff : isStaff // ignore: cast_nullable_to_non_nullable
as bool?,dateJoined: freezed == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as DateTime?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as String?,faceUploaded: freezed == faceUploaded ? _self.faceUploaded : faceUploaded // ignore: cast_nullable_to_non_nullable
as bool?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'password') this.password, @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'is_superuser') this.isSuperuser, @JsonKey(name: 'username') this.username, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'employee_id') this.employeeId, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'email') this.email, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'is_staff') this.isStaff, @JsonKey(name: 'date_joined') this.dateJoined, @JsonKey(name: 'face_image') this.faceImage, @JsonKey(name: 'face_uploaded') this.faceUploaded, @JsonKey(name: 'avatar') this.avatar, @JsonKey(name: 'group') this.group, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'password') final  String? password;
@override@JsonKey(name: 'last_login') final  DateTime? lastLogin;
@override@JsonKey(name: 'is_superuser') final  bool? isSuperuser;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'is_staff') final  bool? isStaff;
@override@JsonKey(name: 'date_joined') final  DateTime? dateJoined;
@override@JsonKey(name: 'face_image') final  String? faceImage;
@override@JsonKey(name: 'face_uploaded') final  bool? faceUploaded;
@override@JsonKey(name: 'avatar') final  String? avatar;
@override@JsonKey(name: 'group') final  String? group;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.username, username) || other.username == username)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isStaff, isStaff) || other.isStaff == isStaff)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.faceUploaded, faceUploaded) || other.faceUploaded == faceUploaded)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.group, group) || other.group == group)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,password,lastLogin,isSuperuser,username,studentId,employeeId,firstName,lastName,email,isActive,isStaff,dateJoined,faceImage,faceUploaded,avatar,group,createdAt,updatedAt]);

@override
String toString() {
  return 'UserModel(id: $id, password: $password, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, studentId: $studentId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'password') String? password,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'is_superuser') bool? isSuperuser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'is_staff') bool? isStaff,@JsonKey(name: 'date_joined') DateTime? dateJoined,@JsonKey(name: 'face_image') String? faceImage,@JsonKey(name: 'face_uploaded') bool? faceUploaded,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'group') String? group,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? password = freezed,Object? lastLogin = freezed,Object? isSuperuser = freezed,Object? username = freezed,Object? studentId = freezed,Object? employeeId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? isActive = freezed,Object? isStaff = freezed,Object? dateJoined = freezed,Object? faceImage = freezed,Object? faceUploaded = freezed,Object? avatar = freezed,Object? group = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,isSuperuser: freezed == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,isStaff: freezed == isStaff ? _self.isStaff : isStaff // ignore: cast_nullable_to_non_nullable
as bool?,dateJoined: freezed == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as DateTime?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as String?,faceUploaded: freezed == faceUploaded ? _self.faceUploaded : faceUploaded // ignore: cast_nullable_to_non_nullable
as bool?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
