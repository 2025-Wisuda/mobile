// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListUserEntity {

 List<UserEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListUserEntityCopyWith<ListUserEntity> get copyWith => _$ListUserEntityCopyWithImpl<ListUserEntity>(this as ListUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListUserEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListUserEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListUserEntityCopyWith<$Res>  {
  factory $ListUserEntityCopyWith(ListUserEntity value, $Res Function(ListUserEntity) _then) = _$ListUserEntityCopyWithImpl;
@useResult
$Res call({
 List<UserEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListUserEntityCopyWithImpl<$Res>
    implements $ListUserEntityCopyWith<$Res> {
  _$ListUserEntityCopyWithImpl(this._self, this._then);

  final ListUserEntity _self;
  final $Res Function(ListUserEntity) _then;

/// Create a copy of ListUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ListUserEntity
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


class _ListUserEntity implements ListUserEntity {
  const _ListUserEntity({required final  List<UserEntity>? data, required this.meta}): _data = data;
  

 final  List<UserEntity>? _data;
@override List<UserEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListUserEntityCopyWith<_ListUserEntity> get copyWith => __$ListUserEntityCopyWithImpl<_ListUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListUserEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListUserEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListUserEntityCopyWith<$Res> implements $ListUserEntityCopyWith<$Res> {
  factory _$ListUserEntityCopyWith(_ListUserEntity value, $Res Function(_ListUserEntity) _then) = __$ListUserEntityCopyWithImpl;
@override @useResult
$Res call({
 List<UserEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListUserEntityCopyWithImpl<$Res>
    implements _$ListUserEntityCopyWith<$Res> {
  __$ListUserEntityCopyWithImpl(this._self, this._then);

  final _ListUserEntity _self;
  final $Res Function(_ListUserEntity) _then;

/// Create a copy of ListUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListUserEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ListUserEntity
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
