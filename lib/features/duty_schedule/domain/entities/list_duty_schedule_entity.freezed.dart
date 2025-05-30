// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_duty_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListDutyScheduleEntity {

 List<DutyScheduleEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDutyScheduleEntityCopyWith<ListDutyScheduleEntity> get copyWith => _$ListDutyScheduleEntityCopyWithImpl<ListDutyScheduleEntity>(this as ListDutyScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDutyScheduleEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListDutyScheduleEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListDutyScheduleEntityCopyWith<$Res>  {
  factory $ListDutyScheduleEntityCopyWith(ListDutyScheduleEntity value, $Res Function(ListDutyScheduleEntity) _then) = _$ListDutyScheduleEntityCopyWithImpl;
@useResult
$Res call({
 List<DutyScheduleEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListDutyScheduleEntityCopyWithImpl<$Res>
    implements $ListDutyScheduleEntityCopyWith<$Res> {
  _$ListDutyScheduleEntityCopyWithImpl(this._self, this._then);

  final ListDutyScheduleEntity _self;
  final $Res Function(ListDutyScheduleEntity) _then;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ListDutyScheduleEntity
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


class _ListDutyScheduleEntity implements ListDutyScheduleEntity {
  const _ListDutyScheduleEntity({required final  List<DutyScheduleEntity>? data, required this.meta}): _data = data;
  

 final  List<DutyScheduleEntity>? _data;
@override List<DutyScheduleEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDutyScheduleEntityCopyWith<_ListDutyScheduleEntity> get copyWith => __$ListDutyScheduleEntityCopyWithImpl<_ListDutyScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListDutyScheduleEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListDutyScheduleEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListDutyScheduleEntityCopyWith<$Res> implements $ListDutyScheduleEntityCopyWith<$Res> {
  factory _$ListDutyScheduleEntityCopyWith(_ListDutyScheduleEntity value, $Res Function(_ListDutyScheduleEntity) _then) = __$ListDutyScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 List<DutyScheduleEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListDutyScheduleEntityCopyWithImpl<$Res>
    implements _$ListDutyScheduleEntityCopyWith<$Res> {
  __$ListDutyScheduleEntityCopyWithImpl(this._self, this._then);

  final _ListDutyScheduleEntity _self;
  final $Res Function(_ListDutyScheduleEntity) _then;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListDutyScheduleEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ListDutyScheduleEntity
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
