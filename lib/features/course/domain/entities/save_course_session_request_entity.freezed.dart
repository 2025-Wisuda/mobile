// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_session_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveCourseSessionRequestEntity {

 String? get title; dynamic get course; DateTime? get sessionDate; String? get startTime; String? get endTime; String? get status; List<String>? get teachingAssistants;
/// Create a copy of SaveCourseSessionRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCourseSessionRequestEntityCopyWith<SaveCourseSessionRequestEntity> get copyWith => _$SaveCourseSessionRequestEntityCopyWithImpl<SaveCourseSessionRequestEntity>(this as SaveCourseSessionRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCourseSessionRequestEntity&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(teachingAssistants));

@override
String toString() {
  return 'SaveCourseSessionRequestEntity(title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
}


}

/// @nodoc
abstract mixin class $SaveCourseSessionRequestEntityCopyWith<$Res>  {
  factory $SaveCourseSessionRequestEntityCopyWith(SaveCourseSessionRequestEntity value, $Res Function(SaveCourseSessionRequestEntity) _then) = _$SaveCourseSessionRequestEntityCopyWithImpl;
@useResult
$Res call({
 String? title, dynamic course, DateTime? sessionDate, String? startTime, String? endTime, String? status, List<String>? teachingAssistants
});




}
/// @nodoc
class _$SaveCourseSessionRequestEntityCopyWithImpl<$Res>
    implements $SaveCourseSessionRequestEntityCopyWith<$Res> {
  _$SaveCourseSessionRequestEntityCopyWithImpl(this._self, this._then);

  final SaveCourseSessionRequestEntity _self;
  final $Res Function(SaveCourseSessionRequestEntity) _then;

/// Create a copy of SaveCourseSessionRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? teachingAssistants = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc


class _SaveCourseSessionRequestEntity implements SaveCourseSessionRequestEntity {
  const _SaveCourseSessionRequestEntity({this.title, this.course, this.sessionDate, this.startTime, this.endTime, this.status, final  List<String>? teachingAssistants}): _teachingAssistants = teachingAssistants;
  

@override final  String? title;
@override final  dynamic course;
@override final  DateTime? sessionDate;
@override final  String? startTime;
@override final  String? endTime;
@override final  String? status;
 final  List<String>? _teachingAssistants;
@override List<String>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SaveCourseSessionRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCourseSessionRequestEntityCopyWith<_SaveCourseSessionRequestEntity> get copyWith => __$SaveCourseSessionRequestEntityCopyWithImpl<_SaveCourseSessionRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCourseSessionRequestEntity&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(_teachingAssistants));

@override
String toString() {
  return 'SaveCourseSessionRequestEntity(title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
}


}

/// @nodoc
abstract mixin class _$SaveCourseSessionRequestEntityCopyWith<$Res> implements $SaveCourseSessionRequestEntityCopyWith<$Res> {
  factory _$SaveCourseSessionRequestEntityCopyWith(_SaveCourseSessionRequestEntity value, $Res Function(_SaveCourseSessionRequestEntity) _then) = __$SaveCourseSessionRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, dynamic course, DateTime? sessionDate, String? startTime, String? endTime, String? status, List<String>? teachingAssistants
});




}
/// @nodoc
class __$SaveCourseSessionRequestEntityCopyWithImpl<$Res>
    implements _$SaveCourseSessionRequestEntityCopyWith<$Res> {
  __$SaveCourseSessionRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveCourseSessionRequestEntity _self;
  final $Res Function(_SaveCourseSessionRequestEntity) _then;

/// Create a copy of SaveCourseSessionRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? teachingAssistants = freezed,}) {
  return _then(_SaveCourseSessionRequestEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
