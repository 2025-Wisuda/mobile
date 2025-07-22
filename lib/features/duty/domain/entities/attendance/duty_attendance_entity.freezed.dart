// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_attendance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyAttendanceEntity {
  String? get id;
  String? get date;
  String? get startTime;
  String? get endTime;
  String? get clockInTime;
  String? get clockOutTime;
  String? get status;
  String? get otpValidatedAt;
  double? get faceRecognitionConfidence;
  bool? get manualClockInOverride;
  bool? get manualClockOutOverride;
  DutyScheduleEntity? get laboratoryAssistant;

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyAttendanceEntityCopyWith<DutyAttendanceEntity> get copyWith =>
      _$DutyAttendanceEntityCopyWithImpl<DutyAttendanceEntity>(
          this as DutyAttendanceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyAttendanceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.clockInTime, clockInTime) ||
                other.clockInTime == clockInTime) &&
            (identical(other.clockOutTime, clockOutTime) ||
                other.clockOutTime == clockOutTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.otpValidatedAt, otpValidatedAt) ||
                other.otpValidatedAt == otpValidatedAt) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence) &&
            (identical(other.manualClockInOverride, manualClockInOverride) ||
                other.manualClockInOverride == manualClockInOverride) &&
            (identical(other.manualClockOutOverride, manualClockOutOverride) ||
                other.manualClockOutOverride == manualClockOutOverride) &&
            (identical(other.laboratoryAssistant, laboratoryAssistant) ||
                other.laboratoryAssistant == laboratoryAssistant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      startTime,
      endTime,
      clockInTime,
      clockOutTime,
      status,
      otpValidatedAt,
      faceRecognitionConfidence,
      manualClockInOverride,
      manualClockOutOverride,
      laboratoryAssistant);

  @override
  String toString() {
    return 'DutyAttendanceEntity(id: $id, date: $date, startTime: $startTime, endTime: $endTime, clockInTime: $clockInTime, clockOutTime: $clockOutTime, status: $status, otpValidatedAt: $otpValidatedAt, faceRecognitionConfidence: $faceRecognitionConfidence, manualClockInOverride: $manualClockInOverride, manualClockOutOverride: $manualClockOutOverride, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class $DutyAttendanceEntityCopyWith<$Res> {
  factory $DutyAttendanceEntityCopyWith(DutyAttendanceEntity value,
          $Res Function(DutyAttendanceEntity) _then) =
      _$DutyAttendanceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? startTime,
      String? endTime,
      String? clockInTime,
      String? clockOutTime,
      String? status,
      String? otpValidatedAt,
      double? faceRecognitionConfidence,
      bool? manualClockInOverride,
      bool? manualClockOutOverride,
      DutyScheduleEntity? laboratoryAssistant});

  $DutyScheduleEntityCopyWith<$Res>? get laboratoryAssistant;
}

/// @nodoc
class _$DutyAttendanceEntityCopyWithImpl<$Res>
    implements $DutyAttendanceEntityCopyWith<$Res> {
  _$DutyAttendanceEntityCopyWithImpl(this._self, this._then);

  final DutyAttendanceEntity _self;
  final $Res Function(DutyAttendanceEntity) _then;

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? clockInTime = freezed,
    Object? clockOutTime = freezed,
    Object? status = freezed,
    Object? otpValidatedAt = freezed,
    Object? faceRecognitionConfidence = freezed,
    Object? manualClockInOverride = freezed,
    Object? manualClockOutOverride = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInTime: freezed == clockInTime
          ? _self.clockInTime
          : clockInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutTime: freezed == clockOutTime
          ? _self.clockOutTime
          : clockOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      otpValidatedAt: freezed == otpValidatedAt
          ? _self.otpValidatedAt
          : otpValidatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      manualClockInOverride: freezed == manualClockInOverride
          ? _self.manualClockInOverride
          : manualClockInOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      manualClockOutOverride: freezed == manualClockOutOverride
          ? _self.manualClockOutOverride
          : manualClockOutOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      laboratoryAssistant: freezed == laboratoryAssistant
          ? _self.laboratoryAssistant
          : laboratoryAssistant // ignore: cast_nullable_to_non_nullable
              as DutyScheduleEntity?,
    ));
  }

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleEntityCopyWith<$Res>? get laboratoryAssistant {
    if (_self.laboratoryAssistant == null) {
      return null;
    }

    return $DutyScheduleEntityCopyWith<$Res>(_self.laboratoryAssistant!,
        (value) {
      return _then(_self.copyWith(laboratoryAssistant: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DutyAttendanceEntity].
extension DutyAttendanceEntityPatterns on DutyAttendanceEntity {
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
    TResult Function(_DutyAttendanceEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity() when $default != null:
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
    TResult Function(_DutyAttendanceEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity():
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
    TResult? Function(_DutyAttendanceEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity() when $default != null:
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
            String? date,
            String? startTime,
            String? endTime,
            String? clockInTime,
            String? clockOutTime,
            String? status,
            String? otpValidatedAt,
            double? faceRecognitionConfidence,
            bool? manualClockInOverride,
            bool? manualClockOutOverride,
            DutyScheduleEntity? laboratoryAssistant)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.status,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.manualClockInOverride,
            _that.manualClockOutOverride,
            _that.laboratoryAssistant);
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
            String? date,
            String? startTime,
            String? endTime,
            String? clockInTime,
            String? clockOutTime,
            String? status,
            String? otpValidatedAt,
            double? faceRecognitionConfidence,
            bool? manualClockInOverride,
            bool? manualClockOutOverride,
            DutyScheduleEntity? laboratoryAssistant)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity():
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.status,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.manualClockInOverride,
            _that.manualClockOutOverride,
            _that.laboratoryAssistant);
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
            String? date,
            String? startTime,
            String? endTime,
            String? clockInTime,
            String? clockOutTime,
            String? status,
            String? otpValidatedAt,
            double? faceRecognitionConfidence,
            bool? manualClockInOverride,
            bool? manualClockOutOverride,
            DutyScheduleEntity? laboratoryAssistant)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceEntity() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.status,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.manualClockInOverride,
            _that.manualClockOutOverride,
            _that.laboratoryAssistant);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DutyAttendanceEntity implements DutyAttendanceEntity {
  const _DutyAttendanceEntity(
      {this.id,
      this.date,
      this.startTime,
      this.endTime,
      this.clockInTime,
      this.clockOutTime,
      this.status,
      this.otpValidatedAt,
      this.faceRecognitionConfidence,
      this.manualClockInOverride,
      this.manualClockOutOverride,
      this.laboratoryAssistant});

  @override
  final String? id;
  @override
  final String? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? clockInTime;
  @override
  final String? clockOutTime;
  @override
  final String? status;
  @override
  final String? otpValidatedAt;
  @override
  final double? faceRecognitionConfidence;
  @override
  final bool? manualClockInOverride;
  @override
  final bool? manualClockOutOverride;
  @override
  final DutyScheduleEntity? laboratoryAssistant;

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyAttendanceEntityCopyWith<_DutyAttendanceEntity> get copyWith =>
      __$DutyAttendanceEntityCopyWithImpl<_DutyAttendanceEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyAttendanceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.clockInTime, clockInTime) ||
                other.clockInTime == clockInTime) &&
            (identical(other.clockOutTime, clockOutTime) ||
                other.clockOutTime == clockOutTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.otpValidatedAt, otpValidatedAt) ||
                other.otpValidatedAt == otpValidatedAt) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence) &&
            (identical(other.manualClockInOverride, manualClockInOverride) ||
                other.manualClockInOverride == manualClockInOverride) &&
            (identical(other.manualClockOutOverride, manualClockOutOverride) ||
                other.manualClockOutOverride == manualClockOutOverride) &&
            (identical(other.laboratoryAssistant, laboratoryAssistant) ||
                other.laboratoryAssistant == laboratoryAssistant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      startTime,
      endTime,
      clockInTime,
      clockOutTime,
      status,
      otpValidatedAt,
      faceRecognitionConfidence,
      manualClockInOverride,
      manualClockOutOverride,
      laboratoryAssistant);

  @override
  String toString() {
    return 'DutyAttendanceEntity(id: $id, date: $date, startTime: $startTime, endTime: $endTime, clockInTime: $clockInTime, clockOutTime: $clockOutTime, status: $status, otpValidatedAt: $otpValidatedAt, faceRecognitionConfidence: $faceRecognitionConfidence, manualClockInOverride: $manualClockInOverride, manualClockOutOverride: $manualClockOutOverride, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class _$DutyAttendanceEntityCopyWith<$Res>
    implements $DutyAttendanceEntityCopyWith<$Res> {
  factory _$DutyAttendanceEntityCopyWith(_DutyAttendanceEntity value,
          $Res Function(_DutyAttendanceEntity) _then) =
      __$DutyAttendanceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? startTime,
      String? endTime,
      String? clockInTime,
      String? clockOutTime,
      String? status,
      String? otpValidatedAt,
      double? faceRecognitionConfidence,
      bool? manualClockInOverride,
      bool? manualClockOutOverride,
      DutyScheduleEntity? laboratoryAssistant});

  @override
  $DutyScheduleEntityCopyWith<$Res>? get laboratoryAssistant;
}

/// @nodoc
class __$DutyAttendanceEntityCopyWithImpl<$Res>
    implements _$DutyAttendanceEntityCopyWith<$Res> {
  __$DutyAttendanceEntityCopyWithImpl(this._self, this._then);

  final _DutyAttendanceEntity _self;
  final $Res Function(_DutyAttendanceEntity) _then;

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? clockInTime = freezed,
    Object? clockOutTime = freezed,
    Object? status = freezed,
    Object? otpValidatedAt = freezed,
    Object? faceRecognitionConfidence = freezed,
    Object? manualClockInOverride = freezed,
    Object? manualClockOutOverride = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_DutyAttendanceEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clockInTime: freezed == clockInTime
          ? _self.clockInTime
          : clockInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clockOutTime: freezed == clockOutTime
          ? _self.clockOutTime
          : clockOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      otpValidatedAt: freezed == otpValidatedAt
          ? _self.otpValidatedAt
          : otpValidatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      manualClockInOverride: freezed == manualClockInOverride
          ? _self.manualClockInOverride
          : manualClockInOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      manualClockOutOverride: freezed == manualClockOutOverride
          ? _self.manualClockOutOverride
          : manualClockOutOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      laboratoryAssistant: freezed == laboratoryAssistant
          ? _self.laboratoryAssistant
          : laboratoryAssistant // ignore: cast_nullable_to_non_nullable
              as DutyScheduleEntity?,
    ));
  }

  /// Create a copy of DutyAttendanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleEntityCopyWith<$Res>? get laboratoryAssistant {
    if (_self.laboratoryAssistant == null) {
      return null;
    }

    return $DutyScheduleEntityCopyWith<$Res>(_self.laboratoryAssistant!,
        (value) {
      return _then(_self.copyWith(laboratoryAssistant: value));
    });
  }
}

// dart format on
