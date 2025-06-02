// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListUserResponseModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') List<UserModel>? get data;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of ListUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListUserResponseModelCopyWith<ListUserResponseModel> get copyWith => _$ListUserResponseModelCopyWithImpl<ListUserResponseModel>(this as ListUserResponseModel, _$identity);

  /// Serializes this ListUserResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListUserResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ListUserResponseModel(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ListUserResponseModelCopyWith<$Res>  {
  factory $ListUserResponseModelCopyWith(ListUserResponseModel value, $Res Function(ListUserResponseModel) _then) = _$ListUserResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<UserModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ListUserResponseModelCopyWithImpl<$Res>
    implements $ListUserResponseModelCopyWith<$Res> {
  _$ListUserResponseModelCopyWithImpl(this._self, this._then);

  final ListUserResponseModel _self;
  final $Res Function(ListUserResponseModel) _then;

/// Create a copy of ListUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ListUserResponseModel
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

class _ListUserResponseModel implements ListUserResponseModel {
  const _ListUserResponseModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') final  List<UserModel>? data, @JsonKey(name: 'meta') this.meta}): _data = data;
  factory _ListUserResponseModel.fromJson(Map<String, dynamic> json) => _$ListUserResponseModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'message') final  String? message;
 final  List<UserModel>? _data;
@override@JsonKey(name: 'data') List<UserModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of ListUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListUserResponseModelCopyWith<_ListUserResponseModel> get copyWith => __$ListUserResponseModelCopyWithImpl<_ListUserResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListUserResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListUserResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ListUserResponseModel(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ListUserResponseModelCopyWith<$Res> implements $ListUserResponseModelCopyWith<$Res> {
  factory _$ListUserResponseModelCopyWith(_ListUserResponseModel value, $Res Function(_ListUserResponseModel) _then) = __$ListUserResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<UserModel>? data,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ListUserResponseModelCopyWithImpl<$Res>
    implements _$ListUserResponseModelCopyWith<$Res> {
  __$ListUserResponseModelCopyWithImpl(this._self, this._then);

  final _ListUserResponseModel _self;
  final $Res Function(_ListUserResponseModel) _then;

/// Create a copy of ListUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ListUserResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ListUserResponseModel
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
