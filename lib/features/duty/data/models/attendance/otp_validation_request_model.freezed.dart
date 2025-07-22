// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_validation_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpValidationRequestModel {
  @JsonKey(name: 'otp_code')
  String get otpCode;

  /// Create a copy of OtpValidationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpValidationRequestModelCopyWith<OtpValidationRequestModel> get copyWith =>
      _$OtpValidationRequestModelCopyWithImpl<OtpValidationRequestModel>(
          this as OtpValidationRequestModel, _$identity);

  /// Serializes this OtpValidationRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpValidationRequestModel &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @override
  String toString() {
    return 'OtpValidationRequestModel(otpCode: $otpCode)';
  }
}

/// @nodoc
abstract mixin class $OtpValidationRequestModelCopyWith<$Res> {
  factory $OtpValidationRequestModelCopyWith(OtpValidationRequestModel value,
          $Res Function(OtpValidationRequestModel) _then) =
      _$OtpValidationRequestModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'otp_code') String otpCode});
}

/// @nodoc
class _$OtpValidationRequestModelCopyWithImpl<$Res>
    implements $OtpValidationRequestModelCopyWith<$Res> {
  _$OtpValidationRequestModelCopyWithImpl(this._self, this._then);

  final OtpValidationRequestModel _self;
  final $Res Function(OtpValidationRequestModel) _then;

  /// Create a copy of OtpValidationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_self.copyWith(
      otpCode: null == otpCode
          ? _self.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OtpValidationRequestModel].
extension OtpValidationRequestModelPatterns on OtpValidationRequestModel {
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
    TResult Function(_OtpValidationRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel() when $default != null:
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
    TResult Function(_OtpValidationRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel():
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
    TResult? Function(_OtpValidationRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'otp_code') String otpCode)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel() when $default != null:
        return $default(_that.otpCode);
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
    TResult Function(@JsonKey(name: 'otp_code') String otpCode) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel():
        return $default(_that.otpCode);
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
    TResult? Function(@JsonKey(name: 'otp_code') String otpCode)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationRequestModel() when $default != null:
        return $default(_that.otpCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OtpValidationRequestModel implements OtpValidationRequestModel {
  const _OtpValidationRequestModel(
      {@JsonKey(name: 'otp_code') required this.otpCode});
  factory _OtpValidationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OtpValidationRequestModelFromJson(json);

  @override
  @JsonKey(name: 'otp_code')
  final String otpCode;

  /// Create a copy of OtpValidationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpValidationRequestModelCopyWith<_OtpValidationRequestModel>
      get copyWith =>
          __$OtpValidationRequestModelCopyWithImpl<_OtpValidationRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OtpValidationRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpValidationRequestModel &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @override
  String toString() {
    return 'OtpValidationRequestModel(otpCode: $otpCode)';
  }
}

/// @nodoc
abstract mixin class _$OtpValidationRequestModelCopyWith<$Res>
    implements $OtpValidationRequestModelCopyWith<$Res> {
  factory _$OtpValidationRequestModelCopyWith(_OtpValidationRequestModel value,
          $Res Function(_OtpValidationRequestModel) _then) =
      __$OtpValidationRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'otp_code') String otpCode});
}

/// @nodoc
class __$OtpValidationRequestModelCopyWithImpl<$Res>
    implements _$OtpValidationRequestModelCopyWith<$Res> {
  __$OtpValidationRequestModelCopyWithImpl(this._self, this._then);

  final _OtpValidationRequestModel _self;
  final $Res Function(_OtpValidationRequestModel) _then;

  /// Create a copy of OtpValidationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_OtpValidationRequestModel(
      otpCode: null == otpCode
          ? _self.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
