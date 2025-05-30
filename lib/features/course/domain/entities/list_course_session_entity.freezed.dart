// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_course_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListCourseSessionEntity {

 List<CourseSessionEntity>? get data; MetaEntity? get meta;
/// Create a copy of ListCourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCourseSessionEntityCopyWith<ListCourseSessionEntity> get copyWith => _$ListCourseSessionEntityCopyWithImpl<ListCourseSessionEntity>(this as ListCourseSessionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCourseSessionEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListCourseSessionEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListCourseSessionEntityCopyWith<$Res>  {
  factory $ListCourseSessionEntityCopyWith(ListCourseSessionEntity value, $Res Function(ListCourseSessionEntity) _then) = _$ListCourseSessionEntityCopyWithImpl;
@useResult
$Res call({
 List<CourseSessionEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListCourseSessionEntityCopyWithImpl<$Res>
    implements $ListCourseSessionEntityCopyWith<$Res> {
  _$ListCourseSessionEntityCopyWithImpl(this._self, this._then);

  final ListCourseSessionEntity _self;
  final $Res Function(ListCourseSessionEntity) _then;

/// Create a copy of ListCourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CourseSessionEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ListCourseSessionEntity
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


class _ListCourseSessionEntity implements ListCourseSessionEntity {
  const _ListCourseSessionEntity({final  List<CourseSessionEntity>? data, this.meta}): _data = data;
  

 final  List<CourseSessionEntity>? _data;
@override List<CourseSessionEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ListCourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCourseSessionEntityCopyWith<_ListCourseSessionEntity> get copyWith => __$ListCourseSessionEntityCopyWithImpl<_ListCourseSessionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCourseSessionEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListCourseSessionEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListCourseSessionEntityCopyWith<$Res> implements $ListCourseSessionEntityCopyWith<$Res> {
  factory _$ListCourseSessionEntityCopyWith(_ListCourseSessionEntity value, $Res Function(_ListCourseSessionEntity) _then) = __$ListCourseSessionEntityCopyWithImpl;
@override @useResult
$Res call({
 List<CourseSessionEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListCourseSessionEntityCopyWithImpl<$Res>
    implements _$ListCourseSessionEntityCopyWith<$Res> {
  __$ListCourseSessionEntityCopyWithImpl(this._self, this._then);

  final _ListCourseSessionEntity _self;
  final $Res Function(_ListCourseSessionEntity) _then;

/// Create a copy of ListCourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListCourseSessionEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CourseSessionEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ListCourseSessionEntity
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
