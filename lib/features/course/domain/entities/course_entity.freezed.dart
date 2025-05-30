// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseEntity {

 String? get id; String? get image; String? get title; String? get description; DateTime? get startDate; DateTime? get endDate; List<UserEntity>? get students; List<UserEntity>? get teachingAssistants; List<CourseSessionEntity>? get sessions; UserEntity? get createdBy; String? get enrollKey; int? get totalStudents; int? get totalTeachingAssistants; int? get totalParticipants; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of CourseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseEntityCopyWith<CourseEntity> get copyWith => _$CourseEntityCopyWithImpl<CourseEntity>(this as CourseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.students, students)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&const DeepCollectionEquality().equals(other.sessions, sessions)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachingAssistants, totalTeachingAssistants) || other.totalTeachingAssistants == totalTeachingAssistants)&&(identical(other.totalParticipants, totalParticipants) || other.totalParticipants == totalParticipants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(students),const DeepCollectionEquality().hash(teachingAssistants),const DeepCollectionEquality().hash(sessions),createdBy,enrollKey,totalStudents,totalTeachingAssistants,totalParticipants,createdAt,updatedAt);

@override
String toString() {
  return 'CourseEntity(id: $id, image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, sessions: $sessions, createdBy: $createdBy, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalParticipants: $totalParticipants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CourseEntityCopyWith<$Res>  {
  factory $CourseEntityCopyWith(CourseEntity value, $Res Function(CourseEntity) _then) = _$CourseEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? image, String? title, String? description, DateTime? startDate, DateTime? endDate, List<UserEntity>? students, List<UserEntity>? teachingAssistants, List<CourseSessionEntity>? sessions, UserEntity? createdBy, String? enrollKey, int? totalStudents, int? totalTeachingAssistants, int? totalParticipants, DateTime? createdAt, DateTime? updatedAt
});


$UserEntityCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$CourseEntityCopyWithImpl<$Res>
    implements $CourseEntityCopyWith<$Res> {
  _$CourseEntityCopyWithImpl(this._self, this._then);

  final CourseEntity _self;
  final $Res Function(CourseEntity) _then;

/// Create a copy of CourseEntity
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
as List<UserEntity>?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,sessions: freezed == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<CourseSessionEntity>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachingAssistants: freezed == totalTeachingAssistants ? _self.totalTeachingAssistants : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
as int?,totalParticipants: freezed == totalParticipants ? _self.totalParticipants : totalParticipants // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of CourseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// @nodoc


class _CourseEntity implements CourseEntity {
  const _CourseEntity({this.id, this.image, this.title, this.description, this.startDate, this.endDate, final  List<UserEntity>? students, final  List<UserEntity>? teachingAssistants, final  List<CourseSessionEntity>? sessions, this.createdBy, this.enrollKey, this.totalStudents, this.totalTeachingAssistants, this.totalParticipants, this.createdAt, this.updatedAt}): _students = students,_teachingAssistants = teachingAssistants,_sessions = sessions;
  

@override final  String? id;
@override final  String? image;
@override final  String? title;
@override final  String? description;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
 final  List<UserEntity>? _students;
@override List<UserEntity>? get students {
  final value = _students;
  if (value == null) return null;
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UserEntity>? _teachingAssistants;
@override List<UserEntity>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CourseSessionEntity>? _sessions;
@override List<CourseSessionEntity>? get sessions {
  final value = _sessions;
  if (value == null) return null;
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  UserEntity? createdBy;
@override final  String? enrollKey;
@override final  int? totalStudents;
@override final  int? totalTeachingAssistants;
@override final  int? totalParticipants;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CourseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseEntityCopyWith<_CourseEntity> get copyWith => __$CourseEntityCopyWithImpl<_CourseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._students, _students)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachingAssistants, totalTeachingAssistants) || other.totalTeachingAssistants == totalTeachingAssistants)&&(identical(other.totalParticipants, totalParticipants) || other.totalParticipants == totalParticipants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(_students),const DeepCollectionEquality().hash(_teachingAssistants),const DeepCollectionEquality().hash(_sessions),createdBy,enrollKey,totalStudents,totalTeachingAssistants,totalParticipants,createdAt,updatedAt);

@override
String toString() {
  return 'CourseEntity(id: $id, image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, sessions: $sessions, createdBy: $createdBy, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalParticipants: $totalParticipants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CourseEntityCopyWith<$Res> implements $CourseEntityCopyWith<$Res> {
  factory _$CourseEntityCopyWith(_CourseEntity value, $Res Function(_CourseEntity) _then) = __$CourseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? image, String? title, String? description, DateTime? startDate, DateTime? endDate, List<UserEntity>? students, List<UserEntity>? teachingAssistants, List<CourseSessionEntity>? sessions, UserEntity? createdBy, String? enrollKey, int? totalStudents, int? totalTeachingAssistants, int? totalParticipants, DateTime? createdAt, DateTime? updatedAt
});


@override $UserEntityCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$CourseEntityCopyWithImpl<$Res>
    implements _$CourseEntityCopyWith<$Res> {
  __$CourseEntityCopyWithImpl(this._self, this._then);

  final _CourseEntity _self;
  final $Res Function(_CourseEntity) _then;

/// Create a copy of CourseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? students = freezed,Object? teachingAssistants = freezed,Object? sessions = freezed,Object? createdBy = freezed,Object? enrollKey = freezed,Object? totalStudents = freezed,Object? totalTeachingAssistants = freezed,Object? totalParticipants = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CourseEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,students: freezed == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,sessions: freezed == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<CourseSessionEntity>?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachingAssistants: freezed == totalTeachingAssistants ? _self.totalTeachingAssistants : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
as int?,totalParticipants: freezed == totalParticipants ? _self.totalParticipants : totalParticipants // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of CourseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
