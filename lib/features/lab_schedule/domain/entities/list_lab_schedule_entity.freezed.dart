// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_lab_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListLabScheduleEntity {

 List<LabScheduleEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListLabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListLabScheduleEntityCopyWith<ListLabScheduleEntity> get copyWith => _$ListLabScheduleEntityCopyWithImpl<ListLabScheduleEntity>(this as ListLabScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListLabScheduleEntity&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.meta, meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'ListLabScheduleEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListLabScheduleEntityCopyWith<$Res>  {
  factory $ListLabScheduleEntityCopyWith(ListLabScheduleEntity value, $Res Function(ListLabScheduleEntity) _then) = _$ListLabScheduleEntityCopyWithImpl;
@useResult
$Res call({
 List<LabScheduleEntity>? data, MetaEntity? meta
});




}
/// @nodoc
class _$ListLabScheduleEntityCopyWithImpl<$Res>
    implements $ListLabScheduleEntityCopyWith<$Res> {
  _$ListLabScheduleEntityCopyWithImpl(this._self, this._then);

  final ListLabScheduleEntity _self;
  final $Res Function(ListLabScheduleEntity) _then;

/// Create a copy of ListLabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LabScheduleEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

}


/// @nodoc


class _ListLabScheduleEntity implements ListLabScheduleEntity {
  const _ListLabScheduleEntity({required final  List<LabScheduleEntity>? data, required this.meta}): _data = data;
  

 final  List<LabScheduleEntity>? _data;
@override List<LabScheduleEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListLabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListLabScheduleEntityCopyWith<_ListLabScheduleEntity> get copyWith => __$ListLabScheduleEntityCopyWithImpl<_ListLabScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListLabScheduleEntity&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.meta, meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'ListLabScheduleEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListLabScheduleEntityCopyWith<$Res> implements $ListLabScheduleEntityCopyWith<$Res> {
  factory _$ListLabScheduleEntityCopyWith(_ListLabScheduleEntity value, $Res Function(_ListLabScheduleEntity) _then) = __$ListLabScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 List<LabScheduleEntity>? data, MetaEntity? meta
});




}
/// @nodoc
class __$ListLabScheduleEntityCopyWithImpl<$Res>
    implements _$ListLabScheduleEntityCopyWith<$Res> {
  __$ListLabScheduleEntityCopyWithImpl(this._self, this._then);

  final _ListLabScheduleEntity _self;
  final $Res Function(_ListLabScheduleEntity) _then;

/// Create a copy of ListLabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListLabScheduleEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LabScheduleEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}


}

// dart format on
