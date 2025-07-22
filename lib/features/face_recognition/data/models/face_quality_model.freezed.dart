// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_quality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaceQualityModel {
  @JsonKey(name: 'level')
  @FaceQualityLevelEnumConverter()
  FaceQualityLevelEnum get level;
  @JsonKey(name: 'area')
  double get area;
  @JsonKey(name: 'aspectRatio')
  double get aspectRatio;
  @JsonKey(name: 'isWellProportioned')
  bool get isWellProportioned;
  @JsonKey(name: 'headYaw')
  double? get headYaw;
  @JsonKey(name: 'headPitch')
  double? get headPitch;
  @JsonKey(name: 'headRoll')
  double? get headRoll;
  @JsonKey(name: 'leftEyeOpenProbability')
  double? get leftEyeOpenProbability;
  @JsonKey(name: 'rightEyeOpenProbability')
  double? get rightEyeOpenProbability;
  @JsonKey(name: 'smilingProbability')
  double? get smilingProbability;
  @JsonKey(name: 'brightness')
  double? get brightness;
  @JsonKey(name: 'sharpness')
  double? get sharpness;
  @JsonKey(name: 'isCentered')
  bool? get isCentered;
  @JsonKey(name: 'hasMultipleFaces')
  bool? get hasMultipleFaces;
  @JsonKey(name: 'issues')
  @FaceQualityIssueEnumConverter()
  List<FaceQualityIssueEnum>? get issues;
  @JsonKey(name: 'center')
  String? get center;

  /// Create a copy of FaceQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceQualityModelCopyWith<FaceQualityModel> get copyWith =>
      _$FaceQualityModelCopyWithImpl<FaceQualityModel>(
          this as FaceQualityModel, _$identity);

  /// Serializes this FaceQualityModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceQualityModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'FaceQualityModel(level: $level, area: $area, aspectRatio: $aspectRatio, isWellProportioned: $isWellProportioned, headYaw: $headYaw, headPitch: $headPitch, headRoll: $headRoll, leftEyeOpenProbability: $leftEyeOpenProbability, rightEyeOpenProbability: $rightEyeOpenProbability, smilingProbability: $smilingProbability, brightness: $brightness, sharpness: $sharpness, isCentered: $isCentered, hasMultipleFaces: $hasMultipleFaces, issues: $issues, center: $center)';
  }
}

/// @nodoc
abstract mixin class $FaceQualityModelCopyWith<$Res> {
  factory $FaceQualityModelCopyWith(
          FaceQualityModel value, $Res Function(FaceQualityModel) _then) =
      _$FaceQualityModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'level')
      @FaceQualityLevelEnumConverter()
      FaceQualityLevelEnum level,
      @JsonKey(name: 'area') double area,
      @JsonKey(name: 'aspectRatio') double aspectRatio,
      @JsonKey(name: 'isWellProportioned') bool isWellProportioned,
      @JsonKey(name: 'headYaw') double? headYaw,
      @JsonKey(name: 'headPitch') double? headPitch,
      @JsonKey(name: 'headRoll') double? headRoll,
      @JsonKey(name: 'leftEyeOpenProbability') double? leftEyeOpenProbability,
      @JsonKey(name: 'rightEyeOpenProbability') double? rightEyeOpenProbability,
      @JsonKey(name: 'smilingProbability') double? smilingProbability,
      @JsonKey(name: 'brightness') double? brightness,
      @JsonKey(name: 'sharpness') double? sharpness,
      @JsonKey(name: 'isCentered') bool? isCentered,
      @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
      @JsonKey(name: 'issues')
      @FaceQualityIssueEnumConverter()
      List<FaceQualityIssueEnum>? issues,
      @JsonKey(name: 'center') String? center});
}

/// @nodoc
class _$FaceQualityModelCopyWithImpl<$Res>
    implements $FaceQualityModelCopyWith<$Res> {
  _$FaceQualityModelCopyWithImpl(this._self, this._then);

  final FaceQualityModel _self;
  final $Res Function(FaceQualityModel) _then;

  /// Create a copy of FaceQualityModel
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

/// Adds pattern-matching-related methods to [FaceQualityModel].
extension FaceQualityModelPatterns on FaceQualityModel {
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
    TResult Function(_FaceQualityModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel() when $default != null:
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
    TResult Function(_FaceQualityModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel():
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
    TResult? Function(_FaceQualityModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel() when $default != null:
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
            @JsonKey(name: 'level')
            @FaceQualityLevelEnumConverter()
            FaceQualityLevelEnum level,
            @JsonKey(name: 'area') double area,
            @JsonKey(name: 'aspectRatio') double aspectRatio,
            @JsonKey(name: 'isWellProportioned') bool isWellProportioned,
            @JsonKey(name: 'headYaw') double? headYaw,
            @JsonKey(name: 'headPitch') double? headPitch,
            @JsonKey(name: 'headRoll') double? headRoll,
            @JsonKey(name: 'leftEyeOpenProbability')
            double? leftEyeOpenProbability,
            @JsonKey(name: 'rightEyeOpenProbability')
            double? rightEyeOpenProbability,
            @JsonKey(name: 'smilingProbability') double? smilingProbability,
            @JsonKey(name: 'brightness') double? brightness,
            @JsonKey(name: 'sharpness') double? sharpness,
            @JsonKey(name: 'isCentered') bool? isCentered,
            @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
            @JsonKey(name: 'issues')
            @FaceQualityIssueEnumConverter()
            List<FaceQualityIssueEnum>? issues,
            @JsonKey(name: 'center') String? center)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel() when $default != null:
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
            @JsonKey(name: 'level')
            @FaceQualityLevelEnumConverter()
            FaceQualityLevelEnum level,
            @JsonKey(name: 'area') double area,
            @JsonKey(name: 'aspectRatio') double aspectRatio,
            @JsonKey(name: 'isWellProportioned') bool isWellProportioned,
            @JsonKey(name: 'headYaw') double? headYaw,
            @JsonKey(name: 'headPitch') double? headPitch,
            @JsonKey(name: 'headRoll') double? headRoll,
            @JsonKey(name: 'leftEyeOpenProbability')
            double? leftEyeOpenProbability,
            @JsonKey(name: 'rightEyeOpenProbability')
            double? rightEyeOpenProbability,
            @JsonKey(name: 'smilingProbability') double? smilingProbability,
            @JsonKey(name: 'brightness') double? brightness,
            @JsonKey(name: 'sharpness') double? sharpness,
            @JsonKey(name: 'isCentered') bool? isCentered,
            @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
            @JsonKey(name: 'issues')
            @FaceQualityIssueEnumConverter()
            List<FaceQualityIssueEnum>? issues,
            @JsonKey(name: 'center') String? center)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel():
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
            @JsonKey(name: 'level')
            @FaceQualityLevelEnumConverter()
            FaceQualityLevelEnum level,
            @JsonKey(name: 'area') double area,
            @JsonKey(name: 'aspectRatio') double aspectRatio,
            @JsonKey(name: 'isWellProportioned') bool isWellProportioned,
            @JsonKey(name: 'headYaw') double? headYaw,
            @JsonKey(name: 'headPitch') double? headPitch,
            @JsonKey(name: 'headRoll') double? headRoll,
            @JsonKey(name: 'leftEyeOpenProbability')
            double? leftEyeOpenProbability,
            @JsonKey(name: 'rightEyeOpenProbability')
            double? rightEyeOpenProbability,
            @JsonKey(name: 'smilingProbability') double? smilingProbability,
            @JsonKey(name: 'brightness') double? brightness,
            @JsonKey(name: 'sharpness') double? sharpness,
            @JsonKey(name: 'isCentered') bool? isCentered,
            @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
            @JsonKey(name: 'issues')
            @FaceQualityIssueEnumConverter()
            List<FaceQualityIssueEnum>? issues,
            @JsonKey(name: 'center') String? center)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceQualityModel() when $default != null:
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
@JsonSerializable()
class _FaceQualityModel implements FaceQualityModel {
  const _FaceQualityModel(
      {@JsonKey(name: 'level')
      @FaceQualityLevelEnumConverter()
      required this.level,
      @JsonKey(name: 'area') required this.area,
      @JsonKey(name: 'aspectRatio') required this.aspectRatio,
      @JsonKey(name: 'isWellProportioned') required this.isWellProportioned,
      @JsonKey(name: 'headYaw') this.headYaw,
      @JsonKey(name: 'headPitch') this.headPitch,
      @JsonKey(name: 'headRoll') this.headRoll,
      @JsonKey(name: 'leftEyeOpenProbability') this.leftEyeOpenProbability,
      @JsonKey(name: 'rightEyeOpenProbability') this.rightEyeOpenProbability,
      @JsonKey(name: 'smilingProbability') this.smilingProbability,
      @JsonKey(name: 'brightness') this.brightness,
      @JsonKey(name: 'sharpness') this.sharpness,
      @JsonKey(name: 'isCentered') this.isCentered,
      @JsonKey(name: 'hasMultipleFaces') this.hasMultipleFaces,
      @JsonKey(name: 'issues')
      @FaceQualityIssueEnumConverter()
      final List<FaceQualityIssueEnum>? issues,
      @JsonKey(name: 'center') this.center})
      : _issues = issues;
  factory _FaceQualityModel.fromJson(Map<String, dynamic> json) =>
      _$FaceQualityModelFromJson(json);

  @override
  @JsonKey(name: 'level')
  @FaceQualityLevelEnumConverter()
  final FaceQualityLevelEnum level;
  @override
  @JsonKey(name: 'area')
  final double area;
  @override
  @JsonKey(name: 'aspectRatio')
  final double aspectRatio;
  @override
  @JsonKey(name: 'isWellProportioned')
  final bool isWellProportioned;
  @override
  @JsonKey(name: 'headYaw')
  final double? headYaw;
  @override
  @JsonKey(name: 'headPitch')
  final double? headPitch;
  @override
  @JsonKey(name: 'headRoll')
  final double? headRoll;
  @override
  @JsonKey(name: 'leftEyeOpenProbability')
  final double? leftEyeOpenProbability;
  @override
  @JsonKey(name: 'rightEyeOpenProbability')
  final double? rightEyeOpenProbability;
  @override
  @JsonKey(name: 'smilingProbability')
  final double? smilingProbability;
  @override
  @JsonKey(name: 'brightness')
  final double? brightness;
  @override
  @JsonKey(name: 'sharpness')
  final double? sharpness;
  @override
  @JsonKey(name: 'isCentered')
  final bool? isCentered;
  @override
  @JsonKey(name: 'hasMultipleFaces')
  final bool? hasMultipleFaces;
  final List<FaceQualityIssueEnum>? _issues;
  @override
  @JsonKey(name: 'issues')
  @FaceQualityIssueEnumConverter()
  List<FaceQualityIssueEnum>? get issues {
    final value = _issues;
    if (value == null) return null;
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'center')
  final String? center;

  /// Create a copy of FaceQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceQualityModelCopyWith<_FaceQualityModel> get copyWith =>
      __$FaceQualityModelCopyWithImpl<_FaceQualityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FaceQualityModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceQualityModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'FaceQualityModel(level: $level, area: $area, aspectRatio: $aspectRatio, isWellProportioned: $isWellProportioned, headYaw: $headYaw, headPitch: $headPitch, headRoll: $headRoll, leftEyeOpenProbability: $leftEyeOpenProbability, rightEyeOpenProbability: $rightEyeOpenProbability, smilingProbability: $smilingProbability, brightness: $brightness, sharpness: $sharpness, isCentered: $isCentered, hasMultipleFaces: $hasMultipleFaces, issues: $issues, center: $center)';
  }
}

/// @nodoc
abstract mixin class _$FaceQualityModelCopyWith<$Res>
    implements $FaceQualityModelCopyWith<$Res> {
  factory _$FaceQualityModelCopyWith(
          _FaceQualityModel value, $Res Function(_FaceQualityModel) _then) =
      __$FaceQualityModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'level')
      @FaceQualityLevelEnumConverter()
      FaceQualityLevelEnum level,
      @JsonKey(name: 'area') double area,
      @JsonKey(name: 'aspectRatio') double aspectRatio,
      @JsonKey(name: 'isWellProportioned') bool isWellProportioned,
      @JsonKey(name: 'headYaw') double? headYaw,
      @JsonKey(name: 'headPitch') double? headPitch,
      @JsonKey(name: 'headRoll') double? headRoll,
      @JsonKey(name: 'leftEyeOpenProbability') double? leftEyeOpenProbability,
      @JsonKey(name: 'rightEyeOpenProbability') double? rightEyeOpenProbability,
      @JsonKey(name: 'smilingProbability') double? smilingProbability,
      @JsonKey(name: 'brightness') double? brightness,
      @JsonKey(name: 'sharpness') double? sharpness,
      @JsonKey(name: 'isCentered') bool? isCentered,
      @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
      @JsonKey(name: 'issues')
      @FaceQualityIssueEnumConverter()
      List<FaceQualityIssueEnum>? issues,
      @JsonKey(name: 'center') String? center});
}

/// @nodoc
class __$FaceQualityModelCopyWithImpl<$Res>
    implements _$FaceQualityModelCopyWith<$Res> {
  __$FaceQualityModelCopyWithImpl(this._self, this._then);

  final _FaceQualityModel _self;
  final $Res Function(_FaceQualityModel) _then;

  /// Create a copy of FaceQualityModel
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
    return _then(_FaceQualityModel(
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
