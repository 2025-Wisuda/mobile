// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_quality_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaceQualityEntity {
  FaceQualityLevelEnum get level;
  double get area;
  double get aspectRatio;
  bool get isWellProportioned;
  double? get headYaw;
  double? get headPitch;
  double? get headRoll;
  double? get leftEyeOpenProbability;
  double? get rightEyeOpenProbability;
  double? get smilingProbability;
  double? get brightness;
  double? get sharpness;
  bool? get isCentered;
  bool? get hasMultipleFaces;
  List<FaceQualityIssueEnum>? get issues;
  String? get center;

  /// Create a copy of FaceQualityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceQualityEntityCopyWith<FaceQualityEntity> get copyWith =>
      _$FaceQualityEntityCopyWithImpl<FaceQualityEntity>(
          this as FaceQualityEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceQualityEntity &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.isWellProportioned, isWellProportioned) ||
                other.isWellProportioned == isWellProportioned) &&
            (identical(other.headYaw, headYaw) || other.headYaw == headYaw) &&
            (identical(other.headPitch, headPitch) ||
                other.headPitch == headPitch) &&
            (identical(other.headRoll, headRoll) ||
                other.headRoll == headRoll) &&
            (identical(other.leftEyeOpenProbability, leftEyeOpenProbability) ||
                other.leftEyeOpenProbability == leftEyeOpenProbability) &&
            (identical(
                    other.rightEyeOpenProbability, rightEyeOpenProbability) ||
                other.rightEyeOpenProbability == rightEyeOpenProbability) &&
            (identical(other.smilingProbability, smilingProbability) ||
                other.smilingProbability == smilingProbability) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.sharpness, sharpness) ||
                other.sharpness == sharpness) &&
            (identical(other.isCentered, isCentered) ||
                other.isCentered == isCentered) &&
            (identical(other.hasMultipleFaces, hasMultipleFaces) ||
                other.hasMultipleFaces == hasMultipleFaces) &&
            const DeepCollectionEquality().equals(other.issues, issues) &&
            (identical(other.center, center) || other.center == center));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      area,
      aspectRatio,
      isWellProportioned,
      headYaw,
      headPitch,
      headRoll,
      leftEyeOpenProbability,
      rightEyeOpenProbability,
      smilingProbability,
      brightness,
      sharpness,
      isCentered,
      hasMultipleFaces,
      const DeepCollectionEquality().hash(issues),
      center);

  @override
  String toString() {
    return 'FaceQualityEntity(level: $level, area: $area, aspectRatio: $aspectRatio, isWellProportioned: $isWellProportioned, headYaw: $headYaw, headPitch: $headPitch, headRoll: $headRoll, leftEyeOpenProbability: $leftEyeOpenProbability, rightEyeOpenProbability: $rightEyeOpenProbability, smilingProbability: $smilingProbability, brightness: $brightness, sharpness: $sharpness, isCentered: $isCentered, hasMultipleFaces: $hasMultipleFaces, issues: $issues, center: $center)';
  }
}

/// @nodoc
abstract mixin class $FaceQualityEntityCopyWith<$Res> {
  factory $FaceQualityEntityCopyWith(
          FaceQualityEntity value, $Res Function(FaceQualityEntity) _then) =
      _$FaceQualityEntityCopyWithImpl;
  @useResult
  $Res call(
      {FaceQualityLevelEnum level,
      double area,
      double aspectRatio,
      bool isWellProportioned,
      double? headYaw,
      double? headPitch,
      double? headRoll,
      double? leftEyeOpenProbability,
      double? rightEyeOpenProbability,
      double? smilingProbability,
      double? brightness,
      double? sharpness,
      bool? isCentered,
      bool? hasMultipleFaces,
      List<FaceQualityIssueEnum>? issues,
      String? center});
}

/// @nodoc
class _$FaceQualityEntityCopyWithImpl<$Res>
    implements $FaceQualityEntityCopyWith<$Res> {
  _$FaceQualityEntityCopyWithImpl(this._self, this._then);

  final FaceQualityEntity _self;
  final $Res Function(FaceQualityEntity) _then;

  /// Create a copy of FaceQualityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? area = null,
    Object? aspectRatio = null,
    Object? isWellProportioned = null,
    Object? headYaw = freezed,
    Object? headPitch = freezed,
    Object? headRoll = freezed,
    Object? leftEyeOpenProbability = freezed,
    Object? rightEyeOpenProbability = freezed,
    Object? smilingProbability = freezed,
    Object? brightness = freezed,
    Object? sharpness = freezed,
    Object? isCentered = freezed,
    Object? hasMultipleFaces = freezed,
    Object? issues = freezed,
    Object? center = freezed,
  }) {
    return _then(_self.copyWith(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as FaceQualityLevelEnum,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatio: null == aspectRatio
          ? _self.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isWellProportioned: null == isWellProportioned
          ? _self.isWellProportioned
          : isWellProportioned // ignore: cast_nullable_to_non_nullable
              as bool,
      headYaw: freezed == headYaw
          ? _self.headYaw
          : headYaw // ignore: cast_nullable_to_non_nullable
              as double?,
      headPitch: freezed == headPitch
          ? _self.headPitch
          : headPitch // ignore: cast_nullable_to_non_nullable
              as double?,
      headRoll: freezed == headRoll
          ? _self.headRoll
          : headRoll // ignore: cast_nullable_to_non_nullable
              as double?,
      leftEyeOpenProbability: freezed == leftEyeOpenProbability
          ? _self.leftEyeOpenProbability
          : leftEyeOpenProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      rightEyeOpenProbability: freezed == rightEyeOpenProbability
          ? _self.rightEyeOpenProbability
          : rightEyeOpenProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      smilingProbability: freezed == smilingProbability
          ? _self.smilingProbability
          : smilingProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      brightness: freezed == brightness
          ? _self.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double?,
      sharpness: freezed == sharpness
          ? _self.sharpness
          : sharpness // ignore: cast_nullable_to_non_nullable
              as double?,
      isCentered: freezed == isCentered
          ? _self.isCentered
          : isCentered // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMultipleFaces: freezed == hasMultipleFaces
          ? _self.hasMultipleFaces
          : hasMultipleFaces // ignore: cast_nullable_to_non_nullable
              as bool?,
      issues: freezed == issues
          ? _self.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<FaceQualityIssueEnum>?,
      center: freezed == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaceQualityEntity].
extension FaceQualityEntityPatterns on FaceQualityEntity {
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
    TResult Function(_FaceQualityEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity() when $default != null:
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
    TResult Function(_FaceQualityEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity():
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
    TResult? Function(_FaceQualityEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity() when $default != null:
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
            FaceQualityLevelEnum level,
            double area,
            double aspectRatio,
            bool isWellProportioned,
            double? headYaw,
            double? headPitch,
            double? headRoll,
            double? leftEyeOpenProbability,
            double? rightEyeOpenProbability,
            double? smilingProbability,
            double? brightness,
            double? sharpness,
            bool? isCentered,
            bool? hasMultipleFaces,
            List<FaceQualityIssueEnum>? issues,
            String? center)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity() when $default != null:
        return $default(
            _that.level,
            _that.area,
            _that.aspectRatio,
            _that.isWellProportioned,
            _that.headYaw,
            _that.headPitch,
            _that.headRoll,
            _that.leftEyeOpenProbability,
            _that.rightEyeOpenProbability,
            _that.smilingProbability,
            _that.brightness,
            _that.sharpness,
            _that.isCentered,
            _that.hasMultipleFaces,
            _that.issues,
            _that.center);
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
            FaceQualityLevelEnum level,
            double area,
            double aspectRatio,
            bool isWellProportioned,
            double? headYaw,
            double? headPitch,
            double? headRoll,
            double? leftEyeOpenProbability,
            double? rightEyeOpenProbability,
            double? smilingProbability,
            double? brightness,
            double? sharpness,
            bool? isCentered,
            bool? hasMultipleFaces,
            List<FaceQualityIssueEnum>? issues,
            String? center)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity():
        return $default(
            _that.level,
            _that.area,
            _that.aspectRatio,
            _that.isWellProportioned,
            _that.headYaw,
            _that.headPitch,
            _that.headRoll,
            _that.leftEyeOpenProbability,
            _that.rightEyeOpenProbability,
            _that.smilingProbability,
            _that.brightness,
            _that.sharpness,
            _that.isCentered,
            _that.hasMultipleFaces,
            _that.issues,
            _that.center);
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
            FaceQualityLevelEnum level,
            double area,
            double aspectRatio,
            bool isWellProportioned,
            double? headYaw,
            double? headPitch,
            double? headRoll,
            double? leftEyeOpenProbability,
            double? rightEyeOpenProbability,
            double? smilingProbability,
            double? brightness,
            double? sharpness,
            bool? isCentered,
            bool? hasMultipleFaces,
            List<FaceQualityIssueEnum>? issues,
            String? center)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityEntity() when $default != null:
        return $default(
            _that.level,
            _that.area,
            _that.aspectRatio,
            _that.isWellProportioned,
            _that.headYaw,
            _that.headPitch,
            _that.headRoll,
            _that.leftEyeOpenProbability,
            _that.rightEyeOpenProbability,
            _that.smilingProbability,
            _that.brightness,
            _that.sharpness,
            _that.isCentered,
            _that.hasMultipleFaces,
            _that.issues,
            _that.center);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FaceQualityEntity implements FaceQualityEntity {
  const _FaceQualityEntity(
      {required this.level,
      required this.area,
      required this.aspectRatio,
      required this.isWellProportioned,
      this.headYaw,
      this.headPitch,
      this.headRoll,
      this.leftEyeOpenProbability,
      this.rightEyeOpenProbability,
      this.smilingProbability,
      this.brightness,
      this.sharpness,
      this.isCentered,
      this.hasMultipleFaces,
      final List<FaceQualityIssueEnum>? issues,
      this.center})
      : _issues = issues;

  @override
  final FaceQualityLevelEnum level;
  @override
  final double area;
  @override
  final double aspectRatio;
  @override
  final bool isWellProportioned;
  @override
  final double? headYaw;
  @override
  final double? headPitch;
  @override
  final double? headRoll;
  @override
  final double? leftEyeOpenProbability;
  @override
  final double? rightEyeOpenProbability;
  @override
  final double? smilingProbability;
  @override
  final double? brightness;
  @override
  final double? sharpness;
  @override
  final bool? isCentered;
  @override
  final bool? hasMultipleFaces;
  final List<FaceQualityIssueEnum>? _issues;
  @override
  List<FaceQualityIssueEnum>? get issues {
    final value = _issues;
    if (value == null) return null;
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? center;

  /// Create a copy of FaceQualityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceQualityEntityCopyWith<_FaceQualityEntity> get copyWith =>
      __$FaceQualityEntityCopyWithImpl<_FaceQualityEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceQualityEntity &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.isWellProportioned, isWellProportioned) ||
                other.isWellProportioned == isWellProportioned) &&
            (identical(other.headYaw, headYaw) || other.headYaw == headYaw) &&
            (identical(other.headPitch, headPitch) ||
                other.headPitch == headPitch) &&
            (identical(other.headRoll, headRoll) ||
                other.headRoll == headRoll) &&
            (identical(other.leftEyeOpenProbability, leftEyeOpenProbability) ||
                other.leftEyeOpenProbability == leftEyeOpenProbability) &&
            (identical(
                    other.rightEyeOpenProbability, rightEyeOpenProbability) ||
                other.rightEyeOpenProbability == rightEyeOpenProbability) &&
            (identical(other.smilingProbability, smilingProbability) ||
                other.smilingProbability == smilingProbability) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.sharpness, sharpness) ||
                other.sharpness == sharpness) &&
            (identical(other.isCentered, isCentered) ||
                other.isCentered == isCentered) &&
            (identical(other.hasMultipleFaces, hasMultipleFaces) ||
                other.hasMultipleFaces == hasMultipleFaces) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.center, center) || other.center == center));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      area,
      aspectRatio,
      isWellProportioned,
      headYaw,
      headPitch,
      headRoll,
      leftEyeOpenProbability,
      rightEyeOpenProbability,
      smilingProbability,
      brightness,
      sharpness,
      isCentered,
      hasMultipleFaces,
      const DeepCollectionEquality().hash(_issues),
      center);

  @override
  String toString() {
    return 'FaceQualityEntity(level: $level, area: $area, aspectRatio: $aspectRatio, isWellProportioned: $isWellProportioned, headYaw: $headYaw, headPitch: $headPitch, headRoll: $headRoll, leftEyeOpenProbability: $leftEyeOpenProbability, rightEyeOpenProbability: $rightEyeOpenProbability, smilingProbability: $smilingProbability, brightness: $brightness, sharpness: $sharpness, isCentered: $isCentered, hasMultipleFaces: $hasMultipleFaces, issues: $issues, center: $center)';
  }
}

/// @nodoc
abstract mixin class _$FaceQualityEntityCopyWith<$Res>
    implements $FaceQualityEntityCopyWith<$Res> {
  factory _$FaceQualityEntityCopyWith(
          _FaceQualityEntity value, $Res Function(_FaceQualityEntity) _then) =
      __$FaceQualityEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FaceQualityLevelEnum level,
      double area,
      double aspectRatio,
      bool isWellProportioned,
      double? headYaw,
      double? headPitch,
      double? headRoll,
      double? leftEyeOpenProbability,
      double? rightEyeOpenProbability,
      double? smilingProbability,
      double? brightness,
      double? sharpness,
      bool? isCentered,
      bool? hasMultipleFaces,
      List<FaceQualityIssueEnum>? issues,
      String? center});
}

/// @nodoc
class __$FaceQualityEntityCopyWithImpl<$Res>
    implements _$FaceQualityEntityCopyWith<$Res> {
  __$FaceQualityEntityCopyWithImpl(this._self, this._then);

  final _FaceQualityEntity _self;
  final $Res Function(_FaceQualityEntity) _then;

  /// Create a copy of FaceQualityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = null,
    Object? area = null,
    Object? aspectRatio = null,
    Object? isWellProportioned = null,
    Object? headYaw = freezed,
    Object? headPitch = freezed,
    Object? headRoll = freezed,
    Object? leftEyeOpenProbability = freezed,
    Object? rightEyeOpenProbability = freezed,
    Object? smilingProbability = freezed,
    Object? brightness = freezed,
    Object? sharpness = freezed,
    Object? isCentered = freezed,
    Object? hasMultipleFaces = freezed,
    Object? issues = freezed,
    Object? center = freezed,
  }) {
    return _then(_FaceQualityEntity(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as FaceQualityLevelEnum,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatio: null == aspectRatio
          ? _self.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isWellProportioned: null == isWellProportioned
          ? _self.isWellProportioned
          : isWellProportioned // ignore: cast_nullable_to_non_nullable
              as bool,
      headYaw: freezed == headYaw
          ? _self.headYaw
          : headYaw // ignore: cast_nullable_to_non_nullable
              as double?,
      headPitch: freezed == headPitch
          ? _self.headPitch
          : headPitch // ignore: cast_nullable_to_non_nullable
              as double?,
      headRoll: freezed == headRoll
          ? _self.headRoll
          : headRoll // ignore: cast_nullable_to_non_nullable
              as double?,
      leftEyeOpenProbability: freezed == leftEyeOpenProbability
          ? _self.leftEyeOpenProbability
          : leftEyeOpenProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      rightEyeOpenProbability: freezed == rightEyeOpenProbability
          ? _self.rightEyeOpenProbability
          : rightEyeOpenProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      smilingProbability: freezed == smilingProbability
          ? _self.smilingProbability
          : smilingProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      brightness: freezed == brightness
          ? _self.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double?,
      sharpness: freezed == sharpness
          ? _self.sharpness
          : sharpness // ignore: cast_nullable_to_non_nullable
              as double?,
      isCentered: freezed == isCentered
          ? _self.isCentered
          : isCentered // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMultipleFaces: freezed == hasMultipleFaces
          ? _self.hasMultipleFaces
          : hasMultipleFaces // ignore: cast_nullable_to_non_nullable
              as bool?,
      issues: freezed == issues
          ? _self._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<FaceQualityIssueEnum>?,
      center: freezed == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
