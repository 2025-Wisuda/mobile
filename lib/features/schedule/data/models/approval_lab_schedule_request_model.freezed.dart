// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_lab_schedule_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApprovalLabScheduleRequestModel {

@JsonKey(name: 'approval_status', includeIfNull: false) String? get approvalStatus;@JsonKey(name: 'approved_by', includeIfNull: false) String? get approvedBy;@JsonKey(name: 'approval_time', includeIfNull: false) DateTime? get approvalTime;
/// Create a copy of ApprovalLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApprovalLabScheduleRequestModelCopyWith<ApprovalLabScheduleRequestModel> get copyWith => _$ApprovalLabScheduleRequestModelCopyWithImpl<ApprovalLabScheduleRequestModel>(this as ApprovalLabScheduleRequestModel, _$identity);

  /// Serializes this ApprovalLabScheduleRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApprovalLabScheduleRequestModel&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,approvalStatus,approvedBy,approvalTime);

@override
String toString() {
  return 'ApprovalLabScheduleRequestModel(approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime)';
}


}

/// @nodoc
abstract mixin class $ApprovalLabScheduleRequestModelCopyWith<$Res>  {
  factory $ApprovalLabScheduleRequestModelCopyWith(ApprovalLabScheduleRequestModel value, $Res Function(ApprovalLabScheduleRequestModel) _then) = _$ApprovalLabScheduleRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'approval_status', includeIfNull: false) String? approvalStatus,@JsonKey(name: 'approved_by', includeIfNull: false) String? approvedBy,@JsonKey(name: 'approval_time', includeIfNull: false) DateTime? approvalTime
});




}
/// @nodoc
class _$ApprovalLabScheduleRequestModelCopyWithImpl<$Res>
    implements $ApprovalLabScheduleRequestModelCopyWith<$Res> {
  _$ApprovalLabScheduleRequestModelCopyWithImpl(this._self, this._then);

  final ApprovalLabScheduleRequestModel _self;
  final $Res Function(ApprovalLabScheduleRequestModel) _then;

/// Create a copy of ApprovalLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,}) {
  return _then(_self.copyWith(
approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ApprovalLabScheduleRequestModel implements ApprovalLabScheduleRequestModel {
  const _ApprovalLabScheduleRequestModel({@JsonKey(name: 'approval_status', includeIfNull: false) this.approvalStatus, @JsonKey(name: 'approved_by', includeIfNull: false) this.approvedBy, @JsonKey(name: 'approval_time', includeIfNull: false) this.approvalTime});
  factory _ApprovalLabScheduleRequestModel.fromJson(Map<String, dynamic> json) => _$ApprovalLabScheduleRequestModelFromJson(json);

@override@JsonKey(name: 'approval_status', includeIfNull: false) final  String? approvalStatus;
@override@JsonKey(name: 'approved_by', includeIfNull: false) final  String? approvedBy;
@override@JsonKey(name: 'approval_time', includeIfNull: false) final  DateTime? approvalTime;

/// Create a copy of ApprovalLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApprovalLabScheduleRequestModelCopyWith<_ApprovalLabScheduleRequestModel> get copyWith => __$ApprovalLabScheduleRequestModelCopyWithImpl<_ApprovalLabScheduleRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApprovalLabScheduleRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApprovalLabScheduleRequestModel&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,approvalStatus,approvedBy,approvalTime);

@override
String toString() {
  return 'ApprovalLabScheduleRequestModel(approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime)';
}


}

/// @nodoc
abstract mixin class _$ApprovalLabScheduleRequestModelCopyWith<$Res> implements $ApprovalLabScheduleRequestModelCopyWith<$Res> {
  factory _$ApprovalLabScheduleRequestModelCopyWith(_ApprovalLabScheduleRequestModel value, $Res Function(_ApprovalLabScheduleRequestModel) _then) = __$ApprovalLabScheduleRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'approval_status', includeIfNull: false) String? approvalStatus,@JsonKey(name: 'approved_by', includeIfNull: false) String? approvedBy,@JsonKey(name: 'approval_time', includeIfNull: false) DateTime? approvalTime
});




}
/// @nodoc
class __$ApprovalLabScheduleRequestModelCopyWithImpl<$Res>
    implements _$ApprovalLabScheduleRequestModelCopyWith<$Res> {
  __$ApprovalLabScheduleRequestModelCopyWithImpl(this._self, this._then);

  final _ApprovalLabScheduleRequestModel _self;
  final $Res Function(_ApprovalLabScheduleRequestModel) _then;

/// Create a copy of ApprovalLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,}) {
  return _then(_ApprovalLabScheduleRequestModel(
approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
