// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_duty_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListDutyScheduleModel {

@JsonKey(name: 'data', includeIfNull: false) List<DutyScheduleModel>? get data;@JsonKey(name: 'meta', includeIfNull: false) MetaModel? get meta;
/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDutyScheduleModelCopyWith<ListDutyScheduleModel> get copyWith => _$ListDutyScheduleModelCopyWithImpl<ListDutyScheduleModel>(this as ListDutyScheduleModel, _$identity);

  /// Serializes this ListDutyScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDutyScheduleModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListDutyScheduleModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListDutyScheduleModelCopyWith<$Res>  {
  factory $ListDutyScheduleModelCopyWith(ListDutyScheduleModel value, $Res Function(ListDutyScheduleModel) _then) = _$ListDutyScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data', includeIfNull: false) List<DutyScheduleModel>? data,@JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListDutyScheduleModelCopyWithImpl<$Res>
    implements $ListDutyScheduleModelCopyWith<$Res> {
  _$ListDutyScheduleModelCopyWithImpl(this._self, this._then);

  final ListDutyScheduleModel _self;
  final $Res Function(ListDutyScheduleModel) _then;

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ListDutyScheduleModel
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

class _ListDutyScheduleModel implements ListDutyScheduleModel {
  const _ListDutyScheduleModel({@JsonKey(name: 'data', includeIfNull: false) final  List<DutyScheduleModel>? data, @JsonKey(name: 'meta', includeIfNull: false) this.meta}): _data = data;
  factory _ListDutyScheduleModel.fromJson(Map<String, dynamic> json) => _$ListDutyScheduleModelFromJson(json);

 final  List<DutyScheduleModel>? _data;
@override@JsonKey(name: 'data', includeIfNull: false) List<DutyScheduleModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta', includeIfNull: false) final  MetaModel? meta;

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListDutyScheduleModelCopyWith<_ListDutyScheduleModel> get copyWith => __$ListDutyScheduleModelCopyWithImpl<_ListDutyScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListDutyScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListDutyScheduleModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListDutyScheduleModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListDutyScheduleModelCopyWith<$Res> implements $ListDutyScheduleModelCopyWith<$Res> {
  factory _$ListDutyScheduleModelCopyWith(_ListDutyScheduleModel value, $Res Function(_ListDutyScheduleModel) _then) = __$ListDutyScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data', includeIfNull: false) List<DutyScheduleModel>? data,@JsonKey(name: 'meta', includeIfNull: false) MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListDutyScheduleModelCopyWithImpl<$Res>
    implements _$ListDutyScheduleModelCopyWith<$Res> {
  __$ListDutyScheduleModelCopyWithImpl(this._self, this._then);

  final _ListDutyScheduleModel _self;
  final $Res Function(_ListDutyScheduleModel) _then;

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListDutyScheduleModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ListDutyScheduleModel
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
