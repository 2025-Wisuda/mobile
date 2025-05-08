// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_lab_schedule_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateLabScheduleRequestModel {

@JsonKey(name: 'activity_type', includeIfNull: false) String? get activityType;@JsonKey(name: 'activity_description', includeIfNull: false) String? get activityDescription;@JsonKey(name: 'schedule_date', includeIfNull: false) DateTime? get scheduleDate;@JsonKey(name: 'start_time', includeIfNull: false) String? get startTime;@JsonKey(name: 'end_time', includeIfNull: false) String? get endTime;
/// Create a copy of UpdateLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLabScheduleRequestModelCopyWith<UpdateLabScheduleRequestModel> get copyWith => _$UpdateLabScheduleRequestModelCopyWithImpl<UpdateLabScheduleRequestModel>(this as UpdateLabScheduleRequestModel, _$identity);

  /// Serializes this UpdateLabScheduleRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLabScheduleRequestModel&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,activityDescription,scheduleDate,startTime,endTime);

@override
String toString() {
  return 'UpdateLabScheduleRequestModel(activityType: $activityType, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $UpdateLabScheduleRequestModelCopyWith<$Res>  {
  factory $UpdateLabScheduleRequestModelCopyWith(UpdateLabScheduleRequestModel value, $Res Function(UpdateLabScheduleRequestModel) _then) = _$UpdateLabScheduleRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_type', includeIfNull: false) String? activityType,@JsonKey(name: 'activity_description', includeIfNull: false) String? activityDescription,@JsonKey(name: 'schedule_date', includeIfNull: false) DateTime? scheduleDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime
});




}
/// @nodoc
class _$UpdateLabScheduleRequestModelCopyWithImpl<$Res>
    implements $UpdateLabScheduleRequestModelCopyWith<$Res> {
  _$UpdateLabScheduleRequestModelCopyWithImpl(this._self, this._then);

  final UpdateLabScheduleRequestModel _self;
  final $Res Function(UpdateLabScheduleRequestModel) _then;

/// Create a copy of UpdateLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = freezed,Object? activityDescription = freezed,Object? scheduleDate = freezed,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_self.copyWith(
activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityDescription: freezed == activityDescription ? _self.activityDescription : activityDescription // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateLabScheduleRequestModel implements UpdateLabScheduleRequestModel {
  const _UpdateLabScheduleRequestModel({@JsonKey(name: 'activity_type', includeIfNull: false) this.activityType, @JsonKey(name: 'activity_description', includeIfNull: false) this.activityDescription, @JsonKey(name: 'schedule_date', includeIfNull: false) this.scheduleDate, @JsonKey(name: 'start_time', includeIfNull: false) this.startTime, @JsonKey(name: 'end_time', includeIfNull: false) this.endTime});
  factory _UpdateLabScheduleRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateLabScheduleRequestModelFromJson(json);

@override@JsonKey(name: 'activity_type', includeIfNull: false) final  String? activityType;
@override@JsonKey(name: 'activity_description', includeIfNull: false) final  String? activityDescription;
@override@JsonKey(name: 'schedule_date', includeIfNull: false) final  DateTime? scheduleDate;
@override@JsonKey(name: 'start_time', includeIfNull: false) final  String? startTime;
@override@JsonKey(name: 'end_time', includeIfNull: false) final  String? endTime;

/// Create a copy of UpdateLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateLabScheduleRequestModelCopyWith<_UpdateLabScheduleRequestModel> get copyWith => __$UpdateLabScheduleRequestModelCopyWithImpl<_UpdateLabScheduleRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateLabScheduleRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateLabScheduleRequestModel&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityDescription, activityDescription) || other.activityDescription == activityDescription)&&(identical(other.scheduleDate, scheduleDate) || other.scheduleDate == scheduleDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,activityDescription,scheduleDate,startTime,endTime);

@override
String toString() {
  return 'UpdateLabScheduleRequestModel(activityType: $activityType, activityDescription: $activityDescription, scheduleDate: $scheduleDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$UpdateLabScheduleRequestModelCopyWith<$Res> implements $UpdateLabScheduleRequestModelCopyWith<$Res> {
  factory _$UpdateLabScheduleRequestModelCopyWith(_UpdateLabScheduleRequestModel value, $Res Function(_UpdateLabScheduleRequestModel) _then) = __$UpdateLabScheduleRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_type', includeIfNull: false) String? activityType,@JsonKey(name: 'activity_description', includeIfNull: false) String? activityDescription,@JsonKey(name: 'schedule_date', includeIfNull: false) DateTime? scheduleDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime
});




}
/// @nodoc
class __$UpdateLabScheduleRequestModelCopyWithImpl<$Res>
    implements _$UpdateLabScheduleRequestModelCopyWith<$Res> {
  __$UpdateLabScheduleRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateLabScheduleRequestModel _self;
  final $Res Function(_UpdateLabScheduleRequestModel) _then;

/// Create a copy of UpdateLabScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = freezed,Object? activityDescription = freezed,Object? scheduleDate = freezed,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_UpdateLabScheduleRequestModel(
activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityDescription: freezed == activityDescription ? _self.activityDescription : activityDescription // ignore: cast_nullable_to_non_nullable
as String?,scheduleDate: freezed == scheduleDate ? _self.scheduleDate : scheduleDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
