// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserResponseEntity {

 String? get status; String? get message; UserEntity? get data; MetaEntity? get meta;
/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseEntityCopyWith<UserResponseEntity> get copyWith => _$UserResponseEntityCopyWithImpl<UserResponseEntity>(this as UserResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,data,meta);

@override
String toString() {
  return 'UserResponseEntity(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $UserResponseEntityCopyWith<$Res>  {
  factory $UserResponseEntityCopyWith(UserResponseEntity value, $Res Function(UserResponseEntity) _then) = _$UserResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, UserEntity? data, MetaEntity? meta
});


$UserEntityCopyWith<$Res>? get data;$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$UserResponseEntityCopyWithImpl<$Res>
    implements $UserResponseEntityCopyWith<$Res> {
  _$UserResponseEntityCopyWithImpl(this._self, this._then);

  final UserResponseEntity _self;
  final $Res Function(UserResponseEntity) _then;

/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserEntity?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaEntityCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc


class _UserResponseEntity implements UserResponseEntity {
  const _UserResponseEntity({this.status, this.message, this.data, this.meta});
  

@override final  String? status;
@override final  String? message;
@override final  UserEntity? data;
@override final  MetaEntity? meta;

/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseEntityCopyWith<_UserResponseEntity> get copyWith => __$UserResponseEntityCopyWithImpl<_UserResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,data,meta);

@override
String toString() {
  return 'UserResponseEntity(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$UserResponseEntityCopyWith<$Res> implements $UserResponseEntityCopyWith<$Res> {
  factory _$UserResponseEntityCopyWith(_UserResponseEntity value, $Res Function(_UserResponseEntity) _then) = __$UserResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, UserEntity? data, MetaEntity? meta
});


@override $UserEntityCopyWith<$Res>? get data;@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$UserResponseEntityCopyWithImpl<$Res>
    implements _$UserResponseEntityCopyWith<$Res> {
  __$UserResponseEntityCopyWithImpl(this._self, this._then);

  final _UserResponseEntity _self;
  final $Res Function(_UserResponseEntity) _then;

/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_UserResponseEntity(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserEntity?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of UserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaEntityCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
