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

@JsonKey(name: 'data') List<DutyScheduleModel>? get data;@JsonKey(name: 'meta') PaginationModel? get pagination;
/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDutyScheduleModelCopyWith<ListDutyScheduleModel> get copyWith => _$ListDutyScheduleModelCopyWithImpl<ListDutyScheduleModel>(this as ListDutyScheduleModel, _$identity);

  /// Serializes this ListDutyScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDutyScheduleModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ListDutyScheduleModel(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ListDutyScheduleModelCopyWith<$Res>  {
  factory $ListDutyScheduleModelCopyWith(ListDutyScheduleModel value, $Res Function(ListDutyScheduleModel) _then) = _$ListDutyScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<DutyScheduleModel>? data,@JsonKey(name: 'meta') PaginationModel? pagination
});


$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ListDutyScheduleModelCopyWithImpl<$Res>
    implements $ListDutyScheduleModelCopyWith<$Res> {
  _$ListDutyScheduleModelCopyWithImpl(this._self, this._then);

  final ListDutyScheduleModel _self;
  final $Res Function(ListDutyScheduleModel) _then;

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}
/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ListDutyScheduleModel implements ListDutyScheduleModel {
  const _ListDutyScheduleModel({@JsonKey(name: 'data') final  List<DutyScheduleModel>? data, @JsonKey(name: 'meta') this.pagination}): _data = data;
  factory _ListDutyScheduleModel.fromJson(Map<String, dynamic> json) => _$ListDutyScheduleModelFromJson(json);

 final  List<DutyScheduleModel>? _data;
@override@JsonKey(name: 'data') List<DutyScheduleModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  PaginationModel? pagination;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListDutyScheduleModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ListDutyScheduleModel(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ListDutyScheduleModelCopyWith<$Res> implements $ListDutyScheduleModelCopyWith<$Res> {
  factory _$ListDutyScheduleModelCopyWith(_ListDutyScheduleModel value, $Res Function(_ListDutyScheduleModel) _then) = __$ListDutyScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<DutyScheduleModel>? data,@JsonKey(name: 'meta') PaginationModel? pagination
});


@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ListDutyScheduleModelCopyWithImpl<$Res>
    implements _$ListDutyScheduleModelCopyWith<$Res> {
  __$ListDutyScheduleModelCopyWithImpl(this._self, this._then);

  final _ListDutyScheduleModel _self;
  final $Res Function(_ListDutyScheduleModel) _then;

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_ListDutyScheduleModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DutyScheduleModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}

/// Create a copy of ListDutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
