// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollCourseModel {
  @JsonKey(name: 'enroll_key')
  String? get enrollKey;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EnrollCourseModelCopyWith<EnrollCourseModel> get copyWith =>
      _$EnrollCourseModelCopyWithImpl<EnrollCourseModel>(
          this as EnrollCourseModel, _$identity);

  /// Serializes this EnrollCourseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnrollCourseModel &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseModel(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class $EnrollCourseModelCopyWith<$Res> {
  factory $EnrollCourseModelCopyWith(
          EnrollCourseModel value, $Res Function(EnrollCourseModel) _then) =
      _$EnrollCourseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'enroll_key') String? enrollKey});
}

/// @nodoc
class _$EnrollCourseModelCopyWithImpl<$Res>
    implements $EnrollCourseModelCopyWith<$Res> {
  _$EnrollCourseModelCopyWithImpl(this._self, this._then);

  final EnrollCourseModel _self;
  final $Res Function(EnrollCourseModel) _then;

  /// Create a copy of EnrollCourseModel
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

/// Adds pattern-matching-related methods to [EnrollCourseModel].
extension EnrollCourseModelPatterns on EnrollCourseModel {
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
    TResult Function(_EnrollCourseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel() when $default != null:
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
    TResult Function(_EnrollCourseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel():
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
    TResult? Function(_EnrollCourseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'enroll_key') String? enrollKey)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel() when $default != null:
        return $default(_that.enrollKey);
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
    TResult Function(@JsonKey(name: 'enroll_key') String? enrollKey) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel():
        return $default(_that.enrollKey);
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
    TResult? Function(@JsonKey(name: 'enroll_key') String? enrollKey)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EnrollCourseModel() when $default != null:
        return $default(_that.enrollKey);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EnrollCourseModel implements EnrollCourseModel {
  const _EnrollCourseModel({@JsonKey(name: 'enroll_key') this.enrollKey});
  factory _EnrollCourseModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollCourseModelFromJson(json);

  @override
  @JsonKey(name: 'enroll_key')
  final String? enrollKey;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EnrollCourseModelCopyWith<_EnrollCourseModel> get copyWith =>
      __$EnrollCourseModelCopyWithImpl<_EnrollCourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EnrollCourseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnrollCourseModel &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enrollKey);

  @override
  String toString() {
    return 'EnrollCourseModel(enrollKey: $enrollKey)';
  }
}

/// @nodoc
abstract mixin class _$EnrollCourseModelCopyWith<$Res>
    implements $EnrollCourseModelCopyWith<$Res> {
  factory _$EnrollCourseModelCopyWith(
          _EnrollCourseModel value, $Res Function(_EnrollCourseModel) _then) =
      __$EnrollCourseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'enroll_key') String? enrollKey});
}

/// @nodoc
class __$EnrollCourseModelCopyWithImpl<$Res>
    implements _$EnrollCourseModelCopyWith<$Res> {
  __$EnrollCourseModelCopyWithImpl(this._self, this._then);

  final _EnrollCourseModel _self;
  final $Res Function(_EnrollCourseModel) _then;

  /// Create a copy of EnrollCourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enrollKey = freezed,
  }) {
    return _then(_EnrollCourseModel(
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
