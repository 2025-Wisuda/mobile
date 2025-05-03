// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserProfileRequestModel {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'employee_id') String? get employeeId;@JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson) File? get faceImage;@JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson) File? get avatar;@JsonKey(name: 'email') String? get email;
/// Create a copy of UpdateUserProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileRequestModelCopyWith<UpdateUserProfileRequestModel> get copyWith => _$UpdateUserProfileRequestModelCopyWithImpl<UpdateUserProfileRequestModel>(this as UpdateUserProfileRequestModel, _$identity);

  /// Serializes this UpdateUserProfileRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfileRequestModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,employeeId,faceImage,avatar,email);

@override
String toString() {
  return 'UpdateUserProfileRequestModel(studentId: $studentId, employeeId: $employeeId, faceImage: $faceImage, avatar: $avatar, email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileRequestModelCopyWith<$Res>  {
  factory $UpdateUserProfileRequestModelCopyWith(UpdateUserProfileRequestModel value, $Res Function(UpdateUserProfileRequestModel) _then) = _$UpdateUserProfileRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson) File? faceImage,@JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson) File? avatar,@JsonKey(name: 'email') String? email
});




}
/// @nodoc
class _$UpdateUserProfileRequestModelCopyWithImpl<$Res>
    implements $UpdateUserProfileRequestModelCopyWith<$Res> {
  _$UpdateUserProfileRequestModelCopyWithImpl(this._self, this._then);

  final UpdateUserProfileRequestModel _self;
  final $Res Function(UpdateUserProfileRequestModel) _then;

/// Create a copy of UpdateUserProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? employeeId = freezed,Object? faceImage = freezed,Object? avatar = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as File?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateUserProfileRequestModel implements UpdateUserProfileRequestModel {
  const _UpdateUserProfileRequestModel({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'employee_id') this.employeeId, @JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson) this.faceImage, @JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson) this.avatar, @JsonKey(name: 'email') this.email});
  factory _UpdateUserProfileRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateUserProfileRequestModelFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
@override@JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson) final  File? faceImage;
@override@JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson) final  File? avatar;
@override@JsonKey(name: 'email') final  String? email;

/// Create a copy of UpdateUserProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserProfileRequestModelCopyWith<_UpdateUserProfileRequestModel> get copyWith => __$UpdateUserProfileRequestModelCopyWithImpl<_UpdateUserProfileRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserProfileRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserProfileRequestModel&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.faceImage, faceImage) || other.faceImage == faceImage)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,employeeId,faceImage,avatar,email);

@override
String toString() {
  return 'UpdateUserProfileRequestModel(studentId: $studentId, employeeId: $employeeId, faceImage: $faceImage, avatar: $avatar, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserProfileRequestModelCopyWith<$Res> implements $UpdateUserProfileRequestModelCopyWith<$Res> {
  factory _$UpdateUserProfileRequestModelCopyWith(_UpdateUserProfileRequestModel value, $Res Function(_UpdateUserProfileRequestModel) _then) = __$UpdateUserProfileRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'face_image', fromJson: _fileFromJson, toJson: _fileToJson) File? faceImage,@JsonKey(name: 'avatar', fromJson: _fileFromJson, toJson: _fileToJson) File? avatar,@JsonKey(name: 'email') String? email
});




}
/// @nodoc
class __$UpdateUserProfileRequestModelCopyWithImpl<$Res>
    implements _$UpdateUserProfileRequestModelCopyWith<$Res> {
  __$UpdateUserProfileRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileRequestModel _self;
  final $Res Function(_UpdateUserProfileRequestModel) _then;

/// Create a copy of UpdateUserProfileRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? employeeId = freezed,Object? faceImage = freezed,Object? avatar = freezed,Object? email = freezed,}) {
  return _then(_UpdateUserProfileRequestModel(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,faceImage: freezed == faceImage ? _self.faceImage : faceImage // ignore: cast_nullable_to_non_nullable
as File?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
