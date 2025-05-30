// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListCourseEntity {

 List<CourseEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListCourseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCourseEntityCopyWith<ListCourseEntity> get copyWith => _$ListCourseEntityCopyWithImpl<ListCourseEntity>(this as ListCourseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCourseEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListCourseEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListCourseEntityCopyWith<$Res>  {
  factory $ListCourseEntityCopyWith(ListCourseEntity value, $Res Function(ListCourseEntity) _then) = _$ListCourseEntityCopyWithImpl;
@useResult
$Res call({
 List<CourseEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListCourseEntityCopyWithImpl<$Res>
    implements $ListCourseEntityCopyWith<$Res> {
  _$ListCourseEntityCopyWithImpl(this._self, this._then);

  final ListCourseEntity _self;
  final $Res Function(ListCourseEntity) _then;

/// Create a copy of ListCourseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CourseEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ListCourseEntity
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


class _ListCourseEntity implements ListCourseEntity {
  const _ListCourseEntity({final  List<CourseEntity>? data, this.meta}): _data = data;
  

 final  List<CourseEntity>? _data;
@override List<CourseEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListCourseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCourseEntityCopyWith<_ListCourseEntity> get copyWith => __$ListCourseEntityCopyWithImpl<_ListCourseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCourseEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListCourseEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListCourseEntityCopyWith<$Res> implements $ListCourseEntityCopyWith<$Res> {
  factory _$ListCourseEntityCopyWith(_ListCourseEntity value, $Res Function(_ListCourseEntity) _then) = __$ListCourseEntityCopyWithImpl;
@override @useResult
$Res call({
 List<CourseEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListCourseEntityCopyWithImpl<$Res>
    implements _$ListCourseEntityCopyWith<$Res> {
  __$ListCourseEntityCopyWithImpl(this._self, this._then);

  final _ListCourseEntity _self;
  final $Res Function(_ListCourseEntity) _then;

/// Create a copy of ListCourseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListCourseEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CourseEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ListCourseEntity
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
