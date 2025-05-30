// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'students') List<UserModel>? get students;@JsonKey(name: 'teaching_assistants') List<UserModel>? get teachingAssistants;@JsonKey(name: 'sessions') List<CourseSessionModel>? get sessions;@JsonKey(name: 'created_by') UserModel? get createdBy;@JsonKey(name: 'enroll_key') String? get enrollKey;@JsonKey(name: 'total_students') int? get totalStudents;@JsonKey(name: 'total_teaching_assistants') int? get totalTeachingAssistants;@JsonKey(name: 'total_participants') int? get totalParticipants;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModelCopyWith<CourseModel> get copyWith => _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.students, students)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&const DeepCollectionEquality().equals(other.sessions, sessions)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachingAssistants, totalTeachingAssistants) || other.totalTeachingAssistants == totalTeachingAssistants)&&(identical(other.totalParticipants, totalParticipants) || other.totalParticipants == totalParticipants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(students),const DeepCollectionEquality().hash(teachingAssistants),const DeepCollectionEquality().hash(sessions),createdBy,enrollKey,totalStudents,totalTeachingAssistants,totalParticipants,createdAt,updatedAt);

@override
String toString() {
  return 'CourseModel(id: $id, image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, sessions: $sessions, createdBy: $createdBy, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalParticipants: $totalParticipants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res>  {
  factory $CourseModelCopyWith(CourseModel value, $Res Function(CourseModel) _then) = _$CourseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'image') String? image,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'students') List<UserModel>? students,@JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,@JsonKey(name: 'sessions') List<CourseSessionModel>? sessions,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'enroll_key') String? enrollKey,@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teaching_assistants') int? totalTeachingAssistants,@JsonKey(name: 'total_participants') int? totalParticipants,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


$UserModelCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$CourseModelCopyWithImpl<$Res>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? students = freezed,Object? teachingAssistants = freezed,Object? sessions = freezed,Object? createdBy = freezed,Object? enrollKey = freezed,Object? totalStudents = freezed,Object? totalTeachingAssistants = freezed,Object? totalParticipants = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,sessions: freezed == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<CourseSessionModel>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachingAssistants: freezed == totalTeachingAssistants ? _self.totalTeachingAssistants : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
as int?,totalParticipants: freezed == totalParticipants ? _self.totalParticipants : totalParticipants // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of CourseModel
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

class _CourseModel implements CourseModel {
  const _CourseModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'image') this.image, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'students') final  List<UserModel>? students, @JsonKey(name: 'teaching_assistants') final  List<UserModel>? teachingAssistants, @JsonKey(name: 'sessions') final  List<CourseSessionModel>? sessions, @JsonKey(name: 'created_by') this.createdBy, @JsonKey(name: 'enroll_key') this.enrollKey, @JsonKey(name: 'total_students') this.totalStudents, @JsonKey(name: 'total_teaching_assistants') this.totalTeachingAssistants, @JsonKey(name: 'total_participants') this.totalParticipants, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _students = students,_teachingAssistants = teachingAssistants,_sessions = sessions;
  factory _CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
 final  List<UserModel>? _students;
@override@JsonKey(name: 'students') List<UserModel>? get students {
  final value = _students;
  if (value == null) return null;
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UserModel>? _teachingAssistants;
@override@JsonKey(name: 'teaching_assistants') List<UserModel>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CourseSessionModel>? _sessions;
@override@JsonKey(name: 'sessions') List<CourseSessionModel>? get sessions {
  final value = _sessions;
  if (value == null) return null;
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_by') final  UserModel? createdBy;
@override@JsonKey(name: 'enroll_key') final  String? enrollKey;
@override@JsonKey(name: 'total_students') final  int? totalStudents;
@override@JsonKey(name: 'total_teaching_assistants') final  int? totalTeachingAssistants;
@override@JsonKey(name: 'total_participants') final  int? totalParticipants;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModelCopyWith<_CourseModel> get copyWith => __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._students, _students)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachingAssistants, totalTeachingAssistants) || other.totalTeachingAssistants == totalTeachingAssistants)&&(identical(other.totalParticipants, totalParticipants) || other.totalParticipants == totalParticipants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(_students),const DeepCollectionEquality().hash(_teachingAssistants),const DeepCollectionEquality().hash(_sessions),createdBy,enrollKey,totalStudents,totalTeachingAssistants,totalParticipants,createdAt,updatedAt);

@override
String toString() {
  return 'CourseModel(id: $id, image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, sessions: $sessions, createdBy: $createdBy, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalParticipants: $totalParticipants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res> implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(_CourseModel value, $Res Function(_CourseModel) _then) = __$CourseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'image') String? image,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'students') List<UserModel>? students,@JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,@JsonKey(name: 'sessions') List<CourseSessionModel>? sessions,@JsonKey(name: 'created_by') UserModel? createdBy,@JsonKey(name: 'enroll_key') String? enrollKey,@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teaching_assistants') int? totalTeachingAssistants,@JsonKey(name: 'total_participants') int? totalParticipants,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


@override $UserModelCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? students = freezed,Object? teachingAssistants = freezed,Object? sessions = freezed,Object? createdBy = freezed,Object? enrollKey = freezed,Object? totalStudents = freezed,Object? totalTeachingAssistants = freezed,Object? totalParticipants = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CourseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,students: freezed == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,sessions: freezed == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<CourseSessionModel>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachingAssistants: freezed == totalTeachingAssistants ? _self.totalTeachingAssistants : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
as int?,totalParticipants: freezed == totalParticipants ? _self.totalParticipants : totalParticipants // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of CourseModel
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
