// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_recognition_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaceRecognitionResponseEntity {
  String? get type;
  String? get attendanceId;
  String? get action;
  int? get code;
  String? get status;
  String? get message;
  String? get requestId;
  String? get timestamp;
  FaceRecognitionDetailsEntity? get faceRecognitionDetails;

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceRecognitionResponseEntityCopyWith<FaceRecognitionResponseEntity>
      get copyWith => _$FaceRecognitionResponseEntityCopyWithImpl<
              FaceRecognitionResponseEntity>(
          this as FaceRecognitionResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceRecognitionResponseEntity &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.faceRecognitionDetails, faceRecognitionDetails) ||
                other.faceRecognitionDetails == faceRecognitionDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, attendanceId, action, code,
      status, message, requestId, timestamp, faceRecognitionDetails);

  @override
  String toString() {
    return 'FaceRecognitionResponseEntity(type: $type, attendanceId: $attendanceId, action: $action, code: $code, status: $status, message: $message, requestId: $requestId, timestamp: $timestamp, faceRecognitionDetails: $faceRecognitionDetails)';
  }
}

/// @nodoc
abstract mixin class $FaceRecognitionResponseEntityCopyWith<$Res> {
  factory $FaceRecognitionResponseEntityCopyWith(
          FaceRecognitionResponseEntity value,
          $Res Function(FaceRecognitionResponseEntity) _then) =
      _$FaceRecognitionResponseEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? type,
      String? attendanceId,
      String? action,
      int? code,
      String? status,
      String? message,
      String? requestId,
      String? timestamp,
      FaceRecognitionDetailsEntity? faceRecognitionDetails});

  $FaceRecognitionDetailsEntityCopyWith<$Res>? get faceRecognitionDetails;
}

/// @nodoc
class _$FaceRecognitionResponseEntityCopyWithImpl<$Res>
    implements $FaceRecognitionResponseEntityCopyWith<$Res> {
  _$FaceRecognitionResponseEntityCopyWithImpl(this._self, this._then);

  final FaceRecognitionResponseEntity _self;
  final $Res Function(FaceRecognitionResponseEntity) _then;

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? attendanceId = freezed,
    Object? action = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? requestId = freezed,
    Object? timestamp = freezed,
    Object? faceRecognitionDetails = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceId: freezed == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionDetails: freezed == faceRecognitionDetails
          ? _self.faceRecognitionDetails
          : faceRecognitionDetails // ignore: cast_nullable_to_non_nullable
              as FaceRecognitionDetailsEntity?,
    ));
  }

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsEntityCopyWith<$Res>? get faceRecognitionDetails {
    if (_self.faceRecognitionDetails == null) {
      return null;
    }

    return $FaceRecognitionDetailsEntityCopyWith<$Res>(
        _self.faceRecognitionDetails!, (value) {
      return _then(_self.copyWith(faceRecognitionDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FaceRecognitionResponseEntity].
extension FaceRecognitionResponseEntityPatterns
    on FaceRecognitionResponseEntity {
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
    TResult Function(_FaceRecognitionResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity() when $default != null:
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
    TResult Function(_FaceRecognitionResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity():
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
    TResult? Function(_FaceRecognitionResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity() when $default != null:
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
            String? type,
            String? attendanceId,
            String? action,
            int? code,
            String? status,
            String? message,
            String? requestId,
            String? timestamp,
            FaceRecognitionDetailsEntity? faceRecognitionDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity() when $default != null:
        return $default(
            _that.type,
            _that.attendanceId,
            _that.action,
            _that.code,
            _that.status,
            _that.message,
            _that.requestId,
            _that.timestamp,
            _that.faceRecognitionDetails);
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
            String? type,
            String? attendanceId,
            String? action,
            int? code,
            String? status,
            String? message,
            String? requestId,
            String? timestamp,
            FaceRecognitionDetailsEntity? faceRecognitionDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity():
        return $default(
            _that.type,
            _that.attendanceId,
            _that.action,
            _that.code,
            _that.status,
            _that.message,
            _that.requestId,
            _that.timestamp,
            _that.faceRecognitionDetails);
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
            String? type,
            String? attendanceId,
            String? action,
            int? code,
            String? status,
            String? message,
            String? requestId,
            String? timestamp,
            FaceRecognitionDetailsEntity? faceRecognitionDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseEntity() when $default != null:
        return $default(
            _that.type,
            _that.attendanceId,
            _that.action,
            _that.code,
            _that.status,
            _that.message,
            _that.requestId,
            _that.timestamp,
            _that.faceRecognitionDetails);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FaceRecognitionResponseEntity implements FaceRecognitionResponseEntity {
  const _FaceRecognitionResponseEntity(
      {this.type,
      this.attendanceId,
      this.action,
      this.code,
      this.status,
      this.message,
      this.requestId,
      this.timestamp,
      this.faceRecognitionDetails});

  @override
  final String? type;
  @override
  final String? attendanceId;
  @override
  final String? action;
  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final String? timestamp;
  @override
  final FaceRecognitionDetailsEntity? faceRecognitionDetails;

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceRecognitionResponseEntityCopyWith<_FaceRecognitionResponseEntity>
      get copyWith => __$FaceRecognitionResponseEntityCopyWithImpl<
          _FaceRecognitionResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceRecognitionResponseEntity &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.faceRecognitionDetails, faceRecognitionDetails) ||
                other.faceRecognitionDetails == faceRecognitionDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, attendanceId, action, code,
      status, message, requestId, timestamp, faceRecognitionDetails);

  @override
  String toString() {
    return 'FaceRecognitionResponseEntity(type: $type, attendanceId: $attendanceId, action: $action, code: $code, status: $status, message: $message, requestId: $requestId, timestamp: $timestamp, faceRecognitionDetails: $faceRecognitionDetails)';
  }
}

/// @nodoc
abstract mixin class _$FaceRecognitionResponseEntityCopyWith<$Res>
    implements $FaceRecognitionResponseEntityCopyWith<$Res> {
  factory _$FaceRecognitionResponseEntityCopyWith(
          _FaceRecognitionResponseEntity value,
          $Res Function(_FaceRecognitionResponseEntity) _then) =
      __$FaceRecognitionResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type,
      String? attendanceId,
      String? action,
      int? code,
      String? status,
      String? message,
      String? requestId,
      String? timestamp,
      FaceRecognitionDetailsEntity? faceRecognitionDetails});

  @override
  $FaceRecognitionDetailsEntityCopyWith<$Res>? get faceRecognitionDetails;
}

/// @nodoc
class __$FaceRecognitionResponseEntityCopyWithImpl<$Res>
    implements _$FaceRecognitionResponseEntityCopyWith<$Res> {
  __$FaceRecognitionResponseEntityCopyWithImpl(this._self, this._then);

  final _FaceRecognitionResponseEntity _self;
  final $Res Function(_FaceRecognitionResponseEntity) _then;

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? attendanceId = freezed,
    Object? action = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? requestId = freezed,
    Object? timestamp = freezed,
    Object? faceRecognitionDetails = freezed,
  }) {
    return _then(_FaceRecognitionResponseEntity(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceId: freezed == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      faceRecognitionDetails: freezed == faceRecognitionDetails
          ? _self.faceRecognitionDetails
          : faceRecognitionDetails // ignore: cast_nullable_to_non_nullable
              as FaceRecognitionDetailsEntity?,
    ));
  }

  /// Create a copy of FaceRecognitionResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsEntityCopyWith<$Res>? get faceRecognitionDetails {
    if (_self.faceRecognitionDetails == null) {
      return null;
    }

    return $FaceRecognitionDetailsEntityCopyWith<$Res>(
        _self.faceRecognitionDetails!, (value) {
      return _then(_self.copyWith(faceRecognitionDetails: value));
    });
  }
}

/// @nodoc
mixin _$FaceRecognitionDetailsEntity {
  bool? get success;
  String? get expectedIdentifier;
  String? get expectedName;
  String? get detectedIdentifier;
  String? get detectedName;
  String? get identifierType;
  double? get confidence;
  double? get confidencePercentage;
  double? get threshold;
  String? get attendanceType;
  String? get error;
  String? get rawPersonId;

  /// Create a copy of FaceRecognitionDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsEntityCopyWith<FaceRecognitionDetailsEntity>
      get copyWith => _$FaceRecognitionDetailsEntityCopyWithImpl<
              FaceRecognitionDetailsEntity>(
          this as FaceRecognitionDetailsEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceRecognitionDetailsEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.expectedIdentifier, expectedIdentifier) ||
                other.expectedIdentifier == expectedIdentifier) &&
            (identical(other.expectedName, expectedName) ||
                other.expectedName == expectedName) &&
            (identical(other.detectedIdentifier, detectedIdentifier) ||
                other.detectedIdentifier == detectedIdentifier) &&
            (identical(other.detectedName, detectedName) ||
                other.detectedName == detectedName) &&
            (identical(other.identifierType, identifierType) ||
                other.identifierType == identifierType) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.confidencePercentage, confidencePercentage) ||
                other.confidencePercentage == confidencePercentage) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.rawPersonId, rawPersonId) ||
                other.rawPersonId == rawPersonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      expectedIdentifier,
      expectedName,
      detectedIdentifier,
      detectedName,
      identifierType,
      confidence,
      confidencePercentage,
      threshold,
      attendanceType,
      error,
      rawPersonId);

  @override
  String toString() {
    return 'FaceRecognitionDetailsEntity(success: $success, expectedIdentifier: $expectedIdentifier, expectedName: $expectedName, detectedIdentifier: $detectedIdentifier, detectedName: $detectedName, identifierType: $identifierType, confidence: $confidence, confidencePercentage: $confidencePercentage, threshold: $threshold, attendanceType: $attendanceType, error: $error, rawPersonId: $rawPersonId)';
  }
}

/// @nodoc
abstract mixin class $FaceRecognitionDetailsEntityCopyWith<$Res> {
  factory $FaceRecognitionDetailsEntityCopyWith(
          FaceRecognitionDetailsEntity value,
          $Res Function(FaceRecognitionDetailsEntity) _then) =
      _$FaceRecognitionDetailsEntityCopyWithImpl;
  @useResult
  $Res call(
      {bool? success,
      String? expectedIdentifier,
      String? expectedName,
      String? detectedIdentifier,
      String? detectedName,
      String? identifierType,
      double? confidence,
      double? confidencePercentage,
      double? threshold,
      String? attendanceType,
      String? error,
      String? rawPersonId});
}

/// @nodoc
class _$FaceRecognitionDetailsEntityCopyWithImpl<$Res>
    implements $FaceRecognitionDetailsEntityCopyWith<$Res> {
  _$FaceRecognitionDetailsEntityCopyWithImpl(this._self, this._then);

  final FaceRecognitionDetailsEntity _self;
  final $Res Function(FaceRecognitionDetailsEntity) _then;

  /// Create a copy of FaceRecognitionDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? expectedIdentifier = freezed,
    Object? expectedName = freezed,
    Object? detectedIdentifier = freezed,
    Object? detectedName = freezed,
    Object? identifierType = freezed,
    Object? confidence = freezed,
    Object? confidencePercentage = freezed,
    Object? threshold = freezed,
    Object? attendanceType = freezed,
    Object? error = freezed,
    Object? rawPersonId = freezed,
  }) {
    return _then(_self.copyWith(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      expectedIdentifier: freezed == expectedIdentifier
          ? _self.expectedIdentifier
          : expectedIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedName: freezed == expectedName
          ? _self.expectedName
          : expectedName // ignore: cast_nullable_to_non_nullable
              as String?,
      detectedIdentifier: freezed == detectedIdentifier
          ? _self.detectedIdentifier
          : detectedIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      detectedName: freezed == detectedName
          ? _self.detectedName
          : detectedName // ignore: cast_nullable_to_non_nullable
              as String?,
      identifierType: freezed == identifierType
          ? _self.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _self.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double?,
      confidencePercentage: freezed == confidencePercentage
          ? _self.confidencePercentage
          : confidencePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      threshold: freezed == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double?,
      attendanceType: freezed == attendanceType
          ? _self.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPersonId: freezed == rawPersonId
          ? _self.rawPersonId
          : rawPersonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaceRecognitionDetailsEntity].
extension FaceRecognitionDetailsEntityPatterns on FaceRecognitionDetailsEntity {
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
    TResult Function(_FaceRecognitionDetailsEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity() when $default != null:
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
    TResult Function(_FaceRecognitionDetailsEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity():
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
    TResult? Function(_FaceRecognitionDetailsEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity() when $default != null:
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
            bool? success,
            String? expectedIdentifier,
            String? expectedName,
            String? detectedIdentifier,
            String? detectedName,
            String? identifierType,
            double? confidence,
            double? confidencePercentage,
            double? threshold,
            String? attendanceType,
            String? error,
            String? rawPersonId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity() when $default != null:
        return $default(
            _that.success,
            _that.expectedIdentifier,
            _that.expectedName,
            _that.detectedIdentifier,
            _that.detectedName,
            _that.identifierType,
            _that.confidence,
            _that.confidencePercentage,
            _that.threshold,
            _that.attendanceType,
            _that.error,
            _that.rawPersonId);
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
            bool? success,
            String? expectedIdentifier,
            String? expectedName,
            String? detectedIdentifier,
            String? detectedName,
            String? identifierType,
            double? confidence,
            double? confidencePercentage,
            double? threshold,
            String? attendanceType,
            String? error,
            String? rawPersonId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity():
        return $default(
            _that.success,
            _that.expectedIdentifier,
            _that.expectedName,
            _that.detectedIdentifier,
            _that.detectedName,
            _that.identifierType,
            _that.confidence,
            _that.confidencePercentage,
            _that.threshold,
            _that.attendanceType,
            _that.error,
            _that.rawPersonId);
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
            bool? success,
            String? expectedIdentifier,
            String? expectedName,
            String? detectedIdentifier,
            String? detectedName,
            String? identifierType,
            double? confidence,
            double? confidencePercentage,
            double? threshold,
            String? attendanceType,
            String? error,
            String? rawPersonId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsEntity() when $default != null:
        return $default(
            _that.success,
            _that.expectedIdentifier,
            _that.expectedName,
            _that.detectedIdentifier,
            _that.detectedName,
            _that.identifierType,
            _that.confidence,
            _that.confidencePercentage,
            _that.threshold,
            _that.attendanceType,
            _that.error,
            _that.rawPersonId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FaceRecognitionDetailsEntity implements FaceRecognitionDetailsEntity {
  const _FaceRecognitionDetailsEntity(
      {this.success,
      this.expectedIdentifier,
      this.expectedName,
      this.detectedIdentifier,
      this.detectedName,
      this.identifierType,
      this.confidence,
      this.confidencePercentage,
      this.threshold,
      this.attendanceType,
      this.error,
      this.rawPersonId});

  @override
  final bool? success;
  @override
  final String? expectedIdentifier;
  @override
  final String? expectedName;
  @override
  final String? detectedIdentifier;
  @override
  final String? detectedName;
  @override
  final String? identifierType;
  @override
  final double? confidence;
  @override
  final double? confidencePercentage;
  @override
  final double? threshold;
  @override
  final String? attendanceType;
  @override
  final String? error;
  @override
  final String? rawPersonId;

  /// Create a copy of FaceRecognitionDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceRecognitionDetailsEntityCopyWith<_FaceRecognitionDetailsEntity>
      get copyWith => __$FaceRecognitionDetailsEntityCopyWithImpl<
          _FaceRecognitionDetailsEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceRecognitionDetailsEntity &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.expectedIdentifier, expectedIdentifier) ||
                other.expectedIdentifier == expectedIdentifier) &&
            (identical(other.expectedName, expectedName) ||
                other.expectedName == expectedName) &&
            (identical(other.detectedIdentifier, detectedIdentifier) ||
                other.detectedIdentifier == detectedIdentifier) &&
            (identical(other.detectedName, detectedName) ||
                other.detectedName == detectedName) &&
            (identical(other.identifierType, identifierType) ||
                other.identifierType == identifierType) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.confidencePercentage, confidencePercentage) ||
                other.confidencePercentage == confidencePercentage) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.attendanceType, attendanceType) ||
                other.attendanceType == attendanceType) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.rawPersonId, rawPersonId) ||
                other.rawPersonId == rawPersonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      expectedIdentifier,
      expectedName,
      detectedIdentifier,
      detectedName,
      identifierType,
      confidence,
      confidencePercentage,
      threshold,
      attendanceType,
      error,
      rawPersonId);

  @override
  String toString() {
    return 'FaceRecognitionDetailsEntity(success: $success, expectedIdentifier: $expectedIdentifier, expectedName: $expectedName, detectedIdentifier: $detectedIdentifier, detectedName: $detectedName, identifierType: $identifierType, confidence: $confidence, confidencePercentage: $confidencePercentage, threshold: $threshold, attendanceType: $attendanceType, error: $error, rawPersonId: $rawPersonId)';
  }
}

/// @nodoc
abstract mixin class _$FaceRecognitionDetailsEntityCopyWith<$Res>
    implements $FaceRecognitionDetailsEntityCopyWith<$Res> {
  factory _$FaceRecognitionDetailsEntityCopyWith(
          _FaceRecognitionDetailsEntity value,
          $Res Function(_FaceRecognitionDetailsEntity) _then) =
      __$FaceRecognitionDetailsEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? expectedIdentifier,
      String? expectedName,
      String? detectedIdentifier,
      String? detectedName,
      String? identifierType,
      double? confidence,
      double? confidencePercentage,
      double? threshold,
      String? attendanceType,
      String? error,
      String? rawPersonId});
}

/// @nodoc
class __$FaceRecognitionDetailsEntityCopyWithImpl<$Res>
    implements _$FaceRecognitionDetailsEntityCopyWith<$Res> {
  __$FaceRecognitionDetailsEntityCopyWithImpl(this._self, this._then);

  final _FaceRecognitionDetailsEntity _self;
  final $Res Function(_FaceRecognitionDetailsEntity) _then;

  /// Create a copy of FaceRecognitionDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = freezed,
    Object? expectedIdentifier = freezed,
    Object? expectedName = freezed,
    Object? detectedIdentifier = freezed,
    Object? detectedName = freezed,
    Object? identifierType = freezed,
    Object? confidence = freezed,
    Object? confidencePercentage = freezed,
    Object? threshold = freezed,
    Object? attendanceType = freezed,
    Object? error = freezed,
    Object? rawPersonId = freezed,
  }) {
    return _then(_FaceRecognitionDetailsEntity(
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      expectedIdentifier: freezed == expectedIdentifier
          ? _self.expectedIdentifier
          : expectedIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedName: freezed == expectedName
          ? _self.expectedName
          : expectedName // ignore: cast_nullable_to_non_nullable
              as String?,
      detectedIdentifier: freezed == detectedIdentifier
          ? _self.detectedIdentifier
          : detectedIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      detectedName: freezed == detectedName
          ? _self.detectedName
          : detectedName // ignore: cast_nullable_to_non_nullable
              as String?,
      identifierType: freezed == identifierType
          ? _self.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _self.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double?,
      confidencePercentage: freezed == confidencePercentage
          ? _self.confidencePercentage
          : confidencePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      threshold: freezed == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double?,
      attendanceType: freezed == attendanceType
          ? _self.attendanceType
          : attendanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPersonId: freezed == rawPersonId
          ? _self.rawPersonId
          : rawPersonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
