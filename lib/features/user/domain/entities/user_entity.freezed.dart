// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntity {

 String? get id; String? get password; DateTime? get lastLogin; bool? get isSuperuser; String? get username; String? get studentId; String? get employeeId; String? get firstName; String? get lastName; String? get email; bool? get isActive; bool? get isStaff; DateTime? get dateJoined; String? get faceImage; bool? get faceUploaded; String? get avatar; String? get group; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.username, username) || other.username == username)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isStaff, isStaff) || other.isStaff == isStaff)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.faceUploaded, faceUploaded) || other.faceUploaded == faceUploaded)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.group, group) || other.group == group)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,password,lastLogin,isSuperuser,username,studentId,employeeId,firstName,lastName,email,isActive,isStaff,dateJoined,faceImage,faceUploaded,avatar,group,createdAt,updatedAt]);

@override
String toString() {
  return 'UserEntity(id: $id, password: $password, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, studentId: $studentId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? password, DateTime? lastLogin, bool? isSuperuser, String? username, String? studentId, String? employeeId, String? firstName, String? lastName, String? email, bool? isActive, bool? isStaff, DateTime? dateJoined, String? faceImage, bool? faceUploaded, String? avatar, String? group, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
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


class _UserEntity implements UserEntity {
  const _UserEntity({required this.id, required this.password, required this.lastLogin, required this.isSuperuser, required this.username, required this.studentId, required this.employeeId, required this.firstName, required this.lastName, required this.email, required this.isActive, required this.isStaff, required this.dateJoined, required this.faceImage, required this.faceUploaded, required this.avatar, required this.group, required this.createdAt, required this.updatedAt});
  

@override final  String? id;
@override final  String? password;
@override final  DateTime? lastLogin;
@override final  bool? isSuperuser;
@override final  String? username;
@override final  String? studentId;
@override final  String? employeeId;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? email;
@override final  bool? isActive;
@override final  bool? isStaff;
@override final  DateTime? dateJoined;
@override final  String? faceImage;
@override final  bool? faceUploaded;
@override final  String? avatar;
@override final  String? group;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.password, password) || other.password == password)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.username, username) || other.username == username)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isStaff, isStaff) || other.isStaff == isStaff)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.faceUploaded, faceUploaded) || other.faceUploaded == faceUploaded)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.group, group) || other.group == group)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,password,lastLogin,isSuperuser,username,studentId,employeeId,firstName,lastName,email,isActive,isStaff,dateJoined,faceImage,faceUploaded,avatar,group,createdAt,updatedAt]);

@override
String toString() {
  return 'UserEntity(id: $id, password: $password, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, studentId: $studentId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, isActive: $isActive, isStaff: $isStaff, dateJoined: $dateJoined, faceImage: $faceImage, faceUploaded: $faceUploaded, avatar: $avatar, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? password, DateTime? lastLogin, bool? isSuperuser, String? username, String? studentId, String? employeeId, String? firstName, String? lastName, String? email, bool? isActive, bool? isStaff, DateTime? dateJoined, String? faceImage, bool? faceUploaded, String? avatar, String? group, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? password = freezed,Object? lastLogin = freezed,Object? isSuperuser = freezed,Object? username = freezed,Object? studentId = freezed,Object? employeeId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? isActive = freezed,Object? isStaff = freezed,Object? dateJoined = freezed,Object? faceImage = freezed,Object? faceUploaded = freezed,Object? avatar = freezed,Object? group = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserEntity(
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
