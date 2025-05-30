// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseSessionEntity {

 String? get id; String? get title; dynamic get course; DateTime? get sessionDate; String? get startTime; String? get endTime; String? get status; UserEntity? get createdBy; List<UserEntity>? get teachingAssistants; String? get approvalStatus; DateTime? get approvalTime; UserEntity? get approvedBy; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseSessionEntityCopyWith<CourseSessionEntity> get copyWith => _$CourseSessionEntityCopyWithImpl<CourseSessionEntity>(this as CourseSessionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseSessionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,createdBy,const DeepCollectionEquality().hash(teachingAssistants),approvalStatus,approvalTime,approvedBy,createdAt,updatedAt);

@override
String toString() {
  return 'CourseSessionEntity(id: $id, title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, createdBy: $createdBy, teachingAssistants: $teachingAssistants, approvalStatus: $approvalStatus, approvalTime: $approvalTime, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CourseSessionEntityCopyWith<$Res>  {
  factory $CourseSessionEntityCopyWith(CourseSessionEntity value, $Res Function(CourseSessionEntity) _then) = _$CourseSessionEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, dynamic course, DateTime? sessionDate, String? startTime, String? endTime, String? status, UserEntity? createdBy, List<UserEntity>? teachingAssistants, String? approvalStatus, DateTime? approvalTime, UserEntity? approvedBy, DateTime? createdAt, DateTime? updatedAt
});


$UserEntityCopyWith<$Res>? get createdBy;$UserEntityCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class _$CourseSessionEntityCopyWithImpl<$Res>
    implements $CourseSessionEntityCopyWith<$Res> {
  _$CourseSessionEntityCopyWithImpl(this._self, this._then);

  final CourseSessionEntity _self;
  final $Res Function(CourseSessionEntity) _then;

/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? createdBy = freezed,Object? teachingAssistants = freezed,Object? approvalStatus = freezed,Object? approvalTime = freezed,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of CourseSessionEntity
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
}/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}
}


/// @nodoc


class _CourseSessionEntity implements CourseSessionEntity {
  const _CourseSessionEntity({this.id, this.title, this.course, this.sessionDate, this.startTime, this.endTime, this.status, this.createdBy, final  List<UserEntity>? teachingAssistants, this.approvalStatus, this.approvalTime, this.approvedBy, this.createdAt, this.updatedAt}): _teachingAssistants = teachingAssistants;
  

@override final  String? id;
@override final  String? title;
@override final  dynamic course;
@override final  DateTime? sessionDate;
@override final  String? startTime;
@override final  String? endTime;
@override final  String? status;
@override final  UserEntity? createdBy;
 final  List<UserEntity>? _teachingAssistants;
@override List<UserEntity>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? approvalStatus;
@override final  DateTime? approvalTime;
@override final  UserEntity? approvedBy;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseSessionEntityCopyWith<_CourseSessionEntity> get copyWith => __$CourseSessionEntityCopyWithImpl<_CourseSessionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseSessionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.course, course)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus)&&(identical(other.approvalTime, approvalTime) || other.approvalTime == approvalTime)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(course),sessionDate,startTime,endTime,status,createdBy,const DeepCollectionEquality().hash(_teachingAssistants),approvalStatus,approvalTime,approvedBy,createdAt,updatedAt);

@override
String toString() {
  return 'CourseSessionEntity(id: $id, title: $title, course: $course, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, status: $status, createdBy: $createdBy, teachingAssistants: $teachingAssistants, approvalStatus: $approvalStatus, approvalTime: $approvalTime, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CourseSessionEntityCopyWith<$Res> implements $CourseSessionEntityCopyWith<$Res> {
  factory _$CourseSessionEntityCopyWith(_CourseSessionEntity value, $Res Function(_CourseSessionEntity) _then) = __$CourseSessionEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, dynamic course, DateTime? sessionDate, String? startTime, String? endTime, String? status, UserEntity? createdBy, List<UserEntity>? teachingAssistants, String? approvalStatus, DateTime? approvalTime, UserEntity? approvedBy, DateTime? createdAt, DateTime? updatedAt
});


@override $UserEntityCopyWith<$Res>? get createdBy;@override $UserEntityCopyWith<$Res>? get approvedBy;

}
/// @nodoc
class __$CourseSessionEntityCopyWithImpl<$Res>
    implements _$CourseSessionEntityCopyWith<$Res> {
  __$CourseSessionEntityCopyWithImpl(this._self, this._then);

  final _CourseSessionEntity _self;
  final $Res Function(_CourseSessionEntity) _then;

/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? course = freezed,Object? sessionDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? createdBy = freezed,Object? teachingAssistants = freezed,Object? approvalStatus = freezed,Object? approvalTime = freezed,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CourseSessionEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as dynamic,sessionDate: freezed == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>?,approvalStatus: freezed == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String?,approvalTime: freezed == approvalTime ? _self.approvalTime : approvalTime // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as UserEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of CourseSessionEntity
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
}/// Create a copy of CourseSessionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.approvedBy!, (value) {
    return _then(_self.copyWith(approvedBy: value));
  });
}
}

// dart format on
