// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveCourseRequestEntity {

 File? get image; String? get title; String? get description; String? get startDate; String? get endDate; List<String>? get students; List<String>? get teachingAssistants; String? get enrollKey;
/// Create a copy of SaveCourseRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCourseRequestEntityCopyWith<SaveCourseRequestEntity> get copyWith => _$SaveCourseRequestEntityCopyWithImpl<SaveCourseRequestEntity>(this as SaveCourseRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCourseRequestEntity&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.students, students)&&const DeepCollectionEquality().equals(other.teachingAssistants, teachingAssistants)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(students),const DeepCollectionEquality().hash(teachingAssistants),enrollKey);

@override
String toString() {
  return 'SaveCourseRequestEntity(image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey)';
}


}

/// @nodoc
abstract mixin class $SaveCourseRequestEntityCopyWith<$Res>  {
  factory $SaveCourseRequestEntityCopyWith(SaveCourseRequestEntity value, $Res Function(SaveCourseRequestEntity) _then) = _$SaveCourseRequestEntityCopyWithImpl;
@useResult
$Res call({
 File? image, String? title, String? description, String? startDate, String? endDate, List<String>? students, List<String>? teachingAssistants, String? enrollKey
});




}
/// @nodoc
class _$SaveCourseRequestEntityCopyWithImpl<$Res>
    implements $SaveCourseRequestEntityCopyWith<$Res> {
  _$SaveCourseRequestEntityCopyWithImpl(this._self, this._then);

  final SaveCourseRequestEntity _self;
  final $Res Function(SaveCourseRequestEntity) _then;

/// Create a copy of SaveCourseRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? students = freezed,Object? teachingAssistants = freezed,Object? enrollKey = freezed,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<String>?,teachingAssistants: freezed == teachingAssistants ? _self.teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<String>?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _SaveCourseRequestEntity implements SaveCourseRequestEntity {
  const _SaveCourseRequestEntity({this.image, this.title, this.description, this.startDate, this.endDate, final  List<String>? students, final  List<String>? teachingAssistants, this.enrollKey}): _students = students,_teachingAssistants = teachingAssistants;
  

@override final  File? image;
@override final  String? title;
@override final  String? description;
@override final  String? startDate;
@override final  String? endDate;
 final  List<String>? _students;
@override List<String>? get students {
  final value = _students;
  if (value == null) return null;
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _teachingAssistants;
@override List<String>? get teachingAssistants {
  final value = _teachingAssistants;
  if (value == null) return null;
  if (_teachingAssistants is EqualUnmodifiableListView) return _teachingAssistants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? enrollKey;

/// Create a copy of SaveCourseRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCourseRequestEntityCopyWith<_SaveCourseRequestEntity> get copyWith => __$SaveCourseRequestEntityCopyWithImpl<_SaveCourseRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCourseRequestEntity&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._students, _students)&&const DeepCollectionEquality().equals(other._teachingAssistants, _teachingAssistants)&&(identical(other.enrollKey, enrollKey) || other.enrollKey == enrollKey));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description,startDate,endDate,const DeepCollectionEquality().hash(_students),const DeepCollectionEquality().hash(_teachingAssistants),enrollKey);

@override
String toString() {
  return 'SaveCourseRequestEntity(image: $image, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey)';
}


}

/// @nodoc
abstract mixin class _$SaveCourseRequestEntityCopyWith<$Res> implements $SaveCourseRequestEntityCopyWith<$Res> {
  factory _$SaveCourseRequestEntityCopyWith(_SaveCourseRequestEntity value, $Res Function(_SaveCourseRequestEntity) _then) = __$SaveCourseRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 File? image, String? title, String? description, String? startDate, String? endDate, List<String>? students, List<String>? teachingAssistants, String? enrollKey
});




}
/// @nodoc
class __$SaveCourseRequestEntityCopyWithImpl<$Res>
    implements _$SaveCourseRequestEntityCopyWith<$Res> {
  __$SaveCourseRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveCourseRequestEntity _self;
  final $Res Function(_SaveCourseRequestEntity) _then;

/// Create a copy of SaveCourseRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? students = freezed,Object? teachingAssistants = freezed,Object? enrollKey = freezed,}) {
  return _then(_SaveCourseRequestEntity(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,students: freezed == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<String>?,teachingAssistants: freezed == teachingAssistants ? _self._teachingAssistants : teachingAssistants // ignore: cast_nullable_to_non_nullable
as List<String>?,enrollKey: freezed == enrollKey ? _self.enrollKey : enrollKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
