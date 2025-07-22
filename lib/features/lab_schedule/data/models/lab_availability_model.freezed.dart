// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_availability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabAvailabilityModel {
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time')
  String? get endTime;

  /// Create a copy of LabAvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabAvailabilityModelCopyWith<LabAvailabilityModel> get copyWith =>
      _$LabAvailabilityModelCopyWithImpl<LabAvailabilityModel>(
          this as LabAvailabilityModel, _$identity);

  /// Serializes this LabAvailabilityModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabAvailabilityModel &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'LabAvailabilityModel(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class $LabAvailabilityModelCopyWith<$Res> {
  factory $LabAvailabilityModelCopyWith(LabAvailabilityModel value,
          $Res Function(LabAvailabilityModel) _then) =
      _$LabAvailabilityModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class _$LabAvailabilityModelCopyWithImpl<$Res>
    implements $LabAvailabilityModelCopyWith<$Res> {
  _$LabAvailabilityModelCopyWithImpl(this._self, this._then);

  final LabAvailabilityModel _self;
  final $Res Function(LabAvailabilityModel) _then;

  /// Create a copy of LabAvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_self.copyWith(
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LabAvailabilityModel].
extension LabAvailabilityModelPatterns on LabAvailabilityModel {
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
    TResult Function(_LabAvailabilityModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel() when $default != null:
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
    TResult Function(_LabAvailabilityModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel():
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
    TResult? Function(_LabAvailabilityModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel() when $default != null:
        return $default(_that.startTime, _that.endTime);
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
    TResult Function(@JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel():
        return $default(_that.startTime, _that.endTime);
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
    TResult? Function(@JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabAvailabilityModel() when $default != null:
        return $default(_that.startTime, _that.endTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LabAvailabilityModel implements LabAvailabilityModel {
  const _LabAvailabilityModel(
      {@JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime});
  factory _LabAvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$LabAvailabilityModelFromJson(json);

  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;

  /// Create a copy of LabAvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabAvailabilityModelCopyWith<_LabAvailabilityModel> get copyWith =>
      __$LabAvailabilityModelCopyWithImpl<_LabAvailabilityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LabAvailabilityModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabAvailabilityModel &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'LabAvailabilityModel(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class _$LabAvailabilityModelCopyWith<$Res>
    implements $LabAvailabilityModelCopyWith<$Res> {
  factory _$LabAvailabilityModelCopyWith(_LabAvailabilityModel value,
          $Res Function(_LabAvailabilityModel) _then) =
      __$LabAvailabilityModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class __$LabAvailabilityModelCopyWithImpl<$Res>
    implements _$LabAvailabilityModelCopyWith<$Res> {
  __$LabAvailabilityModelCopyWithImpl(this._self, this._then);

  final _LabAvailabilityModel _self;
  final $Res Function(_LabAvailabilityModel) _then;

  /// Create a copy of LabAvailabilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_LabAvailabilityModel(
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
