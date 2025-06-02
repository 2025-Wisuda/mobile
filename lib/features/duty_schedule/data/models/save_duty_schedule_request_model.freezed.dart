// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_duty_schedule_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveDutyScheduleRequestModel {

@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<String>? get teachingAssistantIds;@JsonKey(name: 'days', includeIfNull: false) String? get days;@JsonKey(name: 'start_date', includeIfNull: false) DateTime? get startDate;@JsonKey(name: 'end_date', includeIfNull: false) DateTime? get endDate;@JsonKey(name: 'start_time', includeIfNull: false) String? get startTime;@JsonKey(name: 'end_time', includeIfNull: false) String? get endTime;
/// Create a copy of SaveDutyScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveDutyScheduleRequestModelCopyWith<SaveDutyScheduleRequestModel> get copyWith => _$SaveDutyScheduleRequestModelCopyWithImpl<SaveDutyScheduleRequestModel>(this as SaveDutyScheduleRequestModel, _$identity);

  /// Serializes this SaveDutyScheduleRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveDutyScheduleRequestModel&&const DeepCollectionEquality().equals(other.teachingAssistantIds, teachingAssistantIds)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(teachingAssistantIds),days,startDate,endDate,startTime,endTime);

@override
String toString() {
  return 'SaveDutyScheduleRequestModel(teachingAssistantIds: $teachingAssistantIds, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $SaveDutyScheduleRequestModelCopyWith<$Res>  {
  factory $SaveDutyScheduleRequestModelCopyWith(SaveDutyScheduleRequestModel value, $Res Function(SaveDutyScheduleRequestModel) _then) = _$SaveDutyScheduleRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<String>? teachingAssistantIds,@JsonKey(name: 'days', includeIfNull: false) String? days,@JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,@JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime
});




}
/// @nodoc
class _$SaveDutyScheduleRequestModelCopyWithImpl<$Res>
    implements $SaveDutyScheduleRequestModelCopyWith<$Res> {
  _$SaveDutyScheduleRequestModelCopyWithImpl(this._self, this._then);

  final SaveDutyScheduleRequestModel _self;
  final $Res Function(SaveDutyScheduleRequestModel) _then;

/// Create a copy of SaveDutyScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? teachingAssistantIds = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_self.copyWith(
teachingAssistantIds: freezed == teachingAssistantIds ? _self.teachingAssistantIds : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
as List<String>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SaveDutyScheduleRequestModel implements SaveDutyScheduleRequestModel {
  const _SaveDutyScheduleRequestModel({@JsonKey(name: 'teaching_assistants', includeIfNull: false) final  List<String>? teachingAssistantIds, @JsonKey(name: 'days', includeIfNull: false) this.days, @JsonKey(name: 'start_date', includeIfNull: false) this.startDate, @JsonKey(name: 'end_date', includeIfNull: false) this.endDate, @JsonKey(name: 'start_time', includeIfNull: false) this.startTime, @JsonKey(name: 'end_time', includeIfNull: false) this.endTime}): _teachingAssistantIds = teachingAssistantIds;
  factory _SaveDutyScheduleRequestModel.fromJson(Map<String, dynamic> json) => _$SaveDutyScheduleRequestModelFromJson(json);

 final  List<String>? _teachingAssistantIds;
@override@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<String>? get teachingAssistantIds {
  final value = _teachingAssistantIds;
  if (value == null) return null;
  if (_teachingAssistantIds is EqualUnmodifiableListView) return _teachingAssistantIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'days', includeIfNull: false) final  String? days;
@override@JsonKey(name: 'start_date', includeIfNull: false) final  DateTime? startDate;
@override@JsonKey(name: 'end_date', includeIfNull: false) final  DateTime? endDate;
@override@JsonKey(name: 'start_time', includeIfNull: false) final  String? startTime;
@override@JsonKey(name: 'end_time', includeIfNull: false) final  String? endTime;

/// Create a copy of SaveDutyScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveDutyScheduleRequestModelCopyWith<_SaveDutyScheduleRequestModel> get copyWith => __$SaveDutyScheduleRequestModelCopyWithImpl<_SaveDutyScheduleRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveDutyScheduleRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveDutyScheduleRequestModel&&const DeepCollectionEquality().equals(other._teachingAssistantIds, _teachingAssistantIds)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_teachingAssistantIds),days,startDate,endDate,startTime,endTime);

@override
String toString() {
  return 'SaveDutyScheduleRequestModel(teachingAssistantIds: $teachingAssistantIds, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$SaveDutyScheduleRequestModelCopyWith<$Res> implements $SaveDutyScheduleRequestModelCopyWith<$Res> {
  factory _$SaveDutyScheduleRequestModelCopyWith(_SaveDutyScheduleRequestModel value, $Res Function(_SaveDutyScheduleRequestModel) _then) = __$SaveDutyScheduleRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<String>? teachingAssistantIds,@JsonKey(name: 'days', includeIfNull: false) String? days,@JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,@JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime
});




}
/// @nodoc
class __$SaveDutyScheduleRequestModelCopyWithImpl<$Res>
    implements _$SaveDutyScheduleRequestModelCopyWith<$Res> {
  __$SaveDutyScheduleRequestModelCopyWithImpl(this._self, this._then);

  final _SaveDutyScheduleRequestModel _self;
  final $Res Function(_SaveDutyScheduleRequestModel) _then;

/// Create a copy of SaveDutyScheduleRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? teachingAssistantIds = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_SaveDutyScheduleRequestModel(
teachingAssistantIds: freezed == teachingAssistantIds ? _self._teachingAssistantIds : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
as List<String>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
