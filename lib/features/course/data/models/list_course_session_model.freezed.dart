// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_course_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListCourseSessionModel {

@JsonKey(name: 'data') List<CourseSessionModel>? get data;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCourseSessionModelCopyWith<ListCourseSessionModel> get copyWith => _$ListCourseSessionModelCopyWithImpl<ListCourseSessionModel>(this as ListCourseSessionModel, _$identity);

  /// Serializes this ListCourseSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCourseSessionModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListCourseSessionModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListCourseSessionModelCopyWith<$Res>  {
  factory $ListCourseSessionModelCopyWith(ListCourseSessionModel value, $Res Function(ListCourseSessionModel) _then) = _$ListCourseSessionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<CourseSessionModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListCourseSessionModelCopyWithImpl<$Res>
    implements $ListCourseSessionModelCopyWith<$Res> {
  _$ListCourseSessionModelCopyWithImpl(this._self, this._then);

  final ListCourseSessionModel _self;
  final $Res Function(ListCourseSessionModel) _then;

/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CourseSessionModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ListCourseSessionModel implements ListCourseSessionModel {
  const _ListCourseSessionModel({@JsonKey(name: 'data') final  List<CourseSessionModel>? data, @JsonKey(name: 'meta') this.meta}): _data = data;
  factory _ListCourseSessionModel.fromJson(Map<String, dynamic> json) => _$ListCourseSessionModelFromJson(json);

 final  List<CourseSessionModel>? _data;
@override@JsonKey(name: 'data') List<CourseSessionModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCourseSessionModelCopyWith<_ListCourseSessionModel> get copyWith => __$ListCourseSessionModelCopyWithImpl<_ListCourseSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListCourseSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCourseSessionModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListCourseSessionModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListCourseSessionModelCopyWith<$Res> implements $ListCourseSessionModelCopyWith<$Res> {
  factory _$ListCourseSessionModelCopyWith(_ListCourseSessionModel value, $Res Function(_ListCourseSessionModel) _then) = __$ListCourseSessionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<CourseSessionModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListCourseSessionModelCopyWithImpl<$Res>
    implements _$ListCourseSessionModelCopyWith<$Res> {
  __$ListCourseSessionModelCopyWithImpl(this._self, this._then);

  final _ListCourseSessionModel _self;
  final $Res Function(_ListCourseSessionModel) _then;

/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListCourseSessionModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CourseSessionModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ListCourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
