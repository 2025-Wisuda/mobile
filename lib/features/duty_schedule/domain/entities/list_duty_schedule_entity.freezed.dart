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

 List<DutyScheduleEntity>? get data; PaginationEntity? get pagination;
/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDutyScheduleEntityCopyWith<ListDutyScheduleEntity> get copyWith => _$ListDutyScheduleEntityCopyWithImpl<ListDutyScheduleEntity>(this as ListDutyScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDutyScheduleEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ListDutyScheduleEntity(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ListDutyScheduleEntityCopyWith<$Res>  {
  factory $ListDutyScheduleEntityCopyWith(ListDutyScheduleEntity value, $Res Function(ListDutyScheduleEntity) _then) = _$ListDutyScheduleEntityCopyWithImpl;
@useResult
$Res call({
 List<DutyScheduleEntity>? data, PaginationEntity? pagination
});


$PaginationEntityCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ListDutyScheduleEntityCopyWithImpl<$Res>
    implements $ListDutyScheduleEntityCopyWith<$Res> {
  _$ListDutyScheduleEntityCopyWithImpl(this._self, this._then);

  final ListDutyScheduleEntity _self;
  final $Res Function(ListDutyScheduleEntity) _then;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleEntity>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationEntity?,
  ));
}
/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationEntityCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationEntityCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc


class _ListDutyScheduleEntity implements ListDutyScheduleEntity {
  const _ListDutyScheduleEntity({required final  List<DutyScheduleEntity>? data, required this.pagination}): _data = data;
  

 final  List<DutyScheduleEntity>? _data;
@override List<DutyScheduleEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PaginationEntity? pagination;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDutyScheduleEntityCopyWith<_ListDutyScheduleEntity> get copyWith => __$ListDutyScheduleEntityCopyWithImpl<_ListDutyScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListDutyScheduleEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ListDutyScheduleEntity(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ListDutyScheduleEntityCopyWith<$Res> implements $ListDutyScheduleEntityCopyWith<$Res> {
  factory _$ListDutyScheduleEntityCopyWith(_ListDutyScheduleEntity value, $Res Function(_ListDutyScheduleEntity) _then) = __$ListDutyScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 List<DutyScheduleEntity>? data, PaginationEntity? pagination
});


@override $PaginationEntityCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ListDutyScheduleEntityCopyWithImpl<$Res>
    implements _$ListDutyScheduleEntityCopyWith<$Res> {
  __$ListDutyScheduleEntityCopyWithImpl(this._self, this._then);

  final _ListDutyScheduleEntity _self;
  final $Res Function(_ListDutyScheduleEntity) _then;

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_ListDutyScheduleEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleEntity>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationEntity?,
  ));
}

/// Create a copy of ListDutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationEntityCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationEntityCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
