// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListUserModel {

@JsonKey(name: 'data') List<UserModel>? get data;@JsonKey(name: 'meta') PaginationModel? get pagination;
/// Create a copy of ListUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListUserModelCopyWith<ListUserModel> get copyWith => _$ListUserModelCopyWithImpl<ListUserModel>(this as ListUserModel, _$identity);

  /// Serializes this ListUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListUserModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ListUserModel(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ListUserModelCopyWith<$Res>  {
  factory $ListUserModelCopyWith(ListUserModel value, $Res Function(ListUserModel) _then) = _$ListUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<UserModel>? data,@JsonKey(name: 'meta') PaginationModel? pagination
});


$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ListUserModelCopyWithImpl<$Res>
    implements $ListUserModelCopyWith<$Res> {
  _$ListUserModelCopyWithImpl(this._self, this._then);

  final ListUserModel _self;
  final $Res Function(ListUserModel) _then;

/// Create a copy of ListUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}
/// Create a copy of ListUserModel
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

class _ListUserModel implements ListUserModel {
  const _ListUserModel({@JsonKey(name: 'data') final  List<UserModel>? data, @JsonKey(name: 'meta') this.pagination}): _data = data;
  factory _ListUserModel.fromJson(Map<String, dynamic> json) => _$ListUserModelFromJson(json);

 final  List<UserModel>? _data;
@override@JsonKey(name: 'data') List<UserModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  PaginationModel? pagination;

/// Create a copy of ListUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListUserModelCopyWith<_ListUserModel> get copyWith => __$ListUserModelCopyWithImpl<_ListUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListUserModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ListUserModel(data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ListUserModelCopyWith<$Res> implements $ListUserModelCopyWith<$Res> {
  factory _$ListUserModelCopyWith(_ListUserModel value, $Res Function(_ListUserModel) _then) = __$ListUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<UserModel>? data,@JsonKey(name: 'meta') PaginationModel? pagination
});


@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ListUserModelCopyWithImpl<$Res>
    implements _$ListUserModelCopyWith<$Res> {
  __$ListUserModelCopyWithImpl(this._self, this._then);

  final _ListUserModel _self;
  final $Res Function(_ListUserModel) _then;

/// Create a copy of ListUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_ListUserModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}

/// Create a copy of ListUserModel
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
