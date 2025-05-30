// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSessionModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'course') dynamic get course;@JsonKey(name: 'session_date') DateTime? get sessionDate;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'teaching_assistants') List<UserModel>? get teachingAssistants;@JsonKey(name: 'created_by') UserModel? get createdBy;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of CourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseSessionModelCopyWith<CourseSessionModel> get copyWith => _$CourseSessionModelCopyWithImpl<CourseSessionModel>(this as CourseSessionModel, _$identity);

  /// Serializes this CourseSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(teachingAssistants),createdBy,createdAt,updatedAt);

@override
String toString() {
  return 'CourseSessionModel(id: $id, title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CourseSessionModelCopyWith<$Res>  {
  factory $CourseSessionModelCopyWith(CourseSessionModel value, $Res Function(CourseSessionModel) _then) = _$CourseSessionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'course') dynamic course,@JsonKey(name: 'session_date') DateTime? sessionDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


$UserModelCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$CourseSessionModelCopyWithImpl<$Res>
    implements $CourseSessionModelCopyWith<$Res> {
  _$CourseSessionModelCopyWithImpl(this._self, this._then);

  final CourseSessionModel _self;
  final $Res Function(CourseSessionModel) _then;

/// Create a copy of CourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? teachingAssistants = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of CourseSessionModel
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
}
}


/// @nodoc
@JsonSerializable()

class _CourseSessionModel implements CourseSessionModel {
  const _CourseSessionModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'course') this.course, @JsonKey(name: 'session_date') this.sessionDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'status') this.status, @JsonKey(name: 'teaching_assistants') final  List<UserModel>? teachingAssistants, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _teachingAssistants = teachingAssistants;
  factory _CourseSessionModel.fromJson(Map<String, dynamic> json) => _$CourseSessionModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'course') final  dynamic course;
@override@JsonKey(name: 'session_date') final  DateTime? sessionDate;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'status') final  String? status;
 final  List<UserModel>? _teachingAssistants;
@override@JsonKey(name: 'teaching_assistants') List<UserModel>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_by') final  UserModel? createdBy;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of CourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseSessionModelCopyWith<_CourseSessionModel> get copyWith => __$CourseSessionModelCopyWithImpl<_CourseSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,const DeepCollectionEquality().hash(_teachingAssistants),createdBy,createdAt,updatedAt);

@override
String toString() {
  return 'CourseSessionModel(id: $id, title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CourseSessionModelCopyWith<$Res> implements $CourseSessionModelCopyWith<$Res> {
  factory _$CourseSessionModelCopyWith(_CourseSessionModel value, $Res Function(_CourseSessionModel) _then) = __$CourseSessionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'course') dynamic course,@JsonKey(name: 'session_date') DateTime? sessionDate,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'status') String? status,@JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


@override $UserModelCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$CourseSessionModelCopyWithImpl<$Res>
    implements _$CourseSessionModelCopyWith<$Res> {
  __$CourseSessionModelCopyWithImpl(this._self, this._then);

  final _CourseSessionModel _self;
  final $Res Function(_CourseSessionModel) _then;

/// Create a copy of CourseSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? teachingAssistants = freezed,Object? createdBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CourseSessionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of CourseSessionModel
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
}
}

// dart format on
