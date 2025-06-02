// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginRequestEntity {

 String get username; String get password;
/// Create a copy of LoginRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestEntityCopyWith<LoginRequestEntity> get copyWith => _$LoginRequestEntityCopyWithImpl<LoginRequestEntity>(this as LoginRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestEntity(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestEntityCopyWith<$Res>  {
  factory $LoginRequestEntityCopyWith(LoginRequestEntity value, $Res Function(LoginRequestEntity) _then) = _$LoginRequestEntityCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginRequestEntityCopyWithImpl<$Res>
    implements $LoginRequestEntityCopyWith<$Res> {
  _$LoginRequestEntityCopyWithImpl(this._self, this._then);

  final LoginRequestEntity _self;
  final $Res Function(LoginRequestEntity) _then;

/// Create a copy of LoginRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _LoginRequestEntity implements LoginRequestEntity {
  const _LoginRequestEntity({required this.username, required this.password});
  

@override final  String username;
@override final  String password;

/// Create a copy of LoginRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestEntityCopyWith<_LoginRequestEntity> get copyWith => __$LoginRequestEntityCopyWithImpl<_LoginRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestEntity(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestEntityCopyWith<$Res> implements $LoginRequestEntityCopyWith<$Res> {
  factory _$LoginRequestEntityCopyWith(_LoginRequestEntity value, $Res Function(_LoginRequestEntity) _then) = __$LoginRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginRequestEntityCopyWithImpl<$Res>
    implements _$LoginRequestEntityCopyWith<$Res> {
  __$LoginRequestEntityCopyWithImpl(this._self, this._then);

  final _LoginRequestEntity _self;
  final $Res Function(_LoginRequestEntity) _then;

/// Create a copy of LoginRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginRequestEntity(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
