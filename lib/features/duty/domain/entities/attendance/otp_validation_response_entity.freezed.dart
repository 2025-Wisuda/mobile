// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_validation_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpValidationResponseEntity {
  bool get valid;
  int get expiresInMinutes;
  String get userId;
  String get username;
  int get validatedRecords;

  /// Create a copy of OtpValidationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpValidationResponseEntityCopyWith<OtpValidationResponseEntity>
      get copyWith => _$OtpValidationResponseEntityCopyWithImpl<
              OtpValidationResponseEntity>(
          this as OtpValidationResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpValidationResponseEntity &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.expiresInMinutes, expiresInMinutes) ||
                other.expiresInMinutes == expiresInMinutes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.validatedRecords, validatedRecords) ||
                other.validatedRecords == validatedRecords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, valid, expiresInMinutes, userId, username, validatedRecords);

  @override
  String toString() {
    return 'OtpValidationResponseEntity(valid: $valid, expiresInMinutes: $expiresInMinutes, userId: $userId, username: $username, validatedRecords: $validatedRecords)';
  }
}

/// @nodoc
abstract mixin class $OtpValidationResponseEntityCopyWith<$Res> {
  factory $OtpValidationResponseEntityCopyWith(
          OtpValidationResponseEntity value,
          $Res Function(OtpValidationResponseEntity) _then) =
      _$OtpValidationResponseEntityCopyWithImpl;
  @useResult
  $Res call(
      {bool valid,
      int expiresInMinutes,
      String userId,
      String username,
      int validatedRecords});
}

/// @nodoc
class _$OtpValidationResponseEntityCopyWithImpl<$Res>
    implements $OtpValidationResponseEntityCopyWith<$Res> {
  _$OtpValidationResponseEntityCopyWithImpl(this._self, this._then);

  final OtpValidationResponseEntity _self;
  final $Res Function(OtpValidationResponseEntity) _then;

  /// Create a copy of OtpValidationResponseEntity
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

/// Adds pattern-matching-related methods to [OtpValidationResponseEntity].
extension OtpValidationResponseEntityPatterns on OtpValidationResponseEntity {
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
    TResult Function(_OtpValidationResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity() when $default != null:
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
    TResult Function(_OtpValidationResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity():
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
    TResult? Function(_OtpValidationResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity() when $default != null:
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
    TResult Function(bool valid, int expiresInMinutes, String userId,
            String username, int validatedRecords)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity() when $default != null:
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
    TResult Function(bool valid, int expiresInMinutes, String userId,
            String username, int validatedRecords)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity():
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
    TResult? Function(bool valid, int expiresInMinutes, String userId,
            String username, int validatedRecords)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OtpValidationResponseEntity() when $default != null:
        return $default(_that.valid, _that.expiresInMinutes, _that.userId,
            _that.username, _that.validatedRecords);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _OtpValidationResponseEntity implements OtpValidationResponseEntity {
  const _OtpValidationResponseEntity(
      {required this.valid,
      required this.expiresInMinutes,
      required this.userId,
      required this.username,
      required this.validatedRecords});

  @override
  final bool valid;
  @override
  final int expiresInMinutes;
  @override
  final String userId;
  @override
  final String username;
  @override
  final int validatedRecords;

  /// Create a copy of OtpValidationResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpValidationResponseEntityCopyWith<_OtpValidationResponseEntity>
      get copyWith => __$OtpValidationResponseEntityCopyWithImpl<
          _OtpValidationResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpValidationResponseEntity &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.expiresInMinutes, expiresInMinutes) ||
                other.expiresInMinutes == expiresInMinutes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.validatedRecords, validatedRecords) ||
                other.validatedRecords == validatedRecords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, valid, expiresInMinutes, userId, username, validatedRecords);

  @override
  String toString() {
    return 'OtpValidationResponseEntity(valid: $valid, expiresInMinutes: $expiresInMinutes, userId: $userId, username: $username, validatedRecords: $validatedRecords)';
  }
}

/// @nodoc
abstract mixin class _$OtpValidationResponseEntityCopyWith<$Res>
    implements $OtpValidationResponseEntityCopyWith<$Res> {
  factory _$OtpValidationResponseEntityCopyWith(
          _OtpValidationResponseEntity value,
          $Res Function(_OtpValidationResponseEntity) _then) =
      __$OtpValidationResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool valid,
      int expiresInMinutes,
      String userId,
      String username,
      int validatedRecords});
}

/// @nodoc
class __$OtpValidationResponseEntityCopyWithImpl<$Res>
    implements _$OtpValidationResponseEntityCopyWith<$Res> {
  __$OtpValidationResponseEntityCopyWithImpl(this._self, this._then);

  final _OtpValidationResponseEntity _self;
  final $Res Function(_OtpValidationResponseEntity) _then;

  /// Create a copy of OtpValidationResponseEntity
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
    return _then(_OtpValidationResponseEntity(
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
