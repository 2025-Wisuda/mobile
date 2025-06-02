// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseResponseEntity<T> {

 String? get status; String? get message; T? get data;
/// Create a copy of BaseResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseEntityCopyWith<T, BaseResponseEntity<T>> get copyWith => _$BaseResponseEntityCopyWithImpl<T, BaseResponseEntity<T>>(this as BaseResponseEntity<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponseEntity<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseEntity<$T>(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseResponseEntityCopyWith<T,$Res>  {
  factory $BaseResponseEntityCopyWith(BaseResponseEntity<T> value, $Res Function(BaseResponseEntity<T>) _then) = _$BaseResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, T? data
});




}
/// @nodoc
class _$BaseResponseEntityCopyWithImpl<T,$Res>
    implements $BaseResponseEntityCopyWith<T, $Res> {
  _$BaseResponseEntityCopyWithImpl(this._self, this._then);

  final BaseResponseEntity<T> _self;
  final $Res Function(BaseResponseEntity<T>) _then;

/// Create a copy of BaseResponseEntity
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


class _BaseResponseEntity<T> implements BaseResponseEntity<T> {
  const _BaseResponseEntity({this.status, this.message, this.data});
  

@override final  String? status;
@override final  String? message;
@override final  T? data;

/// Create a copy of BaseResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseEntityCopyWith<T, _BaseResponseEntity<T>> get copyWith => __$BaseResponseEntityCopyWithImpl<T, _BaseResponseEntity<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponseEntity<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponseEntity<$T>(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseEntityCopyWith<T,$Res> implements $BaseResponseEntityCopyWith<T, $Res> {
  factory _$BaseResponseEntityCopyWith(_BaseResponseEntity<T> value, $Res Function(_BaseResponseEntity<T>) _then) = __$BaseResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, T? data
});




}
/// @nodoc
class __$BaseResponseEntityCopyWithImpl<T,$Res>
    implements _$BaseResponseEntityCopyWith<T, $Res> {
  __$BaseResponseEntityCopyWithImpl(this._self, this._then);

  final _BaseResponseEntity<T> _self;
  final $Res Function(_BaseResponseEntity<T>) _then;

/// Create a copy of BaseResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseResponseEntity<T>(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
