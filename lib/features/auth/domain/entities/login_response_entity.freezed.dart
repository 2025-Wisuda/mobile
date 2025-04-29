// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginResponseEntity {

 String? get refreshToken; String? get accessToken;
/// Create a copy of LoginResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith => _$LoginResponseEntityCopyWithImpl<LoginResponseEntity>(this as LoginResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseEntity&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,refreshToken,accessToken);

@override
String toString() {
  return 'LoginResponseEntity(refreshToken: $refreshToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $LoginResponseEntityCopyWith<$Res>  {
  factory $LoginResponseEntityCopyWith(LoginResponseEntity value, $Res Function(LoginResponseEntity) _then) = _$LoginResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? refreshToken, String? accessToken
});




}
/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._self, this._then);

  final LoginResponseEntity _self;
  final $Res Function(LoginResponseEntity) _then;

/// Create a copy of LoginResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshToken = freezed,Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _LoginResponseEntity implements LoginResponseEntity {
  const _LoginResponseEntity({required this.refreshToken, required this.accessToken});
  

@override final  String? refreshToken;
@override final  String? accessToken;

/// Create a copy of LoginResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseEntityCopyWith<_LoginResponseEntity> get copyWith => __$LoginResponseEntityCopyWithImpl<_LoginResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseEntity&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,refreshToken,accessToken);

@override
String toString() {
  return 'LoginResponseEntity(refreshToken: $refreshToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseEntityCopyWith<$Res> implements $LoginResponseEntityCopyWith<$Res> {
  factory _$LoginResponseEntityCopyWith(_LoginResponseEntity value, $Res Function(_LoginResponseEntity) _then) = __$LoginResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? refreshToken, String? accessToken
});




}
/// @nodoc
class __$LoginResponseEntityCopyWithImpl<$Res>
    implements _$LoginResponseEntityCopyWith<$Res> {
  __$LoginResponseEntityCopyWithImpl(this._self, this._then);

  final _LoginResponseEntity _self;
  final $Res Function(_LoginResponseEntity) _then;

/// Create a copy of LoginResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshToken = freezed,Object? accessToken = freezed,}) {
  return _then(_LoginResponseEntity(
refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
