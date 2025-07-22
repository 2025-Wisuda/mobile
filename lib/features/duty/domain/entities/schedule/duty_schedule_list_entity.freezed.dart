// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyScheduleListEntity {
  String? get days;
  @JsonKey(name: 'laboratory_assistant')
  List<DutyScheduleEntity>? get laboratoryAssistant;

  /// Create a copy of DutyScheduleListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyScheduleListEntityCopyWith<DutyScheduleListEntity> get copyWith =>
      _$DutyScheduleListEntityCopyWithImpl<DutyScheduleListEntity>(
          this as DutyScheduleListEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyScheduleListEntity &&
            (identical(other.days, days) || other.days == days) &&
            const DeepCollectionEquality()
                .equals(other.laboratoryAssistant, laboratoryAssistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days,
      const DeepCollectionEquality().hash(laboratoryAssistant));

  @override
  String toString() {
    return 'DutyScheduleListEntity(days: $days, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class $DutyScheduleListEntityCopyWith<$Res> {
  factory $DutyScheduleListEntityCopyWith(DutyScheduleListEntity value,
          $Res Function(DutyScheduleListEntity) _then) =
      _$DutyScheduleListEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? days,
      @JsonKey(name: 'laboratory_assistant')
      List<DutyScheduleEntity>? laboratoryAssistant});
}

/// @nodoc
class _$DutyScheduleListEntityCopyWithImpl<$Res>
    implements $DutyScheduleListEntityCopyWith<$Res> {
  _$DutyScheduleListEntityCopyWithImpl(this._self, this._then);

  final DutyScheduleListEntity _self;
  final $Res Function(DutyScheduleListEntity) _then;

  /// Create a copy of DutyScheduleListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_self.copyWith(
      days: freezed == days
          ? _self.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      laboratoryAssistant: freezed == laboratoryAssistant
          ? _self.laboratoryAssistant
          : laboratoryAssistant // ignore: cast_nullable_to_non_nullable
              as List<DutyScheduleEntity>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DutyScheduleListEntity].
extension DutyScheduleListEntityPatterns on DutyScheduleListEntity {
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
    TResult Function(_DutyScheduleListEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity() when $default != null:
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
    TResult Function(_DutyScheduleListEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity():
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
    TResult? Function(_DutyScheduleListEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity() when $default != null:
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
            String? days,
            @JsonKey(name: 'laboratory_assistant')
            List<DutyScheduleEntity>? laboratoryAssistant)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity() when $default != null:
        return $default(_that.days, _that.laboratoryAssistant);
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
            String? days,
            @JsonKey(name: 'laboratory_assistant')
            List<DutyScheduleEntity>? laboratoryAssistant)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity():
        return $default(_that.days, _that.laboratoryAssistant);
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
            String? days,
            @JsonKey(name: 'laboratory_assistant')
            List<DutyScheduleEntity>? laboratoryAssistant)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListEntity() when $default != null:
        return $default(_that.days, _that.laboratoryAssistant);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DutyScheduleListEntity implements DutyScheduleListEntity {
  const _DutyScheduleListEntity(
      {this.days,
      @JsonKey(name: 'laboratory_assistant')
      final List<DutyScheduleEntity>? laboratoryAssistant})
      : _laboratoryAssistant = laboratoryAssistant;

  @override
  final String? days;
  final List<DutyScheduleEntity>? _laboratoryAssistant;
  @override
  @JsonKey(name: 'laboratory_assistant')
  List<DutyScheduleEntity>? get laboratoryAssistant {
    final value = _laboratoryAssistant;
    if (value == null) return null;
    if (_laboratoryAssistant is EqualUnmodifiableListView)
      return _laboratoryAssistant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DutyScheduleListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyScheduleListEntityCopyWith<_DutyScheduleListEntity> get copyWith =>
      __$DutyScheduleListEntityCopyWithImpl<_DutyScheduleListEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyScheduleListEntity &&
            (identical(other.days, days) || other.days == days) &&
            const DeepCollectionEquality()
                .equals(other._laboratoryAssistant, _laboratoryAssistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days,
      const DeepCollectionEquality().hash(_laboratoryAssistant));

  @override
  String toString() {
    return 'DutyScheduleListEntity(days: $days, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class _$DutyScheduleListEntityCopyWith<$Res>
    implements $DutyScheduleListEntityCopyWith<$Res> {
  factory _$DutyScheduleListEntityCopyWith(_DutyScheduleListEntity value,
          $Res Function(_DutyScheduleListEntity) _then) =
      __$DutyScheduleListEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? days,
      @JsonKey(name: 'laboratory_assistant')
      List<DutyScheduleEntity>? laboratoryAssistant});
}

/// @nodoc
class __$DutyScheduleListEntityCopyWithImpl<$Res>
    implements _$DutyScheduleListEntityCopyWith<$Res> {
  __$DutyScheduleListEntityCopyWithImpl(this._self, this._then);

  final _DutyScheduleListEntity _self;
  final $Res Function(_DutyScheduleListEntity) _then;

  /// Create a copy of DutyScheduleListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? days = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_DutyScheduleListEntity(
      days: freezed == days
          ? _self.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      laboratoryAssistant: freezed == laboratoryAssistant
          ? _self._laboratoryAssistant
          : laboratoryAssistant // ignore: cast_nullable_to_non_nullable
              as List<DutyScheduleEntity>?,
    ));
  }
}

// dart format on
