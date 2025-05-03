// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUserProfileRequestEntity {

 String? get studentId; String? get employeeId; File? get faceImage; File? get avatar; String? get email;
/// Create a copy of UpdateUserProfileRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileRequestEntityCopyWith<UpdateUserProfileRequestEntity> get copyWith => _$UpdateUserProfileRequestEntityCopyWithImpl<UpdateUserProfileRequestEntity>(this as UpdateUserProfileRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfileRequestEntity&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,studentId,employeeId,faceImage,avatar,email);

@override
String toString() {
  return 'UpdateUserProfileRequestEntity(studentId: $studentId, employeeId: $employeeId, faceImage: $faceImage, avatar: $avatar, email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileRequestEntityCopyWith<$Res>  {
  factory $UpdateUserProfileRequestEntityCopyWith(UpdateUserProfileRequestEntity value, $Res Function(UpdateUserProfileRequestEntity) _then) = _$UpdateUserProfileRequestEntityCopyWithImpl;
@useResult
$Res call({
 String? studentId, String? employeeId, File? faceImage, File? avatar, String? email
});




}
/// @nodoc
class _$UpdateUserProfileRequestEntityCopyWithImpl<$Res>
    implements $UpdateUserProfileRequestEntityCopyWith<$Res> {
  _$UpdateUserProfileRequestEntityCopyWithImpl(this._self, this._then);

  final UpdateUserProfileRequestEntity _self;
  final $Res Function(UpdateUserProfileRequestEntity) _then;

/// Create a copy of UpdateUserProfileRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? employeeId = freezed,Object? faceImage = freezed,Object? avatar = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as File?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _UpdateUserProfileRequestEntity implements UpdateUserProfileRequestEntity {
  const _UpdateUserProfileRequestEntity({this.studentId, this.employeeId, this.faceImage, this.avatar, this.email});
  

@override final  String? studentId;
@override final  String? employeeId;
@override final  File? faceImage;
@override final  File? avatar;
@override final  String? email;

/// Create a copy of UpdateUserProfileRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserProfileRequestEntityCopyWith<_UpdateUserProfileRequestEntity> get copyWith => __$UpdateUserProfileRequestEntityCopyWithImpl<_UpdateUserProfileRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserProfileRequestEntity&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,studentId,employeeId,faceImage,avatar,email);

@override
String toString() {
  return 'UpdateUserProfileRequestEntity(studentId: $studentId, employeeId: $employeeId, faceImage: $faceImage, avatar: $avatar, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserProfileRequestEntityCopyWith<$Res> implements $UpdateUserProfileRequestEntityCopyWith<$Res> {
  factory _$UpdateUserProfileRequestEntityCopyWith(_UpdateUserProfileRequestEntity value, $Res Function(_UpdateUserProfileRequestEntity) _then) = __$UpdateUserProfileRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String? studentId, String? employeeId, File? faceImage, File? avatar, String? email
});




}
/// @nodoc
class __$UpdateUserProfileRequestEntityCopyWithImpl<$Res>
    implements _$UpdateUserProfileRequestEntityCopyWith<$Res> {
  __$UpdateUserProfileRequestEntityCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileRequestEntity _self;
  final $Res Function(_UpdateUserProfileRequestEntity) _then;

/// Create a copy of UpdateUserProfileRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? employeeId = freezed,Object? faceImage = freezed,Object? avatar = freezed,Object? email = freezed,}) {
  return _then(_UpdateUserProfileRequestEntity(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as File?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
