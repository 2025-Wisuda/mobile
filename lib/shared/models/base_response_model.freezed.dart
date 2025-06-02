// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponseModel<T> {

 String? get status; String? get message; T? get data;
/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith => _$BaseResponseModelCopyWithImpl<T, BaseResponseModel<T>>(this as BaseResponseModel<T>, _$identity);

  /// Serializes this BaseResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseModel<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseModel<$T>(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseResponseModelCopyWith<T,$Res>  {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value, $Res Function(BaseResponseModel<T>) _then) = _$BaseResponseModelCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, T? data
});




}
/// @nodoc
class _$BaseResponseModelCopyWithImpl<T,$Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._self, this._then);

  final BaseResponseModel<T> _self;
  final $Res Function(BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseResponseModel<T> implements BaseResponseModel<T> {
  const _BaseResponseModel({this.status, this.message, this.data});
  factory _BaseResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseResponseModelFromJson(json,fromJsonT);

@override final  String? status;
@override final  String? message;
@override final  T? data;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseModelCopyWith<T, _BaseResponseModel<T>> get copyWith => __$BaseResponseModelCopyWithImpl<T, _BaseResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseModel<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseModel<$T>(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseModelCopyWith<T,$Res> implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$BaseResponseModelCopyWith(_BaseResponseModel<T> value, $Res Function(_BaseResponseModel<T>) _then) = __$BaseResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, T? data
});




}
/// @nodoc
class __$BaseResponseModelCopyWithImpl<T,$Res>
    implements _$BaseResponseModelCopyWith<T, $Res> {
  __$BaseResponseModelCopyWithImpl(this._self, this._then);

  final _BaseResponseModel<T> _self;
  final $Res Function(_BaseResponseModel<T>) _then;

/// Create a copy of BaseResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseResponseModel<T>(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
