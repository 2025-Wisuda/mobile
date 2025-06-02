// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DutyScheduleEntity {

 String? get id; List<UserEntity>? get teachingAssistants; String? get days; DateTime? get startDate; DateTime? get endDate; String? get startTime; String? get endTime; bool? get isActive; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of DutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DutyScheduleEntityCopyWith<DutyScheduleEntity> get copyWith => _$DutyScheduleEntityCopyWithImpl<DutyScheduleEntity>(this as DutyScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DutyScheduleEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(teachingAssistants),days,startDate,endDate,startTime,endTime,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'DutyScheduleEntity(id: $id, teachingAssistants: $teachingAssistants, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DutyScheduleEntityCopyWith<$Res>  {
  factory $DutyScheduleEntityCopyWith(DutyScheduleEntity value, $Res Function(DutyScheduleEntity) _then) = _$DutyScheduleEntityCopyWithImpl;
@useResult
$Res call({
 String? id, List<UserEntity>? teachingAssistants, String? days, DateTime? startDate, DateTime? endDate, String? startTime, String? endTime, bool? isActive, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$DutyScheduleEntityCopyWithImpl<$Res>
    implements $DutyScheduleEntityCopyWith<$Res> {
  _$DutyScheduleEntityCopyWithImpl(this._self, this._then);

  final DutyScheduleEntity _self;
  final $Res Function(DutyScheduleEntity) _then;

/// Create a copy of DutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? teachingAssistants = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _DutyScheduleEntity implements DutyScheduleEntity {
  const _DutyScheduleEntity({this.id, final  List<UserEntity>? teachingAssistants, this.days, this.startDate, this.endDate, this.startTime, this.endTime, this.isActive, this.createdAt, this.updatedAt}): _teachingAssistants = teachingAssistants;
  

@override final  String? id;
 final  List<UserEntity>? _teachingAssistants;
@override List<UserEntity>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? days;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  String? startTime;
@override final  String? endTime;
@override final  bool? isActive;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of DutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DutyScheduleEntityCopyWith<_DutyScheduleEntity> get copyWith => __$DutyScheduleEntityCopyWithImpl<_DutyScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DutyScheduleEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_teachingAssistants),days,startDate,endDate,startTime,endTime,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'DutyScheduleEntity(id: $id, teachingAssistants: $teachingAssistants, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DutyScheduleEntityCopyWith<$Res> implements $DutyScheduleEntityCopyWith<$Res> {
  factory _$DutyScheduleEntityCopyWith(_DutyScheduleEntity value, $Res Function(_DutyScheduleEntity) _then) = __$DutyScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, List<UserEntity>? teachingAssistants, String? days, DateTime? startDate, DateTime? endDate, String? startTime, String? endTime, bool? isActive, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$DutyScheduleEntityCopyWithImpl<$Res>
    implements _$DutyScheduleEntityCopyWith<$Res> {
  __$DutyScheduleEntityCopyWithImpl(this._self, this._then);

  final _DutyScheduleEntity _self;
  final $Res Function(_DutyScheduleEntity) _then;

/// Create a copy of DutyScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? teachingAssistants = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DutyScheduleEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
