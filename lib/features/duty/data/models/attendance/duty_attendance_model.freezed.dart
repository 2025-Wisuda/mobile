// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyAttendanceModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'date')
  String? get date;
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time')
  String? get endTime;
  @JsonKey(name: 'clock_in_time')
  String? get clockInTime;
  @JsonKey(name: 'clock_out_time')
  String? get clockOutTime;
  @JsonKey(name: 'otp_validated_at')
  String? get otpValidatedAt;
  @JsonKey(name: 'face_recognition_confidence')
  double? get faceRecognitionConfidence;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'manual_clock_in_override')
  bool? get manualClockInOverride;
  @JsonKey(name: 'manual_clock_out_override')
  bool? get manualClockOutOverride;
  @JsonKey(name: 'laboratory_assistant')
  DutyScheduleModel? get laboratoryAssistant;

  /// Create a copy of DutyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyAttendanceModelCopyWith<DutyAttendanceModel> get copyWith =>
      _$DutyAttendanceModelCopyWithImpl<DutyAttendanceModel>(
          this as DutyAttendanceModel, _$identity);

  /// Serializes this DutyAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyAttendanceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.clockInTime, clockInTime) ||
                other.clockInTime == clockInTime) &&
            (identical(other.clockOutTime, clockOutTime) ||
                other.clockOutTime == clockOutTime) &&
            (identical(other.otpValidatedAt, otpValidatedAt) ||
                other.otpValidatedAt == otpValidatedAt) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.manualClockInOverride, manualClockInOverride) ||
                other.manualClockInOverride == manualClockInOverride) &&
            (identical(other.manualClockOutOverride, manualClockOutOverride) ||
                other.manualClockOutOverride == manualClockOutOverride) &&
            (identical(other.laboratoryAssistant, laboratoryAssistant) ||
                other.laboratoryAssistant == laboratoryAssistant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      startTime,
      endTime,
      clockInTime,
      clockOutTime,
      otpValidatedAt,
      faceRecognitionConfidence,
      status,
      manualClockInOverride,
      manualClockOutOverride,
      laboratoryAssistant);

  @override
  String toString() {
    return 'DutyAttendanceModel(id: $id, date: $date, startTime: $startTime, endTime: $endTime, clockInTime: $clockInTime, clockOutTime: $clockOutTime, otpValidatedAt: $otpValidatedAt, faceRecognitionConfidence: $faceRecognitionConfidence, status: $status, manualClockInOverride: $manualClockInOverride, manualClockOutOverride: $manualClockOutOverride, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class $DutyAttendanceModelCopyWith<$Res> {
  factory $DutyAttendanceModelCopyWith(
          DutyAttendanceModel value, $Res Function(DutyAttendanceModel) _then) =
      _$DutyAttendanceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'clock_in_time') String? clockInTime,
      @JsonKey(name: 'clock_out_time') String? clockOutTime,
      @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
      @JsonKey(name: 'face_recognition_confidence')
      double? faceRecognitionConfidence,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'manual_clock_in_override') bool? manualClockInOverride,
      @JsonKey(name: 'manual_clock_out_override') bool? manualClockOutOverride,
      @JsonKey(name: 'laboratory_assistant')
      DutyScheduleModel? laboratoryAssistant});

  $DutyScheduleModelCopyWith<$Res>? get laboratoryAssistant;
}

/// @nodoc
class _$DutyAttendanceModelCopyWithImpl<$Res>
    implements $DutyAttendanceModelCopyWith<$Res> {
  _$DutyAttendanceModelCopyWithImpl(this._self, this._then);

  final DutyAttendanceModel _self;
  final $Res Function(DutyAttendanceModel) _then;

  /// Create a copy of DutyAttendanceModel
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
    Object? otpValidatedAt = freezed,
    Object? faceRecognitionConfidence = freezed,
    Object? status = freezed,
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
      otpValidatedAt: freezed == otpValidatedAt
          ? _self.otpValidatedAt
          : otpValidatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DutyScheduleModel?,
    ));
  }

  /// Create a copy of DutyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleModelCopyWith<$Res>? get laboratoryAssistant {
    if (_self.laboratoryAssistant == null) {
      return null;
    }

    return $DutyScheduleModelCopyWith<$Res>(_self.laboratoryAssistant!,
        (value) {
      return _then(_self.copyWith(laboratoryAssistant: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DutyAttendanceModel].
extension DutyAttendanceModelPatterns on DutyAttendanceModel {
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
    TResult Function(_DutyAttendanceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel() when $default != null:
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
    TResult Function(_DutyAttendanceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel():
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
    TResult? Function(_DutyAttendanceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel() when $default != null:
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
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'clock_in_time') String? clockInTime,
            @JsonKey(name: 'clock_out_time') String? clockOutTime,
            @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'manual_clock_in_override')
            bool? manualClockInOverride,
            @JsonKey(name: 'manual_clock_out_override')
            bool? manualClockOutOverride,
            @JsonKey(name: 'laboratory_assistant')
            DutyScheduleModel? laboratoryAssistant)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.status,
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'clock_in_time') String? clockInTime,
            @JsonKey(name: 'clock_out_time') String? clockOutTime,
            @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'manual_clock_in_override')
            bool? manualClockInOverride,
            @JsonKey(name: 'manual_clock_out_override')
            bool? manualClockOutOverride,
            @JsonKey(name: 'laboratory_assistant')
            DutyScheduleModel? laboratoryAssistant)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel():
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.status,
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'clock_in_time') String? clockInTime,
            @JsonKey(name: 'clock_out_time') String? clockOutTime,
            @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
            @JsonKey(name: 'face_recognition_confidence')
            double? faceRecognitionConfidence,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'manual_clock_in_override')
            bool? manualClockInOverride,
            @JsonKey(name: 'manual_clock_out_override')
            bool? manualClockOutOverride,
            @JsonKey(name: 'laboratory_assistant')
            DutyScheduleModel? laboratoryAssistant)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceModel() when $default != null:
        return $default(
            _that.id,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.clockInTime,
            _that.clockOutTime,
            _that.otpValidatedAt,
            _that.faceRecognitionConfidence,
            _that.status,
            _that.manualClockInOverride,
            _that.manualClockOutOverride,
            _that.laboratoryAssistant);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DutyAttendanceModel implements DutyAttendanceModel {
  const _DutyAttendanceModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'clock_in_time') this.clockInTime,
      @JsonKey(name: 'clock_out_time') this.clockOutTime,
      @JsonKey(name: 'otp_validated_at') this.otpValidatedAt,
      @JsonKey(name: 'face_recognition_confidence')
      this.faceRecognitionConfidence,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'manual_clock_in_override') this.manualClockInOverride,
      @JsonKey(name: 'manual_clock_out_override') this.manualClockOutOverride,
      @JsonKey(name: 'laboratory_assistant') this.laboratoryAssistant});
  factory _DutyAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$DutyAttendanceModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'clock_in_time')
  final String? clockInTime;
  @override
  @JsonKey(name: 'clock_out_time')
  final String? clockOutTime;
  @override
  @JsonKey(name: 'otp_validated_at')
  final String? otpValidatedAt;
  @override
  @JsonKey(name: 'face_recognition_confidence')
  final double? faceRecognitionConfidence;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'manual_clock_in_override')
  final bool? manualClockInOverride;
  @override
  @JsonKey(name: 'manual_clock_out_override')
  final bool? manualClockOutOverride;
  @override
  @JsonKey(name: 'laboratory_assistant')
  final DutyScheduleModel? laboratoryAssistant;

  /// Create a copy of DutyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyAttendanceModelCopyWith<_DutyAttendanceModel> get copyWith =>
      __$DutyAttendanceModelCopyWithImpl<_DutyAttendanceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DutyAttendanceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyAttendanceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.clockInTime, clockInTime) ||
                other.clockInTime == clockInTime) &&
            (identical(other.clockOutTime, clockOutTime) ||
                other.clockOutTime == clockOutTime) &&
            (identical(other.otpValidatedAt, otpValidatedAt) ||
                other.otpValidatedAt == otpValidatedAt) &&
            (identical(other.faceRecognitionConfidence,
                    faceRecognitionConfidence) ||
                other.faceRecognitionConfidence == faceRecognitionConfidence) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.manualClockInOverride, manualClockInOverride) ||
                other.manualClockInOverride == manualClockInOverride) &&
            (identical(other.manualClockOutOverride, manualClockOutOverride) ||
                other.manualClockOutOverride == manualClockOutOverride) &&
            (identical(other.laboratoryAssistant, laboratoryAssistant) ||
                other.laboratoryAssistant == laboratoryAssistant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      startTime,
      endTime,
      clockInTime,
      clockOutTime,
      otpValidatedAt,
      faceRecognitionConfidence,
      status,
      manualClockInOverride,
      manualClockOutOverride,
      laboratoryAssistant);

  @override
  String toString() {
    return 'DutyAttendanceModel(id: $id, date: $date, startTime: $startTime, endTime: $endTime, clockInTime: $clockInTime, clockOutTime: $clockOutTime, otpValidatedAt: $otpValidatedAt, faceRecognitionConfidence: $faceRecognitionConfidence, status: $status, manualClockInOverride: $manualClockInOverride, manualClockOutOverride: $manualClockOutOverride, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class _$DutyAttendanceModelCopyWith<$Res>
    implements $DutyAttendanceModelCopyWith<$Res> {
  factory _$DutyAttendanceModelCopyWith(_DutyAttendanceModel value,
          $Res Function(_DutyAttendanceModel) _then) =
      __$DutyAttendanceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'clock_in_time') String? clockInTime,
      @JsonKey(name: 'clock_out_time') String? clockOutTime,
      @JsonKey(name: 'otp_validated_at') String? otpValidatedAt,
      @JsonKey(name: 'face_recognition_confidence')
      double? faceRecognitionConfidence,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'manual_clock_in_override') bool? manualClockInOverride,
      @JsonKey(name: 'manual_clock_out_override') bool? manualClockOutOverride,
      @JsonKey(name: 'laboratory_assistant')
      DutyScheduleModel? laboratoryAssistant});

  @override
  $DutyScheduleModelCopyWith<$Res>? get laboratoryAssistant;
}

/// @nodoc
class __$DutyAttendanceModelCopyWithImpl<$Res>
    implements _$DutyAttendanceModelCopyWith<$Res> {
  __$DutyAttendanceModelCopyWithImpl(this._self, this._then);

  final _DutyAttendanceModel _self;
  final $Res Function(_DutyAttendanceModel) _then;

  /// Create a copy of DutyAttendanceModel
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
    Object? otpValidatedAt = freezed,
    Object? faceRecognitionConfidence = freezed,
    Object? status = freezed,
    Object? manualClockInOverride = freezed,
    Object? manualClockOutOverride = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_DutyAttendanceModel(
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
      otpValidatedAt: freezed == otpValidatedAt
          ? _self.otpValidatedAt
          : otpValidatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionConfidence: freezed == faceRecognitionConfidence
          ? _self.faceRecognitionConfidence
          : faceRecognitionConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DutyScheduleModel?,
    ));
  }

  /// Create a copy of DutyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DutyScheduleModelCopyWith<$Res>? get laboratoryAssistant {
    if (_self.laboratoryAssistant == null) {
      return null;
    }

    return $DutyScheduleModelCopyWith<$Res>(_self.laboratoryAssistant!,
        (value) {
      return _then(_self.copyWith(laboratoryAssistant: value));
    });
  }
}

// dart format on
