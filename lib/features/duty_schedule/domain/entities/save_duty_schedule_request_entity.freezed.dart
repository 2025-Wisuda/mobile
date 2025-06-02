// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_duty_schedule_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveDutyScheduleRequestEntity {

 List<String>? get teachingAssistantIds; String? get days; DateTime? get startDate; DateTime? get endDate; String? get startTime; String? get endTime;
/// Create a copy of SaveDutyScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveDutyScheduleRequestEntityCopyWith<SaveDutyScheduleRequestEntity> get copyWith => _$SaveDutyScheduleRequestEntityCopyWithImpl<SaveDutyScheduleRequestEntity>(this as SaveDutyScheduleRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveDutyScheduleRequestEntity&&const DeepCollectionEquality().equals(other.teachingAssistantIds, teachingAssistantIds)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(teachingAssistantIds),days,startDate,endDate,startTime,endTime);

@override
String toString() {
  return 'SaveDutyScheduleRequestEntity(teachingAssistantIds: $teachingAssistantIds, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $SaveDutyScheduleRequestEntityCopyWith<$Res>  {
  factory $SaveDutyScheduleRequestEntityCopyWith(SaveDutyScheduleRequestEntity value, $Res Function(SaveDutyScheduleRequestEntity) _then) = _$SaveDutyScheduleRequestEntityCopyWithImpl;
@useResult
$Res call({
 List<String>? teachingAssistantIds, String? days, DateTime? startDate, DateTime? endDate, String? startTime, String? endTime
});




}
/// @nodoc
class _$SaveDutyScheduleRequestEntityCopyWithImpl<$Res>
    implements $SaveDutyScheduleRequestEntityCopyWith<$Res> {
  _$SaveDutyScheduleRequestEntityCopyWithImpl(this._self, this._then);

  final SaveDutyScheduleRequestEntity _self;
  final $Res Function(SaveDutyScheduleRequestEntity) _then;

/// Create a copy of SaveDutyScheduleRequestEntity
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


class _SaveDutyScheduleRequestEntity implements SaveDutyScheduleRequestEntity {
  const _SaveDutyScheduleRequestEntity({final  List<String>? teachingAssistantIds, this.days, this.startDate, this.endDate, this.startTime, this.endTime}): _teachingAssistantIds = teachingAssistantIds;
  

 final  List<String>? _teachingAssistantIds;
@override List<String>? get teachingAssistantIds {
  final value = _teachingAssistantIds;
  if (value == null) return null;
  if (_teachingAssistantIds is EqualUnmodifiableListView) return _teachingAssistantIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? days;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  String? startTime;
@override final  String? endTime;

/// Create a copy of SaveDutyScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveDutyScheduleRequestEntityCopyWith<_SaveDutyScheduleRequestEntity> get copyWith => __$SaveDutyScheduleRequestEntityCopyWithImpl<_SaveDutyScheduleRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveDutyScheduleRequestEntity&&const DeepCollectionEquality().equals(other._teachingAssistantIds, _teachingAssistantIds)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_teachingAssistantIds),days,startDate,endDate,startTime,endTime);

@override
String toString() {
  return 'SaveDutyScheduleRequestEntity(teachingAssistantIds: $teachingAssistantIds, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$SaveDutyScheduleRequestEntityCopyWith<$Res> implements $SaveDutyScheduleRequestEntityCopyWith<$Res> {
  factory _$SaveDutyScheduleRequestEntityCopyWith(_SaveDutyScheduleRequestEntity value, $Res Function(_SaveDutyScheduleRequestEntity) _then) = __$SaveDutyScheduleRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 List<String>? teachingAssistantIds, String? days, DateTime? startDate, DateTime? endDate, String? startTime, String? endTime
});




}
/// @nodoc
class __$SaveDutyScheduleRequestEntityCopyWithImpl<$Res>
    implements _$SaveDutyScheduleRequestEntityCopyWith<$Res> {
  __$SaveDutyScheduleRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveDutyScheduleRequestEntity _self;
  final $Res Function(_SaveDutyScheduleRequestEntity) _then;

/// Create a copy of SaveDutyScheduleRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? teachingAssistantIds = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,}) {
  return _then(_SaveDutyScheduleRequestEntity(
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
