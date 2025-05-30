// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListCourseModel {

@JsonKey(name: 'data') List<CourseModel>? get data;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of ListCourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListCourseModelCopyWith<ListCourseModel> get copyWith => _$ListCourseModelCopyWithImpl<ListCourseModel>(this as ListCourseModel, _$identity);

  /// Serializes this ListCourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListCourseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListCourseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListCourseModelCopyWith<$Res>  {
  factory $ListCourseModelCopyWith(ListCourseModel value, $Res Function(ListCourseModel) _then) = _$ListCourseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<CourseModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListCourseModelCopyWithImpl<$Res>
    implements $ListCourseModelCopyWith<$Res> {
  _$ListCourseModelCopyWithImpl(this._self, this._then);

  final ListCourseModel _self;
  final $Res Function(ListCourseModel) _then;

/// Create a copy of ListCourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CourseModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ListCourseModel
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

class _ListCourseModel implements ListCourseModel {
  const _ListCourseModel({@JsonKey(name: 'data') final  List<CourseModel>? data, @JsonKey(name: 'meta') this.meta}): _data = data;
  factory _ListCourseModel.fromJson(Map<String, dynamic> json) => _$ListCourseModelFromJson(json);

 final  List<CourseModel>? _data;
@override@JsonKey(name: 'data') List<CourseModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of ListCourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListCourseModelCopyWith<_ListCourseModel> get copyWith => __$ListCourseModelCopyWithImpl<_ListCourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListCourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListCourseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListCourseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListCourseModelCopyWith<$Res> implements $ListCourseModelCopyWith<$Res> {
  factory _$ListCourseModelCopyWith(_ListCourseModel value, $Res Function(_ListCourseModel) _then) = __$ListCourseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<CourseModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListCourseModelCopyWithImpl<$Res>
    implements _$ListCourseModelCopyWith<$Res> {
  __$ListCourseModelCopyWithImpl(this._self, this._then);

  final _ListCourseModel _self;
  final $Res Function(_ListCourseModel) _then;

/// Create a copy of ListCourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListCourseModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CourseModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ListCourseModel
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
