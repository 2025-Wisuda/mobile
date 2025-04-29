// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefreshTokenResponseEntity {

 String? get accessToken;
/// Create a copy of RefreshTokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenResponseEntityCopyWith<RefreshTokenResponseEntity> get copyWith => _$RefreshTokenResponseEntityCopyWithImpl<RefreshTokenResponseEntity>(this as RefreshTokenResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenResponseEntity&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'RefreshTokenResponseEntity(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenResponseEntityCopyWith<$Res>  {
  factory $RefreshTokenResponseEntityCopyWith(RefreshTokenResponseEntity value, $Res Function(RefreshTokenResponseEntity) _then) = _$RefreshTokenResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? accessToken
});




}
/// @nodoc
class _$RefreshTokenResponseEntityCopyWithImpl<$Res>
    implements $RefreshTokenResponseEntityCopyWith<$Res> {
  _$RefreshTokenResponseEntityCopyWithImpl(this._self, this._then);

  final RefreshTokenResponseEntity _self;
  final $Res Function(RefreshTokenResponseEntity) _then;

/// Create a copy of RefreshTokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _RefreshTokenResponseEntity implements RefreshTokenResponseEntity {
  const _RefreshTokenResponseEntity({required this.accessToken});
  

@override final  String? accessToken;

/// Create a copy of RefreshTokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenResponseEntityCopyWith<_RefreshTokenResponseEntity> get copyWith => __$RefreshTokenResponseEntityCopyWithImpl<_RefreshTokenResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenResponseEntity&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'RefreshTokenResponseEntity(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenResponseEntityCopyWith<$Res> implements $RefreshTokenResponseEntityCopyWith<$Res> {
  factory _$RefreshTokenResponseEntityCopyWith(_RefreshTokenResponseEntity value, $Res Function(_RefreshTokenResponseEntity) _then) = __$RefreshTokenResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? accessToken
});




}
/// @nodoc
class __$RefreshTokenResponseEntityCopyWithImpl<$Res>
    implements _$RefreshTokenResponseEntityCopyWith<$Res> {
  __$RefreshTokenResponseEntityCopyWithImpl(this._self, this._then);

  final _RefreshTokenResponseEntity _self;
  final $Res Function(_RefreshTokenResponseEntity) _then;

/// Create a copy of RefreshTokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,}) {
  return _then(_RefreshTokenResponseEntity(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
