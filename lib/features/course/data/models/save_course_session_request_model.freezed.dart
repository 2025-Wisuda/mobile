// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_session_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCourseSessionRequestModel {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'course') dynamic get course;@JsonKey(name: 'session_date') DateTime? get sessionDate;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'teaching_assistants') List<String>? get teachingAssistants;
/// Create a copy of SaveCourseSessionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCourseSessionRequestModelCopyWith<SaveCourseSessionRequestModel> get copyWith => _$SaveCourseSessionRequestModelCopyWithImpl<SaveCourseSessionRequestModel>(this as SaveCourseSessionRequestModel, _$identity);

  /// Serializes this SaveCourseSessionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCourseSessionRequestModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(teachingAssistants));

@override
String toString() {
  return 'SaveCourseSessionRequestModel(title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
}


}

/// @nodoc
abstract mixin class $SaveCourseSessionRequestModelCopyWith<$Res>  {
  factory $SaveCourseSessionRequestModelCopyWith(SaveCourseSessionRequestModel value, $Res Function(SaveCourseSessionRequestModel) _then) = _$SaveCourseSessionRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'course') dynamic course,@JsonKey(name: 'session_date') DateTime? sessionDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'teaching_assistants') List<String>? teachingAssistants
});




}
/// @nodoc
class _$SaveCourseSessionRequestModelCopyWithImpl<$Res>
    implements $SaveCourseSessionRequestModelCopyWith<$Res> {
  _$SaveCourseSessionRequestModelCopyWithImpl(this._self, this._then);

  final SaveCourseSessionRequestModel _self;
  final $Res Function(SaveCourseSessionRequestModel) _then;

/// Create a copy of SaveCourseSessionRequestModel
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
@JsonSerializable()

class _SaveCourseSessionRequestModel implements SaveCourseSessionRequestModel {
  const _SaveCourseSessionRequestModel({@JsonKey(name: 'title') this.title, @JsonKey(name: 'course') this.course, @JsonKey(name: 'session_date') this.sessionDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'status') this.status, @JsonKey(name: 'teaching_assistants') final  List<String>? teachingAssistants}): _teachingAssistants = teachingAssistants;
  factory _SaveCourseSessionRequestModel.fromJson(Map<String, dynamic> json) => _$SaveCourseSessionRequestModelFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'course') final  dynamic course;
@override@JsonKey(name: 'session_date') final  DateTime? sessionDate;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'status') final  String? status;
 final  List<String>? _teachingAssistants;
@override@JsonKey(name: 'teaching_assistants') List<String>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SaveCourseSessionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCourseSessionRequestModelCopyWith<_SaveCourseSessionRequestModel> get copyWith => __$SaveCourseSessionRequestModelCopyWithImpl<_SaveCourseSessionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveCourseSessionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCourseSessionRequestModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(_teachingAssistants));

@override
String toString() {
  return 'SaveCourseSessionRequestModel(title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
}


}

/// @nodoc
abstract mixin class _$SaveCourseSessionRequestModelCopyWith<$Res> implements $SaveCourseSessionRequestModelCopyWith<$Res> {
  factory _$SaveCourseSessionRequestModelCopyWith(_SaveCourseSessionRequestModel value, $Res Function(_SaveCourseSessionRequestModel) _then) = __$SaveCourseSessionRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'course') dynamic course,@JsonKey(name: 'session_date') DateTime? sessionDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'teaching_assistants') List<String>? teachingAssistants
});




}
/// @nodoc
class __$SaveCourseSessionRequestModelCopyWithImpl<$Res>
    implements _$SaveCourseSessionRequestModelCopyWith<$Res> {
  __$SaveCourseSessionRequestModelCopyWithImpl(this._self, this._then);

  final _SaveCourseSessionRequestModel _self;
  final $Res Function(_SaveCourseSessionRequestModel) _then;

/// Create a copy of SaveCourseSessionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? teachingAssistants = freezed,}) {
  return _then(_SaveCourseSessionRequestModel(
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
