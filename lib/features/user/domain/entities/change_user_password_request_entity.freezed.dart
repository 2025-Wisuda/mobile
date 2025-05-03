// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_user_password_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeUserPasswordRequestEntity {

 String get oldPassword; String get newPassword;
/// Create a copy of ChangeUserPasswordRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeUserPasswordRequestEntityCopyWith<ChangeUserPasswordRequestEntity> get copyWith => _$ChangeUserPasswordRequestEntityCopyWithImpl<ChangeUserPasswordRequestEntity>(this as ChangeUserPasswordRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeUserPasswordRequestEntity&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangeUserPasswordRequestEntity(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ChangeUserPasswordRequestEntityCopyWith<$Res>  {
  factory $ChangeUserPasswordRequestEntityCopyWith(ChangeUserPasswordRequestEntity value, $Res Function(ChangeUserPasswordRequestEntity) _then) = _$ChangeUserPasswordRequestEntityCopyWithImpl;
@useResult
$Res call({
 String oldPassword, String newPassword
});




}
/// @nodoc
class _$ChangeUserPasswordRequestEntityCopyWithImpl<$Res>
    implements $ChangeUserPasswordRequestEntityCopyWith<$Res> {
  _$ChangeUserPasswordRequestEntityCopyWithImpl(this._self, this._then);

  final ChangeUserPasswordRequestEntity _self;
  final $Res Function(ChangeUserPasswordRequestEntity) _then;

/// Create a copy of ChangeUserPasswordRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ChangeUserPasswordRequestEntity implements ChangeUserPasswordRequestEntity {
  const _ChangeUserPasswordRequestEntity({required this.oldPassword, required this.newPassword});
  

@override final  String oldPassword;
@override final  String newPassword;

/// Create a copy of ChangeUserPasswordRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeUserPasswordRequestEntityCopyWith<_ChangeUserPasswordRequestEntity> get copyWith => __$ChangeUserPasswordRequestEntityCopyWithImpl<_ChangeUserPasswordRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeUserPasswordRequestEntity&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangeUserPasswordRequestEntity(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangeUserPasswordRequestEntityCopyWith<$Res> implements $ChangeUserPasswordRequestEntityCopyWith<$Res> {
  factory _$ChangeUserPasswordRequestEntityCopyWith(_ChangeUserPasswordRequestEntity value, $Res Function(_ChangeUserPasswordRequestEntity) _then) = __$ChangeUserPasswordRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String oldPassword, String newPassword
});




}
/// @nodoc
class __$ChangeUserPasswordRequestEntityCopyWithImpl<$Res>
    implements _$ChangeUserPasswordRequestEntityCopyWith<$Res> {
  __$ChangeUserPasswordRequestEntityCopyWithImpl(this._self, this._then);

  final _ChangeUserPasswordRequestEntity _self;
  final $Res Function(_ChangeUserPasswordRequestEntity) _then;

/// Create a copy of ChangeUserPasswordRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_ChangeUserPasswordRequestEntity(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
