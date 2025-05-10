// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabScheduleModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'activity_type_display') String? get activityTypeDisplay;@JsonKey(name: 'activity_description') String? get activityDescription;@JsonKey(name: 'schedule_date') DateTime? get scheduleDate;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'created_by') UserModel? get createdBy;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'approval_status') String? get approvalStatus;@JsonKey(name: 'approved_by') UserModel? get approvedBy;@JsonKey(name: 'approval_time') DateTime? get approvalTime;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of LabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabScheduleModelCopyWith<LabScheduleModel> get copyWith => _$LabScheduleModelCopyWithImpl<LabScheduleModel>(this as LabScheduleModel, _$identity);

  /// Serializes this LabScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityTypeDisplay, activityTypeDisplay) || other.activityTypeDisplay == activityTypeDisplay)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activityType,activityTypeDisplay,activityDescription,scheduleDate,startTime,endTime,createdBy,isActive,approvalStatus,approvedBy,approvalTime,createdAt,updatedAt);

@override
String toString() {
  return 'LabScheduleModel(id: $id, activityType: $activityType, activityTypeDisplay: $activityTypeDisplay, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime, createdBy: $createdBy, isActive: $isActive, approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LabScheduleModelCopyWith<$Res>  {
  factory $LabScheduleModelCopyWith(LabScheduleModel value, $Res Function(LabScheduleModel) _then) = _$LabScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'activity_type_display') String? activityTypeDisplay,@JsonKey(name: 'activity_description') String? activityDescription,@JsonKey(name: 'schedule_date') DateTime? scheduleDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'approval_status') String? approvalStatus,@JsonKey(name: 'approved_by') UserModel? approvedBy,@JsonKey(name: 'approval_time') DateTime? approvalTime,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


$UserModelCopyWith<$Res>? get createdBy;$UserModelCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class _$LabScheduleModelCopyWithImpl<$Res>
    implements $LabScheduleModelCopyWith<$Res> {
  _$LabScheduleModelCopyWithImpl(this._self, this._then);

  final LabScheduleModel _self;
  final $Res Function(LabScheduleModel) _then;

/// Create a copy of LabScheduleModel
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
/// Create a copy of LabScheduleModel
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
}/// Create a copy of LabScheduleModel
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
@JsonSerializable()

class _LabScheduleModel implements LabScheduleModel {
  const _LabScheduleModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'activity_type_display') this.activityTypeDisplay, @JsonKey(name: 'activity_description') this.activityDescription, @JsonKey(name: 'schedule_date') this.scheduleDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'approval_status') this.approvalStatus, @JsonKey(name: 'approved_by') this.approvedBy, @JsonKey(name: 'approval_time') this.approvalTime, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _LabScheduleModel.fromJson(Map<String, dynamic> json) => _$LabScheduleModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'activity_type_display') final  String? activityTypeDisplay;
@override@JsonKey(name: 'activity_description') final  String? activityDescription;
@override@JsonKey(name: 'schedule_date') final  DateTime? scheduleDate;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'created_by') final  UserModel? createdBy;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'approval_status') final  String? approvalStatus;
@override@JsonKey(name: 'approved_by') final  UserModel? approvedBy;
@override@JsonKey(name: 'approval_time') final  DateTime? approvalTime;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of LabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabScheduleModelCopyWith<_LabScheduleModel> get copyWith => __$LabScheduleModelCopyWithImpl<_LabScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabScheduleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityTypeDisplay, activityTypeDisplay) || other.activityTypeDisplay == activityTypeDisplay)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,activityType,activityTypeDisplay,activityDescription,scheduleDate,startTime,endTime,createdBy,isActive,approvalStatus,approvedBy,approvalTime,createdAt,updatedAt);

@override
String toString() {
  return 'LabScheduleModel(id: $id, activityType: $activityType, activityTypeDisplay: $activityTypeDisplay, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime, createdBy: $createdBy, isActive: $isActive, approvalStatus: $approvalStatus, approvedBy: $approvedBy, approvalTime: $approvalTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LabScheduleModelCopyWith<$Res> implements $LabScheduleModelCopyWith<$Res> {
  factory _$LabScheduleModelCopyWith(_LabScheduleModel value, $Res Function(_LabScheduleModel) _then) = __$LabScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'activity_type_display') String? activityTypeDisplay,@JsonKey(name: 'activity_description') String? activityDescription,@JsonKey(name: 'schedule_date') DateTime? scheduleDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'approval_status') String? approvalStatus,@JsonKey(name: 'approved_by') UserModel? approvedBy,@JsonKey(name: 'approval_time') DateTime? approvalTime,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


@override $UserModelCopyWith<$Res>? get createdBy;@override $UserModelCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class __$LabScheduleModelCopyWithImpl<$Res>
    implements _$LabScheduleModelCopyWith<$Res> {
  __$LabScheduleModelCopyWithImpl(this._self, this._then);

  final _LabScheduleModel _self;
  final $Res Function(_LabScheduleModel) _then;

/// Create a copy of LabScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? activityType = freezed,Object? activityTypeDisplay = freezed,Object? activityDescription = freezed,Object? scheduleDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? createdBy = freezed,Object? isActive = freezed,Object? approvalStatus = freezed,Object? approvedBy = freezed,Object? approvalTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_LabScheduleModel(
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

/// Create a copy of LabScheduleModel
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
}/// Create a copy of LabScheduleModel
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
