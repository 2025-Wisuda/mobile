// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyScheduleModel {
  @JsonKey(name: 'avatar', includeIfNull: false)
  String? get avatar;
  @JsonKey(name: 'name', includeIfNull: false)
  String? get name;
  @JsonKey(name: 'student_number', includeIfNull: false)
  String? get studentNumber;
  @JsonKey(name: 'status', includeIfNull: false)
  String? get status;

  /// Create a copy of DutyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyScheduleModelCopyWith<DutyScheduleModel> get copyWith =>
      _$DutyScheduleModelCopyWithImpl<DutyScheduleModel>(
          this as DutyScheduleModel, _$identity);

  /// Serializes this DutyScheduleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyScheduleModel &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, name, studentNumber, status);

  @override
  String toString() {
    return 'DutyScheduleModel(avatar: $avatar, name: $name, studentNumber: $studentNumber, status: $status)';
  }
}

/// @nodoc
abstract mixin class $DutyScheduleModelCopyWith<$Res> {
  factory $DutyScheduleModelCopyWith(
          DutyScheduleModel value, $Res Function(DutyScheduleModel) _then) =
      _$DutyScheduleModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
      @JsonKey(name: 'name', includeIfNull: false) String? name,
      @JsonKey(name: 'student_number', includeIfNull: false)
      String? studentNumber,
      @JsonKey(name: 'status', includeIfNull: false) String? status});
}

/// @nodoc
class _$DutyScheduleModelCopyWithImpl<$Res>
    implements $DutyScheduleModelCopyWith<$Res> {
  _$DutyScheduleModelCopyWithImpl(this._self, this._then);

  final DutyScheduleModel _self;
  final $Res Function(DutyScheduleModel) _then;

  /// Create a copy of DutyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? studentNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DutyScheduleModel].
extension DutyScheduleModelPatterns on DutyScheduleModel {
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
    TResult Function(_DutyScheduleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel() when $default != null:
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
    TResult Function(_DutyScheduleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel():
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
    TResult? Function(_DutyScheduleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel() when $default != null:
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
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'status', includeIfNull: false) String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel() when $default != null:
        return $default(
            _that.avatar, _that.name, _that.studentNumber, _that.status);
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
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'status', includeIfNull: false) String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel():
        return $default(
            _that.avatar, _that.name, _that.studentNumber, _that.status);
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
            @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'student_number', includeIfNull: false)
            String? studentNumber,
            @JsonKey(name: 'status', includeIfNull: false) String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleModel() when $default != null:
        return $default(
            _that.avatar, _that.name, _that.studentNumber, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DutyScheduleModel implements DutyScheduleModel {
  const _DutyScheduleModel(
      {@JsonKey(name: 'avatar', includeIfNull: false) this.avatar,
      @JsonKey(name: 'name', includeIfNull: false) this.name,
      @JsonKey(name: 'student_number', includeIfNull: false) this.studentNumber,
      @JsonKey(name: 'status', includeIfNull: false) this.status});
  factory _DutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleModelFromJson(json);

  @override
  @JsonKey(name: 'avatar', includeIfNull: false)
  final String? avatar;
  @override
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @override
  @JsonKey(name: 'student_number', includeIfNull: false)
  final String? studentNumber;
  @override
  @JsonKey(name: 'status', includeIfNull: false)
  final String? status;

  /// Create a copy of DutyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyScheduleModelCopyWith<_DutyScheduleModel> get copyWith =>
      __$DutyScheduleModelCopyWithImpl<_DutyScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DutyScheduleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyScheduleModel &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, name, studentNumber, status);

  @override
  String toString() {
    return 'DutyScheduleModel(avatar: $avatar, name: $name, studentNumber: $studentNumber, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$DutyScheduleModelCopyWith<$Res>
    implements $DutyScheduleModelCopyWith<$Res> {
  factory _$DutyScheduleModelCopyWith(
          _DutyScheduleModel value, $Res Function(_DutyScheduleModel) _then) =
      __$DutyScheduleModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
      @JsonKey(name: 'name', includeIfNull: false) String? name,
      @JsonKey(name: 'student_number', includeIfNull: false)
      String? studentNumber,
      @JsonKey(name: 'status', includeIfNull: false) String? status});
}

/// @nodoc
class __$DutyScheduleModelCopyWithImpl<$Res>
    implements _$DutyScheduleModelCopyWith<$Res> {
  __$DutyScheduleModelCopyWithImpl(this._self, this._then);

  final _DutyScheduleModel _self;
  final $Res Function(_DutyScheduleModel) _then;

  /// Create a copy of DutyScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? studentNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_DutyScheduleModel(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
