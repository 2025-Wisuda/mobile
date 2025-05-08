// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LabScheduleEntity {

 String? get id; String? get activityType; String? get activityTypeDisplay; String? get activityDescription; DateTime? get scheduleDate; String? get startTime; String? get endTime; UserModel? get createdBy; bool? get isActive; String? get approvalStatus; UserModel? get approvedBy; DateTime? get approvalTime; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabScheduleEntityCopyWith<LabScheduleEntity> get copyWith => _$LabScheduleEntityCopyWithImpl<LabScheduleEntity>(this as LabScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabScheduleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityTypeDisplay, activityTypeDisplay) || other.activityTypeDisplay == activityTypeDisplay)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,activityType,activityTypeDisplay,activityDescription,scheduleDate,startTime,endTime,createdBy,isActive,approvalStatus,approvedBy,approvalTime,createdAt,updatedAt);

@override
String toString() {
  return 'LabScheduleEntity(id: $id, activityType: $activityType, activityTypeDisplay: $activityTypeDisplay, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime, createdBy: $createdBy, isActive: $isActive, approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LabScheduleEntityCopyWith<$Res>  {
  factory $LabScheduleEntityCopyWith(LabScheduleEntity value, $Res Function(LabScheduleEntity) _then) = _$LabScheduleEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? activityType, String? activityTypeDisplay, String? activityDescription, DateTime? scheduleDate, String? startTime, String? endTime, UserModel? createdBy, bool? isActive, String? approvalStatus, UserModel? approvedBy, DateTime? approvalTime, DateTime? createdAt, DateTime? updatedAt
});


$UserModelCopyWith<$Res>? get createdBy;$UserModelCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class _$LabScheduleEntityCopyWithImpl<$Res>
    implements $LabScheduleEntityCopyWith<$Res> {
  _$LabScheduleEntityCopyWithImpl(this._self, this._then);

  final LabScheduleEntity _self;
  final $Res Function(LabScheduleEntity) _then;

/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? activityType = freezed,Object? activityTypeDisplay = freezed,Object? activityDescription = freezed,Object? scheduleDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? createdBy = freezed,Object? isActive = freezed,Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityTypeDisplay: freezed == activityTypeDisplay ? _self.activityTypeDisplay : activityTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,activityDescription: freezed == activityDescription ? _self.activityDescription : activityDescription // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as UserModel?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}
}


/// @nodoc


class _LabScheduleEntity implements LabScheduleEntity {
  const _LabScheduleEntity({this.id, this.activityType, this.activityTypeDisplay, this.activityDescription, this.scheduleDate, this.startTime, this.endTime, this.createdBy, this.isActive, this.approvalStatus, this.approvedBy, this.approvalTime, this.createdAt, this.updatedAt});
  

@override final  String? id;
@override final  String? activityType;
@override final  String? activityTypeDisplay;
@override final  String? activityDescription;
@override final  DateTime? scheduleDate;
@override final  String? startTime;
@override final  String? endTime;
@override final  UserModel? createdBy;
@override final  bool? isActive;
@override final  String? approvalStatus;
@override final  UserModel? approvedBy;
@override final  DateTime? approvalTime;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabScheduleEntityCopyWith<_LabScheduleEntity> get copyWith => __$LabScheduleEntityCopyWithImpl<_LabScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabScheduleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityTypeDisplay, activityTypeDisplay) || other.activityTypeDisplay == activityTypeDisplay)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,activityType,activityTypeDisplay,activityDescription,scheduleDate,startTime,endTime,createdBy,isActive,approvalStatus,approvedBy,approvalTime,createdAt,updatedAt);

@override
String toString() {
  return 'LabScheduleEntity(id: $id, activityType: $activityType, activityTypeDisplay: $activityTypeDisplay, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime, createdBy: $createdBy, isActive: $isActive, approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LabScheduleEntityCopyWith<$Res> implements $LabScheduleEntityCopyWith<$Res> {
  factory _$LabScheduleEntityCopyWith(_LabScheduleEntity value, $Res Function(_LabScheduleEntity) _then) = __$LabScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? activityType, String? activityTypeDisplay, String? activityDescription, DateTime? scheduleDate, String? startTime, String? endTime, UserModel? createdBy, bool? isActive, String? approvalStatus, UserModel? approvedBy, DateTime? approvalTime, DateTime? createdAt, DateTime? updatedAt
});


@override $UserModelCopyWith<$Res>? get createdBy;@override $UserModelCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class __$LabScheduleEntityCopyWithImpl<$Res>
    implements _$LabScheduleEntityCopyWith<$Res> {
  __$LabScheduleEntityCopyWithImpl(this._self, this._then);

  final _LabScheduleEntity _self;
  final $Res Function(_LabScheduleEntity) _then;

/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? activityType = freezed,Object? activityTypeDisplay = freezed,Object? activityDescription = freezed,Object? scheduleDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? createdBy = freezed,Object? isActive = freezed,Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_LabScheduleEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityTypeDisplay: freezed == activityTypeDisplay ? _self.activityTypeDisplay : activityTypeDisplay // ignore: cast_nullable_to_non_nullable
as String?,activityDescription: freezed == activityDescription ? _self.activityDescription : activityDescription // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as UserModel?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of LabScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}
}

// dart format on
