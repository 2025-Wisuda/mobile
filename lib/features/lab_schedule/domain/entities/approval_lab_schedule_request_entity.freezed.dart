// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_lab_schedule_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApprovalLabScheduleRequestEntity {

 String? get approvalStatus; String? get approvedBy; DateTime? get approvalTime;
/// Create a copy of ApprovalLabScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApprovalLabScheduleRequestEntityCopyWith<ApprovalLabScheduleRequestEntity> get copyWith => _$ApprovalLabScheduleRequestEntityCopyWithImpl<ApprovalLabScheduleRequestEntity>(this as ApprovalLabScheduleRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApprovalLabScheduleRequestEntity&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime));
}


@override
int get hashCode => Object.hash(runtimeType,approvalStatus,approvedBy,approvalTime);

@override
String toString() {
  return 'ApprovalLabScheduleRequestEntity(approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime)';
}


}

/// @nodoc
abstract mixin class $ApprovalLabScheduleRequestEntityCopyWith<$Res>  {
  factory $ApprovalLabScheduleRequestEntityCopyWith(ApprovalLabScheduleRequestEntity value, $Res Function(ApprovalLabScheduleRequestEntity) _then) = _$ApprovalLabScheduleRequestEntityCopyWithImpl;
@useResult
$Res call({
 String? approvalStatus, String? approvedBy, DateTime? approvalTime
});




}
/// @nodoc
class _$ApprovalLabScheduleRequestEntityCopyWithImpl<$Res>
    implements $ApprovalLabScheduleRequestEntityCopyWith<$Res> {
  _$ApprovalLabScheduleRequestEntityCopyWithImpl(this._self, this._then);

  final ApprovalLabScheduleRequestEntity _self;
  final $Res Function(ApprovalLabScheduleRequestEntity) _then;

/// Create a copy of ApprovalLabScheduleRequestEntity
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


class _ApprovalLabScheduleRequestEntity implements ApprovalLabScheduleRequestEntity {
  const _ApprovalLabScheduleRequestEntity({this.approvalStatus, this.approvedBy, this.approvalTime});
  

@override final  String? approvalStatus;
@override final  String? approvedBy;
@override final  DateTime? approvalTime;

/// Create a copy of ApprovalLabScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApprovalLabScheduleRequestEntityCopyWith<_ApprovalLabScheduleRequestEntity> get copyWith => __$ApprovalLabScheduleRequestEntityCopyWithImpl<_ApprovalLabScheduleRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApprovalLabScheduleRequestEntity&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime));
}


@override
int get hashCode => Object.hash(runtimeType,approvalStatus,approvedBy,approvalTime);

@override
String toString() {
  return 'ApprovalLabScheduleRequestEntity(approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime)';
}


}

/// @nodoc
abstract mixin class _$ApprovalLabScheduleRequestEntityCopyWith<$Res> implements $ApprovalLabScheduleRequestEntityCopyWith<$Res> {
  factory _$ApprovalLabScheduleRequestEntityCopyWith(_ApprovalLabScheduleRequestEntity value, $Res Function(_ApprovalLabScheduleRequestEntity) _then) = __$ApprovalLabScheduleRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String? approvalStatus, String? approvedBy, DateTime? approvalTime
});




}
/// @nodoc
class __$ApprovalLabScheduleRequestEntityCopyWithImpl<$Res>
    implements _$ApprovalLabScheduleRequestEntityCopyWith<$Res> {
  __$ApprovalLabScheduleRequestEntityCopyWithImpl(this._self, this._then);

  final _ApprovalLabScheduleRequestEntity _self;
  final $Res Function(_ApprovalLabScheduleRequestEntity) _then;

/// Create a copy of ApprovalLabScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,}) {
  return _then(_ApprovalLabScheduleRequestEntity(
approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
