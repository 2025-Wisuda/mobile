// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListUserResponseEntity {

 String? get status; String? get message; List<UserEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListUserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListUserResponseEntityCopyWith<ListUserResponseEntity> get copyWith => _$ListUserResponseEntityCopyWithImpl<ListUserResponseEntity>(this as ListUserResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListUserResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListUserResponseEntity(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListUserResponseEntityCopyWith<$Res>  {
  factory $ListUserResponseEntityCopyWith(ListUserResponseEntity value, $Res Function(ListUserResponseEntity) _then) = _$ListUserResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, List<UserEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListUserResponseEntityCopyWithImpl<$Res>
    implements $ListUserResponseEntityCopyWith<$Res> {
  _$ListUserResponseEntityCopyWithImpl(this._self, this._then);

  final ListUserResponseEntity _self;
  final $Res Function(ListUserResponseEntity) _then;

/// Create a copy of ListUserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ListUserResponseEntity
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


class _ListUserResponseEntity implements ListUserResponseEntity {
  const _ListUserResponseEntity({this.status, this.message, final  List<UserEntity>? data, this.meta}): _data = data;
  

@override final  String? status;
@override final  String? message;
 final  List<UserEntity>? _data;
@override List<UserEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListUserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListUserResponseEntityCopyWith<_ListUserResponseEntity> get copyWith => __$ListUserResponseEntityCopyWithImpl<_ListUserResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListUserResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListUserResponseEntity(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListUserResponseEntityCopyWith<$Res> implements $ListUserResponseEntityCopyWith<$Res> {
  factory _$ListUserResponseEntityCopyWith(_ListUserResponseEntity value, $Res Function(_ListUserResponseEntity) _then) = __$ListUserResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, List<UserEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListUserResponseEntityCopyWithImpl<$Res>
    implements _$ListUserResponseEntityCopyWith<$Res> {
  __$ListUserResponseEntityCopyWithImpl(this._self, this._then);

  final _ListUserResponseEntity _self;
  final $Res Function(_ListUserResponseEntity) _then;

/// Create a copy of ListUserResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListUserResponseEntity(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ListUserResponseEntity
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
