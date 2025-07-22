// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyScheduleListModel {
  String? get days;
  @JsonKey(name: 'laboratory_assistant')
  List<DutyScheduleModel>? get laboratoryAssistant;

  /// Create a copy of DutyScheduleListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyScheduleListModelCopyWith<DutyScheduleListModel> get copyWith =>
      _$DutyScheduleListModelCopyWithImpl<DutyScheduleListModel>(
          this as DutyScheduleListModel, _$identity);

  /// Serializes this DutyScheduleListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyScheduleListModel &&
            (identical(other.days, days) || other.days == days) &&
            const DeepCollectionEquality()
                .equals(other.laboratoryAssistant, laboratoryAssistant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, days,
      const DeepCollectionEquality().hash(laboratoryAssistant));

  @override
  String toString() {
    return 'DutyScheduleListModel(days: $days, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class $DutyScheduleListModelCopyWith<$Res> {
  factory $DutyScheduleListModelCopyWith(DutyScheduleListModel value,
          $Res Function(DutyScheduleListModel) _then) =
      _$DutyScheduleListModelCopyWithImpl;
  @useResult
  $Res call(
      {String? days,
      @JsonKey(name: 'laboratory_assistant')
      List<DutyScheduleModel>? laboratoryAssistant});
}

/// @nodoc
class _$DutyScheduleListModelCopyWithImpl<$Res>
    implements $DutyScheduleListModelCopyWith<$Res> {
  _$DutyScheduleListModelCopyWithImpl(this._self, this._then);

  final DutyScheduleListModel _self;
  final $Res Function(DutyScheduleListModel) _then;

  /// Create a copy of DutyScheduleListModel
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
              as List<DutyScheduleModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DutyScheduleListModel].
extension DutyScheduleListModelPatterns on DutyScheduleListModel {
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
    TResult Function(_DutyScheduleListModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel() when $default != null:
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
    TResult Function(_DutyScheduleListModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel():
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
    TResult? Function(_DutyScheduleListModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel() when $default != null:
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
            List<DutyScheduleModel>? laboratoryAssistant)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel() when $default != null:
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
            List<DutyScheduleModel>? laboratoryAssistant)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel():
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
            List<DutyScheduleModel>? laboratoryAssistant)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyScheduleListModel() when $default != null:
        return $default(_that.days, _that.laboratoryAssistant);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DutyScheduleListModel implements DutyScheduleListModel {
  const _DutyScheduleListModel(
      {this.days,
      @JsonKey(name: 'laboratory_assistant')
      final List<DutyScheduleModel>? laboratoryAssistant})
      : _laboratoryAssistant = laboratoryAssistant;
  factory _DutyScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleListModelFromJson(json);

  @override
  final String? days;
  final List<DutyScheduleModel>? _laboratoryAssistant;
  @override
  @JsonKey(name: 'laboratory_assistant')
  List<DutyScheduleModel>? get laboratoryAssistant {
    final value = _laboratoryAssistant;
    if (value == null) return null;
    if (_laboratoryAssistant is EqualUnmodifiableListView)
      return _laboratoryAssistant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DutyScheduleListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyScheduleListModelCopyWith<_DutyScheduleListModel> get copyWith =>
      __$DutyScheduleListModelCopyWithImpl<_DutyScheduleListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DutyScheduleListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyScheduleListModel &&
            (identical(other.days, days) || other.days == days) &&
            const DeepCollectionEquality()
                .equals(other._laboratoryAssistant, _laboratoryAssistant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, days,
      const DeepCollectionEquality().hash(_laboratoryAssistant));

  @override
  String toString() {
    return 'DutyScheduleListModel(days: $days, laboratoryAssistant: $laboratoryAssistant)';
  }
}

/// @nodoc
abstract mixin class _$DutyScheduleListModelCopyWith<$Res>
    implements $DutyScheduleListModelCopyWith<$Res> {
  factory _$DutyScheduleListModelCopyWith(_DutyScheduleListModel value,
          $Res Function(_DutyScheduleListModel) _then) =
      __$DutyScheduleListModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? days,
      @JsonKey(name: 'laboratory_assistant')
      List<DutyScheduleModel>? laboratoryAssistant});
}

/// @nodoc
class __$DutyScheduleListModelCopyWithImpl<$Res>
    implements _$DutyScheduleListModelCopyWith<$Res> {
  __$DutyScheduleListModelCopyWithImpl(this._self, this._then);

  final _DutyScheduleListModel _self;
  final $Res Function(_DutyScheduleListModel) _then;

  /// Create a copy of DutyScheduleListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? days = freezed,
    Object? laboratoryAssistant = freezed,
  }) {
    return _then(_DutyScheduleListModel(
      days: freezed == days
          ? _self.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      laboratoryAssistant: freezed == laboratoryAssistant
          ? _self._laboratoryAssistant
          : laboratoryAssistant // ignore: cast_nullable_to_non_nullable
              as List<DutyScheduleModel>?,
    ));
  }
}

// dart format on
