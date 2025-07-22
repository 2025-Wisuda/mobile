// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_validation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpValidationResponseModel {
  @JsonKey(name: 'valid')
  bool get valid;
  @JsonKey(name: 'expires_in_minutes')
  int get expiresInMinutes;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'validated_records')
  int get validatedRecords;

  /// Create a copy of OtpValidationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpValidationResponseModelCopyWith<OtpValidationResponseModel>
      get copyWith =>
          _$OtpValidationResponseModelCopyWithImpl<OtpValidationResponseModel>(
              this as OtpValidationResponseModel, _$identity);

  /// Serializes this OtpValidationResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpValidationResponseModel &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.expiresInMinutes, expiresInMinutes) ||
                other.expiresInMinutes == expiresInMinutes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.validatedRecords, validatedRecords) ||
                other.validatedRecords == validatedRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, valid, expiresInMinutes, userId, username, validatedRecords);

  @override
  String toString() {
    return 'OtpValidationResponseModel(valid: $valid, expiresInMinutes: $expiresInMinutes, userId: $userId, username: $username, validatedRecords: $validatedRecords)';
  }
}

/// @nodoc
abstract mixin class $OtpValidationResponseModelCopyWith<$Res> {
  factory $OtpValidationResponseModelCopyWith(OtpValidationResponseModel value,
          $Res Function(OtpValidationResponseModel) _then) =
      _$OtpValidationResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'valid') bool valid,
      @JsonKey(name: 'expires_in_minutes') int expiresInMinutes,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'validated_records') int validatedRecords});
}

/// @nodoc
class _$OtpValidationResponseModelCopyWithImpl<$Res>
    implements $OtpValidationResponseModelCopyWith<$Res> {
  _$OtpValidationResponseModelCopyWithImpl(this._self, this._then);

  final OtpValidationResponseModel _self;
  final $Res Function(OtpValidationResponseModel) _then;

  /// Create a copy of OtpValidationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? expiresInMinutes = null,
    Object? userId = null,
    Object? username = null,
    Object? validatedRecords = null,
  }) {
    return _then(_self.copyWith(
      valid: null == valid
          ? _self.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresInMinutes: null == expiresInMinutes
          ? _self.expiresInMinutes
          : expiresInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      validatedRecords: null == validatedRecords
          ? _self.validatedRecords
          : validatedRecords // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [OtpValidationResponseModel].
extension OtpValidationResponseModelPatterns on OtpValidationResponseModel {
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
    TResult Function(_OtpValidationResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel() when $default != null:
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
    TResult Function(_OtpValidationResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel():
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
    TResult? Function(_OtpValidationResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel() when $default != null:
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
            @JsonKey(name: 'valid') bool valid,
            @JsonKey(name: 'expires_in_minutes') int expiresInMinutes,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'validated_records') int validatedRecords)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel() when $default != null:
        return $default(_that.valid, _that.expiresInMinutes, _that.userId,
            _that.username, _that.validatedRecords);
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
            @JsonKey(name: 'valid') bool valid,
            @JsonKey(name: 'expires_in_minutes') int expiresInMinutes,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'validated_records') int validatedRecords)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel():
        return $default(_that.valid, _that.expiresInMinutes, _that.userId,
            _that.username, _that.validatedRecords);
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
            @JsonKey(name: 'valid') bool valid,
            @JsonKey(name: 'expires_in_minutes') int expiresInMinutes,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'username') String username,
            @JsonKey(name: 'validated_records') int validatedRecords)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseModel() when $default != null:
        return $default(_that.valid, _that.expiresInMinutes, _that.userId,
            _that.username, _that.validatedRecords);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OtpValidationResponseModel implements OtpValidationResponseModel {
  const _OtpValidationResponseModel(
      {@JsonKey(name: 'valid') required this.valid,
      @JsonKey(name: 'expires_in_minutes') required this.expiresInMinutes,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'validated_records') required this.validatedRecords});
  factory _OtpValidationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpValidationResponseModelFromJson(json);

  @override
  @JsonKey(name: 'valid')
  final bool valid;
  @override
  @JsonKey(name: 'expires_in_minutes')
  final int expiresInMinutes;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'validated_records')
  final int validatedRecords;

  /// Create a copy of OtpValidationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpValidationResponseModelCopyWith<_OtpValidationResponseModel>
      get copyWith => __$OtpValidationResponseModelCopyWithImpl<
          _OtpValidationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OtpValidationResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpValidationResponseModel &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.expiresInMinutes, expiresInMinutes) ||
                other.expiresInMinutes == expiresInMinutes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.validatedRecords, validatedRecords) ||
                other.validatedRecords == validatedRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, valid, expiresInMinutes, userId, username, validatedRecords);

  @override
  String toString() {
    return 'OtpValidationResponseModel(valid: $valid, expiresInMinutes: $expiresInMinutes, userId: $userId, username: $username, validatedRecords: $validatedRecords)';
  }
}

/// @nodoc
abstract mixin class _$OtpValidationResponseModelCopyWith<$Res>
    implements $OtpValidationResponseModelCopyWith<$Res> {
  factory _$OtpValidationResponseModelCopyWith(
          _OtpValidationResponseModel value,
          $Res Function(_OtpValidationResponseModel) _then) =
      __$OtpValidationResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'valid') bool valid,
      @JsonKey(name: 'expires_in_minutes') int expiresInMinutes,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'validated_records') int validatedRecords});
}

/// @nodoc
class __$OtpValidationResponseModelCopyWithImpl<$Res>
    implements _$OtpValidationResponseModelCopyWith<$Res> {
  __$OtpValidationResponseModelCopyWithImpl(this._self, this._then);

  final _OtpValidationResponseModel _self;
  final $Res Function(_OtpValidationResponseModel) _then;

  /// Create a copy of OtpValidationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? valid = null,
    Object? expiresInMinutes = null,
    Object? userId = null,
    Object? username = null,
    Object? validatedRecords = null,
  }) {
    return _then(_OtpValidationResponseModel(
      valid: null == valid
          ? _self.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresInMinutes: null == expiresInMinutes
          ? _self.expiresInMinutes
          : expiresInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      validatedRecords: null == validatedRecords
          ? _self.validatedRecords
          : validatedRecords // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
