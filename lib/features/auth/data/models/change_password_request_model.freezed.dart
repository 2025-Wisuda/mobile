// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordRequestModel {

@JsonKey(name: 'old_password') String get oldPassword;@JsonKey(name: 'new_password') String get newPassword;
/// Create a copy of ChangePasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordRequestModelCopyWith<ChangePasswordRequestModel> get copyWith => _$ChangePasswordRequestModelCopyWithImpl<ChangePasswordRequestModel>(this as ChangePasswordRequestModel, _$identity);

  /// Serializes this ChangePasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordRequestModel&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangePasswordRequestModel(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordRequestModelCopyWith<$Res>  {
  factory $ChangePasswordRequestModelCopyWith(ChangePasswordRequestModel value, $Res Function(ChangePasswordRequestModel) _then) = _$ChangePasswordRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'old_password') String oldPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class _$ChangePasswordRequestModelCopyWithImpl<$Res>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  _$ChangePasswordRequestModelCopyWithImpl(this._self, this._then);

  final ChangePasswordRequestModel _self;
  final $Res Function(ChangePasswordRequestModel) _then;

/// Create a copy of ChangePasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChangePasswordRequestModel implements ChangePasswordRequestModel {
  const _ChangePasswordRequestModel({@JsonKey(name: 'old_password') required this.oldPassword, @JsonKey(name: 'new_password') required this.newPassword});
  factory _ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestModelFromJson(json);

@override@JsonKey(name: 'old_password') final  String oldPassword;
@override@JsonKey(name: 'new_password') final  String newPassword;

/// Create a copy of ChangePasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordRequestModelCopyWith<_ChangePasswordRequestModel> get copyWith => __$ChangePasswordRequestModelCopyWithImpl<_ChangePasswordRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordRequestModel&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPassword,newPassword);

@override
String toString() {
  return 'ChangePasswordRequestModel(oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordRequestModelCopyWith<$Res> implements $ChangePasswordRequestModelCopyWith<$Res> {
  factory _$ChangePasswordRequestModelCopyWith(_ChangePasswordRequestModel value, $Res Function(_ChangePasswordRequestModel) _then) = __$ChangePasswordRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'old_password') String oldPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class __$ChangePasswordRequestModelCopyWithImpl<$Res>
    implements _$ChangePasswordRequestModelCopyWith<$Res> {
  __$ChangePasswordRequestModelCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequestModel _self;
  final $Res Function(_ChangePasswordRequestModel) _then;

/// Create a copy of ChangePasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_ChangePasswordRequestModel(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
