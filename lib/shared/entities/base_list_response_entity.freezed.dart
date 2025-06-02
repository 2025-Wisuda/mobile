// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseListResponseEntity<T> {

 String? get status; String? get message; List<T>? get data; MetaEntity? get meta;
/// Create a copy of BaseListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListResponseEntityCopyWith<T, BaseListResponseEntity<T>> get copyWith => _$BaseListResponseEntityCopyWithImpl<T, BaseListResponseEntity<T>>(this as BaseListResponseEntity<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListResponseEntity<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'BaseListResponseEntity<$T>(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BaseListResponseEntityCopyWith<T,$Res>  {
  factory $BaseListResponseEntityCopyWith(BaseListResponseEntity<T> value, $Res Function(BaseListResponseEntity<T>) _then) = _$BaseListResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? status, String? message, List<T>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$BaseListResponseEntityCopyWithImpl<T,$Res>
    implements $BaseListResponseEntityCopyWith<T, $Res> {
  _$BaseListResponseEntityCopyWithImpl(this._self, this._then);

  final BaseListResponseEntity<T> _self;
  final $Res Function(BaseListResponseEntity<T>) _then;

/// Create a copy of BaseListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of BaseListResponseEntity
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


class _BaseListResponseEntity<T> implements BaseListResponseEntity<T> {
  const _BaseListResponseEntity({this.status, this.message, final  List<T>? data, this.meta}): _data = data;
  

@override final  String? status;
@override final  String? message;
 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of BaseListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseListResponseEntityCopyWith<T, _BaseListResponseEntity<T>> get copyWith => __$BaseListResponseEntityCopyWithImpl<T, _BaseListResponseEntity<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseListResponseEntity<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'BaseListResponseEntity<$T>(status: $status, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BaseListResponseEntityCopyWith<T,$Res> implements $BaseListResponseEntityCopyWith<T, $Res> {
  factory _$BaseListResponseEntityCopyWith(_BaseListResponseEntity<T> value, $Res Function(_BaseListResponseEntity<T>) _then) = __$BaseListResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? status, String? message, List<T>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$BaseListResponseEntityCopyWithImpl<T,$Res>
    implements _$BaseListResponseEntityCopyWith<T, $Res> {
  __$BaseListResponseEntityCopyWithImpl(this._self, this._then);

  final _BaseListResponseEntity<T> _self;
  final $Res Function(_BaseListResponseEntity<T>) _then;

/// Create a copy of BaseListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_BaseListResponseEntity<T>(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of BaseListResponseEntity
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
