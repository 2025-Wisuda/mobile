// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyScheduleModel {

@JsonKey(name: 'id', includeIfNull: false) String? get id;@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<UserModel>? get teachingAssistants;@JsonKey(name: 'days', includeIfNull: false) String? get days;@JsonKey(name: 'start_date', includeIfNull: false) DateTime? get startDate;@JsonKey(name: 'end_date', includeIfNull: false) DateTime? get endDate;@JsonKey(name: 'start_time', includeIfNull: false) String? get startTime;@JsonKey(name: 'end_time', includeIfNull: false) String? get endTime;@JsonKey(name: 'is_active', includeIfNull: false) bool? get isActive;@JsonKey(name: 'created_at', includeIfNull: false) DateTime? get createdAt;@JsonKey(name: 'updated_at', includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of DutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DutyScheduleModelCopyWith<DutyScheduleModel> get copyWith => _$DutyScheduleModelCopyWithImpl<DutyScheduleModel>(this as DutyScheduleModel, _$identity);

  /// Serializes this DutyScheduleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DutyScheduleModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(teachingAssistants),days,startDate,endDate,startTime,endTime,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'DutyScheduleModel(id: $id, teachingAssistants: $teachingAssistants, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DutyScheduleModelCopyWith<$Res>  {
  factory $DutyScheduleModelCopyWith(DutyScheduleModel value, $Res Function(DutyScheduleModel) _then) = _$DutyScheduleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) String? id,@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<UserModel>? teachingAssistants,@JsonKey(name: 'days', includeIfNull: false) String? days,@JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,@JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime,@JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,@JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class _$DutyScheduleModelCopyWithImpl<$Res>
    implements $DutyScheduleModelCopyWith<$Res> {
  _$DutyScheduleModelCopyWithImpl(this._self, this._then);

  final DutyScheduleModel _self;
  final $Res Function(DutyScheduleModel) _then;

/// Create a copy of DutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? teachingAssistants = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()

class _DutyScheduleModel implements DutyScheduleModel {
  const _DutyScheduleModel({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'teaching_assistants', includeIfNull: false) final  List<UserModel>? teachingAssistants, @JsonKey(name: 'days', includeIfNull: false) this.days, @JsonKey(name: 'start_date', includeIfNull: false) this.startDate, @JsonKey(name: 'end_date', includeIfNull: false) this.endDate, @JsonKey(name: 'start_time', includeIfNull: false) this.startTime, @JsonKey(name: 'end_time', includeIfNull: false) this.endTime, @JsonKey(name: 'is_active', includeIfNull: false) this.isActive, @JsonKey(name: 'created_at', includeIfNull: false) this.createdAt, @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt}): _teachingAssistants = teachingAssistants;
  factory _DutyScheduleModel.fromJson(Map<String, dynamic> json) => _$DutyScheduleModelFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  String? id;
 final  List<UserModel>? _teachingAssistants;
@override@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<UserModel>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'days', includeIfNull: false) final  String? days;
@override@JsonKey(name: 'start_date', includeIfNull: false) final  DateTime? startDate;
@override@JsonKey(name: 'end_date', includeIfNull: false) final  DateTime? endDate;
@override@JsonKey(name: 'start_time', includeIfNull: false) final  String? startTime;
@override@JsonKey(name: 'end_time', includeIfNull: false) final  String? endTime;
@override@JsonKey(name: 'is_active', includeIfNull: false) final  bool? isActive;
@override@JsonKey(name: 'created_at', includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at', includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of DutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DutyScheduleModelCopyWith<_DutyScheduleModel> get copyWith => __$DutyScheduleModelCopyWithImpl<_DutyScheduleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DutyScheduleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DutyScheduleModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&(identical(other.days, days) || other.days == days)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_teachingAssistants),days,startDate,endDate,startTime,endTime,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'DutyScheduleModel(id: $id, teachingAssistants: $teachingAssistants, days: $days, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DutyScheduleModelCopyWith<$Res> implements $DutyScheduleModelCopyWith<$Res> {
  factory _$DutyScheduleModelCopyWith(_DutyScheduleModel value, $Res Function(_DutyScheduleModel) _then) = __$DutyScheduleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) String? id,@JsonKey(name: 'teaching_assistants', includeIfNull: false) List<UserModel>? teachingAssistants,@JsonKey(name: 'days', includeIfNull: false) String? days,@JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,@JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,@JsonKey(name: 'start_time', includeIfNull: false) String? startTime,@JsonKey(name: 'end_time', includeIfNull: false) String? endTime,@JsonKey(name: 'is_active', includeIfNull: false) bool? isActive,@JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,@JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class __$DutyScheduleModelCopyWithImpl<$Res>
    implements _$DutyScheduleModelCopyWith<$Res> {
  __$DutyScheduleModelCopyWithImpl(this._self, this._then);

  final _DutyScheduleModel _self;
  final $Res Function(_DutyScheduleModel) _then;

/// Create a copy of DutyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? teachingAssistants = freezed,Object? days = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DutyScheduleModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,days: freezed == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
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
