// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSessionAttendanceModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'student')
  DutyScheduleModel? get student;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'marked_at')
  String? get markedAt;
  @JsonKey(name: 'marked_by_name')
  String? get markedBy;
  @JsonKey(name: 'manual_attendance_override')
  bool? get manualAttendanceOverride;
  @JsonKey(name: 'face_recognition_confidence')
  double? get faceRecognitionConfidence;

  /// Create a copy of CourseSessionAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseSessionAttendanceModelCopyWith<CourseSessionAttendanceModel>
      get copyWith => _$CourseSessionAttendanceModelCopyWithImpl<
              CourseSessionAttendanceModel>(
          this as CourseSessionAttendanceModel, _$identity);

  /// Serializes this CourseSessionAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseSessionAttendanceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, student, status, markedAt,
      markedBy, manualAttendanceOverride, faceRecognitionConfidence);

  @override
  String toString() {
    return 'CourseSessionAttendanceModel(id: $id, student: $student, status: $status, markedAt: $markedAt, markedBy: $markedBy, manualAttendanceOverride: $manualAttendanceOverride, faceRecognitionConfidence: $faceRecognitionConfidence)';
  }
}

/// @nodoc
abstract mixin class $CourseSessionAttendanceModelCopyWith<$Res> {
  factory $CourseSessionAttendanceModelCopyWith(
          CourseSessionAttendanceModel value,
          $Res Function(CourseSessionAttendanceModel) _then) =
      _$CourseSessionAttendanceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'student') DutyScheduleModel? student,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'marked_at') String? markedAt,
      @JsonKey(name: 'marked_by_name') String? markedBy,
      @JsonKey(name: 'manual_attendance_override')
      bool? manualAttendanceOverride,
      @JsonKey(name: 'face_recognition_confidence')
      double? faceRecognitionConfidence});

  $DutyScheduleModelCopyWith<$Res>? get student;
}

/// @nodoc
class _$CourseSessionAttendanceModelCopyWithImpl<$Res>
    implements $CourseSessionAttendanceModelCopyWith<$Res> {
  _$CourseSessionAttendanceModelCopyWithImpl(this._self, this._then);

  final CourseSessionAttendanceModel _self;
  final $Res Function(CourseSessionAttendanceModel) _then;

  /// Create a copy of CourseSessionAttendanceModel
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
              as DutyScheduleModel?,
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

  /// Create a copy of CourseSessionAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleModelCopyWith<$Res>? get student {
    if (_self.student == null) {
      return null;
    }

    return $DutyScheduleModelCopyWith<$Res>(_self.student!, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CourseSessionAttendanceModel].
extension CourseSessionAttendanceModelPatterns on CourseSessionAttendanceModel {
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
    TResult Function(_CourseSessionAttendanceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel() when $default != null:
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
    TResult Function(_CourseSessionAttendanceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel():
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
    TResult? Function(_CourseSessionAttendanceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'student') DutyScheduleModel? student,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'marked_at') String? markedAt,
            @JsonKey(name: 'marked_by_name') String? markedBy,
            @JsonKey(name: 'manual_attendance_override')
            bool? manualAttendanceOverride,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'student') DutyScheduleModel? student,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'marked_at') String? markedAt,
            @JsonKey(name: 'marked_by_name') String? markedBy,
            @JsonKey(name: 'manual_attendance_override')
            bool? manualAttendanceOverride,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel():
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'student') DutyScheduleModel? student,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'marked_at') String? markedAt,
            @JsonKey(name: 'marked_by_name') String? markedBy,
            @JsonKey(name: 'manual_attendance_override')
            bool? manualAttendanceOverride,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionAttendanceModel() when $default != null:
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
@JsonSerializable()
class _CourseSessionAttendanceModel implements CourseSessionAttendanceModel {
  const _CourseSessionAttendanceModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'student') this.student,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'marked_at') this.markedAt,
      @JsonKey(name: 'marked_by_name') this.markedBy,
      @JsonKey(name: 'manual_attendance_override')
      this.manualAttendanceOverride,
      @JsonKey(name: 'face_recognition_confidence')
      this.faceRecognitionConfidence});
  factory _CourseSessionAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionAttendanceModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'student')
  final DutyScheduleModel? student;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'marked_at')
  final String? markedAt;
  @override
  @JsonKey(name: 'marked_by_name')
  final String? markedBy;
  @override
  @JsonKey(name: 'manual_attendance_override')
  final bool? manualAttendanceOverride;
  @override
  @JsonKey(name: 'face_recognition_confidence')
  final double? faceRecognitionConfidence;

  /// Create a copy of CourseSessionAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseSessionAttendanceModelCopyWith<_CourseSessionAttendanceModel>
      get copyWith => __$CourseSessionAttendanceModelCopyWithImpl<
          _CourseSessionAttendanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseSessionAttendanceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseSessionAttendanceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, student, status, markedAt,
      markedBy, manualAttendanceOverride, faceRecognitionConfidence);

  @override
  String toString() {
    return 'CourseSessionAttendanceModel(id: $id, student: $student, status: $status, markedAt: $markedAt, markedBy: $markedBy, manualAttendanceOverride: $manualAttendanceOverride, faceRecognitionConfidence: $faceRecognitionConfidence)';
  }
}

/// @nodoc
abstract mixin class _$CourseSessionAttendanceModelCopyWith<$Res>
    implements $CourseSessionAttendanceModelCopyWith<$Res> {
  factory _$CourseSessionAttendanceModelCopyWith(
          _CourseSessionAttendanceModel value,
          $Res Function(_CourseSessionAttendanceModel) _then) =
      __$CourseSessionAttendanceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'student') DutyScheduleModel? student,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'marked_at') String? markedAt,
      @JsonKey(name: 'marked_by_name') String? markedBy,
      @JsonKey(name: 'manual_attendance_override')
      bool? manualAttendanceOverride,
      @JsonKey(name: 'face_recognition_confidence')
      double? faceRecognitionConfidence});

  @override
  $DutyScheduleModelCopyWith<$Res>? get student;
}

/// @nodoc
class __$CourseSessionAttendanceModelCopyWithImpl<$Res>
    implements _$CourseSessionAttendanceModelCopyWith<$Res> {
  __$CourseSessionAttendanceModelCopyWithImpl(this._self, this._then);

  final _CourseSessionAttendanceModel _self;
  final $Res Function(_CourseSessionAttendanceModel) _then;

  /// Create a copy of CourseSessionAttendanceModel
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
    return _then(_CourseSessionAttendanceModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as DutyScheduleModel?,
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

  /// Create a copy of CourseSessionAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleModelCopyWith<$Res>? get student {
    if (_self.student == null) {
      return null;
    }

    return $DutyScheduleModelCopyWith<$Res>(_self.student!, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

// dart format on
