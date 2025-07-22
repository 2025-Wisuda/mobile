// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_attendance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSessionAttendanceEntity {
  String? get id;
  DutyScheduleEntity? get student;
  String? get status;
  String? get markedAt;
  String? get markedBy;
  bool? get manualAttendanceOverride;
  double? get faceRecognitionConfidence;

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseSessionAttendanceEntityCopyWith<CourseSessionAttendanceEntity>
      get copyWith => _$CourseSessionAttendanceEntityCopyWithImpl<
              CourseSessionAttendanceEntity>(
          this as CourseSessionAttendanceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseSessionAttendanceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.markedAt, markedAt) ||
                other.markedAt == markedAt) &&
            (identical(other.markedBy, markedBy) ||
                other.markedBy == markedBy) &&
            (identical(
                    other.manualAttendanceOverride, manualAttendanceOverride) ||
                other.manualAttendanceOverride == manualAttendanceOverride) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, student, status, markedAt,
      markedBy, manualAttendanceOverride, faceRecognitionConfidence);

  @override
  String toString() {
    return 'CourseSessionAttendanceEntity(id: $id, student: $student, status: $status, markedAt: $markedAt, markedBy: $markedBy, manualAttendanceOverride: $manualAttendanceOverride, faceRecognitionConfidence: $faceRecognitionConfidence)';
  }
}

/// @nodoc
abstract mixin class $CourseSessionAttendanceEntityCopyWith<$Res> {
  factory $CourseSessionAttendanceEntityCopyWith(
          CourseSessionAttendanceEntity value,
          $Res Function(CourseSessionAttendanceEntity) _then) =
      _$CourseSessionAttendanceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      DutyScheduleEntity? student,
      String? status,
      String? markedAt,
      String? markedBy,
      bool? manualAttendanceOverride,
      double? faceRecognitionConfidence});

  $DutyScheduleEntityCopyWith<$Res>? get student;
}

/// @nodoc
class _$CourseSessionAttendanceEntityCopyWithImpl<$Res>
    implements $CourseSessionAttendanceEntityCopyWith<$Res> {
  _$CourseSessionAttendanceEntityCopyWithImpl(this._self, this._then);

  final CourseSessionAttendanceEntity _self;
  final $Res Function(CourseSessionAttendanceEntity) _then;

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? status = freezed,
    Object? markedAt = freezed,
    Object? markedBy = freezed,
    Object? manualAttendanceOverride = freezed,
    Object? faceRecognitionConfidence = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as DutyScheduleEntity?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      markedAt: freezed == markedAt
          ? _self.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      markedBy: freezed == markedBy
          ? _self.markedBy
          : markedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      manualAttendanceOverride: freezed == manualAttendanceOverride
          ? _self.manualAttendanceOverride
          : manualAttendanceOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleEntityCopyWith<$Res>? get student {
    if (_self.student == null) {
      return null;
    }

    return $DutyScheduleEntityCopyWith<$Res>(_self.student!, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CourseSessionAttendanceEntity].
extension CourseSessionAttendanceEntityPatterns
    on CourseSessionAttendanceEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CourseSessionAttendanceEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CourseSessionAttendanceEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CourseSessionAttendanceEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            DutyScheduleEntity? student,
            String? status,
            String? markedAt,
            String? markedBy,
            bool? manualAttendanceOverride,
            double? faceRecognitionConfidence)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity() when $default != null:
        return $default(
            _that.id,
            _that.student,
            _that.status,
            _that.markedAt,
            _that.markedBy,
            _that.manualAttendanceOverride,
            _that.faceRecognitionConfidence);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            DutyScheduleEntity? student,
            String? status,
            String? markedAt,
            String? markedBy,
            bool? manualAttendanceOverride,
            double? faceRecognitionConfidence)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity():
        return $default(
            _that.id,
            _that.student,
            _that.status,
            _that.markedAt,
            _that.markedBy,
            _that.manualAttendanceOverride,
            _that.faceRecognitionConfidence);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            DutyScheduleEntity? student,
            String? status,
            String? markedAt,
            String? markedBy,
            bool? manualAttendanceOverride,
            double? faceRecognitionConfidence)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceEntity() when $default != null:
        return $default(
            _that.id,
            _that.student,
            _that.status,
            _that.markedAt,
            _that.markedBy,
            _that.manualAttendanceOverride,
            _that.faceRecognitionConfidence);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CourseSessionAttendanceEntity implements CourseSessionAttendanceEntity {
  const _CourseSessionAttendanceEntity(
      {this.id,
      this.student,
      this.status,
      this.markedAt,
      this.markedBy,
      this.manualAttendanceOverride,
      this.faceRecognitionConfidence});

  @override
  final String? id;
  @override
  final DutyScheduleEntity? student;
  @override
  final String? status;
  @override
  final String? markedAt;
  @override
  final String? markedBy;
  @override
  final bool? manualAttendanceOverride;
  @override
  final double? faceRecognitionConfidence;

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseSessionAttendanceEntityCopyWith<_CourseSessionAttendanceEntity>
      get copyWith => __$CourseSessionAttendanceEntityCopyWithImpl<
          _CourseSessionAttendanceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseSessionAttendanceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.markedAt, markedAt) ||
                other.markedAt == markedAt) &&
            (identical(other.markedBy, markedBy) ||
                other.markedBy == markedBy) &&
            (identical(
                    other.manualAttendanceOverride, manualAttendanceOverride) ||
                other.manualAttendanceOverride == manualAttendanceOverride) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, student, status, markedAt,
      markedBy, manualAttendanceOverride, faceRecognitionConfidence);

  @override
  String toString() {
    return 'CourseSessionAttendanceEntity(id: $id, student: $student, status: $status, markedAt: $markedAt, markedBy: $markedBy, manualAttendanceOverride: $manualAttendanceOverride, faceRecognitionConfidence: $faceRecognitionConfidence)';
  }
}

/// @nodoc
abstract mixin class _$CourseSessionAttendanceEntityCopyWith<$Res>
    implements $CourseSessionAttendanceEntityCopyWith<$Res> {
  factory _$CourseSessionAttendanceEntityCopyWith(
          _CourseSessionAttendanceEntity value,
          $Res Function(_CourseSessionAttendanceEntity) _then) =
      __$CourseSessionAttendanceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      DutyScheduleEntity? student,
      String? status,
      String? markedAt,
      String? markedBy,
      bool? manualAttendanceOverride,
      double? faceRecognitionConfidence});

  @override
  $DutyScheduleEntityCopyWith<$Res>? get student;
}

/// @nodoc
class __$CourseSessionAttendanceEntityCopyWithImpl<$Res>
    implements _$CourseSessionAttendanceEntityCopyWith<$Res> {
  __$CourseSessionAttendanceEntityCopyWithImpl(this._self, this._then);

  final _CourseSessionAttendanceEntity _self;
  final $Res Function(_CourseSessionAttendanceEntity) _then;

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? status = freezed,
    Object? markedAt = freezed,
    Object? markedBy = freezed,
    Object? manualAttendanceOverride = freezed,
    Object? faceRecognitionConfidence = freezed,
  }) {
    return _then(_CourseSessionAttendanceEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as DutyScheduleEntity?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      markedAt: freezed == markedAt
          ? _self.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      markedBy: freezed == markedBy
          ? _self.markedBy
          : markedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      manualAttendanceOverride: freezed == manualAttendanceOverride
          ? _self.manualAttendanceOverride
          : manualAttendanceOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of CourseSessionAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleEntityCopyWith<$Res>? get student {
    if (_self.student == null) {
      return null;
    }

    return $DutyScheduleEntityCopyWith<$Res>(_self.student!, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

// dart format on
