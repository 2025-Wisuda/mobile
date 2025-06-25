// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollCourseEntity {
  String? get enrollKey;

  /// Create a copy of EnrollCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EnrollCourseEntityCopyWith<EnrollCourseEntity> get copyWith =>
      _$EnrollCourseEntityCopyWithImpl<EnrollCourseEntity>(
          this as EnrollCourseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnrollCourseEntity &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseEntity(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class $EnrollCourseEntityCopyWith<$Res> {
  factory $EnrollCourseEntityCopyWith(
          EnrollCourseEntity value, $Res Function(EnrollCourseEntity) _then) =
      _$EnrollCourseEntityCopyWithImpl;
  @useResult
  $Res call({String? enrollKey});
}

/// @nodoc
class _$EnrollCourseEntityCopyWithImpl<$Res>
    implements $EnrollCourseEntityCopyWith<$Res> {
  _$EnrollCourseEntityCopyWithImpl(this._self, this._then);

  final EnrollCourseEntity _self;
  final $Res Function(EnrollCourseEntity) _then;

  /// Create a copy of EnrollCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enrollKey = freezed,
  }) {
    return _then(_self.copyWith(
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _EnrollCourseEntity implements EnrollCourseEntity {
  const _EnrollCourseEntity({this.enrollKey});

  @override
  final String? enrollKey;

  /// Create a copy of EnrollCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EnrollCourseEntityCopyWith<_EnrollCourseEntity> get copyWith =>
      __$EnrollCourseEntityCopyWithImpl<_EnrollCourseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnrollCourseEntity &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseEntity(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class _$EnrollCourseEntityCopyWith<$Res>
    implements $EnrollCourseEntityCopyWith<$Res> {
  factory _$EnrollCourseEntityCopyWith(
          _EnrollCourseEntity value, $Res Function(_EnrollCourseEntity) _then) =
      __$EnrollCourseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? enrollKey});
}

/// @nodoc
class __$EnrollCourseEntityCopyWithImpl<$Res>
    implements _$EnrollCourseEntityCopyWith<$Res> {
  __$EnrollCourseEntityCopyWithImpl(this._self, this._then);

  final _EnrollCourseEntity _self;
  final $Res Function(_EnrollCourseEntity) _then;

  /// Create a copy of EnrollCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enrollKey = freezed,
  }) {
    return _then(_EnrollCourseEntity(
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
