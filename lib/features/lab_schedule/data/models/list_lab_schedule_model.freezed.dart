// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_lab_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListLabScheduleModel {

@JsonKey(name: 'data', includeIfNull: false) List<LabScheduleModel>? get data;@JsonKey(name: 'meta', includeIfNull: false) MetaModel? get meta;
/// Create a copy of ListLabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListLabScheduleModelCopyWith<ListLabScheduleModel> get copyWith => _$ListLabScheduleModelCopyWithImpl<ListLabScheduleModel>(this as ListLabScheduleModel, _$identity);

  /// Serializes this ListLabScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListLabScheduleModel&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'ListLabScheduleModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListLabScheduleModelCopyWith<$Res>  {
  factory $ListLabScheduleModelCopyWith(ListLabScheduleModel value, $Res Function(ListLabScheduleModel) _then) = _$ListLabScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data', includeIfNull: false) List<LabScheduleModel>? data,@JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta
});




}
/// @nodoc
class _$ListLabScheduleModelCopyWithImpl<$Res>
    implements $ListLabScheduleModelCopyWith<$Res> {
  _$ListLabScheduleModelCopyWithImpl(this._self, this._then);

  final ListLabScheduleModel _self;
  final $Res Function(ListLabScheduleModel) _then;

/// Create a copy of ListLabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LabScheduleModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ListLabScheduleModel implements ListLabScheduleModel {
  const _ListLabScheduleModel({@JsonKey(name: 'data', includeIfNull: false) final  List<LabScheduleModel>? data, @JsonKey(name: 'meta', includeIfNull: false) this.meta}): _data = data;
  factory _ListLabScheduleModel.fromJson(Map<String, dynamic> json) => _$ListLabScheduleModelFromJson(json);

 final  List<LabScheduleModel>? _data;
@override@JsonKey(name: 'data', includeIfNull: false) List<LabScheduleModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta', includeIfNull: false) final  MetaModel? meta;

/// Create a copy of ListLabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListLabScheduleModelCopyWith<_ListLabScheduleModel> get copyWith => __$ListLabScheduleModelCopyWithImpl<_ListLabScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListLabScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListLabScheduleModel&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.meta, meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(meta));

@override
String toString() {
  return 'ListLabScheduleModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListLabScheduleModelCopyWith<$Res> implements $ListLabScheduleModelCopyWith<$Res> {
  factory _$ListLabScheduleModelCopyWith(_ListLabScheduleModel value, $Res Function(_ListLabScheduleModel) _then) = __$ListLabScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data', includeIfNull: false) List<LabScheduleModel>? data,@JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta
});




}
/// @nodoc
class __$ListLabScheduleModelCopyWithImpl<$Res>
    implements _$ListLabScheduleModelCopyWith<$Res> {
  __$ListLabScheduleModelCopyWithImpl(this._self, this._then);

  final _ListLabScheduleModel _self;
  final $Res Function(_ListLabScheduleModel) _then;

/// Create a copy of ListLabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListLabScheduleModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LabScheduleModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}


}

// dart format on
