// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_recognition_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaceRecognitionResponseModel {
  @JsonKey(name: 'type')
  String? get type;
  @JsonKey(name: 'attendance_id')
  String? get attendanceId;
  @JsonKey(name: 'action')
  String? get action;
  @JsonKey(name: 'code')
  int? get code;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'request_id')
  String? get requestId;
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @JsonKey(name: 'face_recognition_details')
  FaceRecognitionDetailsModel? get faceRecognitionDetails;

  /// Create a copy of FaceRecognitionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceRecognitionResponseModelCopyWith<FaceRecognitionResponseModel>
      get copyWith => _$FaceRecognitionResponseModelCopyWithImpl<
              FaceRecognitionResponseModel>(
          this as FaceRecognitionResponseModel, _$identity);

  /// Serializes this FaceRecognitionResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceRecognitionResponseModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, attendanceId, action, code,
      status, message, requestId, timestamp, faceRecognitionDetails);

  @override
  String toString() {
    return 'FaceRecognitionResponseModel(type: $type, attendanceId: $attendanceId, action: $action, code: $code, status: $status, message: $message, requestId: $requestId, timestamp: $timestamp, faceRecognitionDetails: $faceRecognitionDetails)';
  }
}

/// @nodoc
abstract mixin class $FaceRecognitionResponseModelCopyWith<$Res> {
  factory $FaceRecognitionResponseModelCopyWith(
          FaceRecognitionResponseModel value,
          $Res Function(FaceRecognitionResponseModel) _then) =
      _$FaceRecognitionResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'attendance_id') String? attendanceId,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'request_id') String? requestId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'face_recognition_details')
      FaceRecognitionDetailsModel? faceRecognitionDetails});

  $FaceRecognitionDetailsModelCopyWith<$Res>? get faceRecognitionDetails;
}

/// @nodoc
class _$FaceRecognitionResponseModelCopyWithImpl<$Res>
    implements $FaceRecognitionResponseModelCopyWith<$Res> {
  _$FaceRecognitionResponseModelCopyWithImpl(this._self, this._then);

  final FaceRecognitionResponseModel _self;
  final $Res Function(FaceRecognitionResponseModel) _then;

  /// Create a copy of FaceRecognitionResponseModel
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
              as FaceRecognitionDetailsModel?,
    ));
  }

  /// Create a copy of FaceRecognitionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsModelCopyWith<$Res>? get faceRecognitionDetails {
    if (_self.faceRecognitionDetails == null) {
      return null;
    }

    return $FaceRecognitionDetailsModelCopyWith<$Res>(
        _self.faceRecognitionDetails!, (value) {
      return _then(_self.copyWith(faceRecognitionDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FaceRecognitionResponseModel].
extension FaceRecognitionResponseModelPatterns on FaceRecognitionResponseModel {
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
    TResult Function(_FaceRecognitionResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel() when $default != null:
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
    TResult Function(_FaceRecognitionResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel():
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
    TResult? Function(_FaceRecognitionResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel() when $default != null:
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
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'attendance_id') String? attendanceId,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'request_id') String? requestId,
            @JsonKey(name: 'timestamp') String? timestamp,
            @JsonKey(name: 'face_recognition_details')
            FaceRecognitionDetailsModel? faceRecognitionDetails)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel() when $default != null:
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
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'attendance_id') String? attendanceId,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'request_id') String? requestId,
            @JsonKey(name: 'timestamp') String? timestamp,
            @JsonKey(name: 'face_recognition_details')
            FaceRecognitionDetailsModel? faceRecognitionDetails)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel():
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
            @JsonKey(name: 'type') String? type,
            @JsonKey(name: 'attendance_id') String? attendanceId,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'code') int? code,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'message') String? message,
            @JsonKey(name: 'request_id') String? requestId,
            @JsonKey(name: 'timestamp') String? timestamp,
            @JsonKey(name: 'face_recognition_details')
            FaceRecognitionDetailsModel? faceRecognitionDetails)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionResponseModel() when $default != null:
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
@JsonSerializable()
class _FaceRecognitionResponseModel implements FaceRecognitionResponseModel {
  const _FaceRecognitionResponseModel(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'attendance_id') this.attendanceId,
      @JsonKey(name: 'action') this.action,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'request_id') this.requestId,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'face_recognition_details') this.faceRecognitionDetails});
  factory _FaceRecognitionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionResponseModelFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'attendance_id')
  final String? attendanceId;
  @override
  @JsonKey(name: 'action')
  final String? action;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'request_id')
  final String? requestId;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'face_recognition_details')
  final FaceRecognitionDetailsModel? faceRecognitionDetails;

  /// Create a copy of FaceRecognitionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceRecognitionResponseModelCopyWith<_FaceRecognitionResponseModel>
      get copyWith => __$FaceRecognitionResponseModelCopyWithImpl<
          _FaceRecognitionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FaceRecognitionResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceRecognitionResponseModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, attendanceId, action, code,
      status, message, requestId, timestamp, faceRecognitionDetails);

  @override
  String toString() {
    return 'FaceRecognitionResponseModel(type: $type, attendanceId: $attendanceId, action: $action, code: $code, status: $status, message: $message, requestId: $requestId, timestamp: $timestamp, faceRecognitionDetails: $faceRecognitionDetails)';
  }
}

/// @nodoc
abstract mixin class _$FaceRecognitionResponseModelCopyWith<$Res>
    implements $FaceRecognitionResponseModelCopyWith<$Res> {
  factory _$FaceRecognitionResponseModelCopyWith(
          _FaceRecognitionResponseModel value,
          $Res Function(_FaceRecognitionResponseModel) _then) =
      __$FaceRecognitionResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'attendance_id') String? attendanceId,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'request_id') String? requestId,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'face_recognition_details')
      FaceRecognitionDetailsModel? faceRecognitionDetails});

  @override
  $FaceRecognitionDetailsModelCopyWith<$Res>? get faceRecognitionDetails;
}

/// @nodoc
class __$FaceRecognitionResponseModelCopyWithImpl<$Res>
    implements _$FaceRecognitionResponseModelCopyWith<$Res> {
  __$FaceRecognitionResponseModelCopyWithImpl(this._self, this._then);

  final _FaceRecognitionResponseModel _self;
  final $Res Function(_FaceRecognitionResponseModel) _then;

  /// Create a copy of FaceRecognitionResponseModel
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
    return _then(_FaceRecognitionResponseModel(
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
              as FaceRecognitionDetailsModel?,
    ));
  }

  /// Create a copy of FaceRecognitionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsModelCopyWith<$Res>? get faceRecognitionDetails {
    if (_self.faceRecognitionDetails == null) {
      return null;
    }

    return $FaceRecognitionDetailsModelCopyWith<$Res>(
        _self.faceRecognitionDetails!, (value) {
      return _then(_self.copyWith(faceRecognitionDetails: value));
    });
  }
}

/// @nodoc
mixin _$FaceRecognitionDetailsModel {
  @JsonKey(name: 'success')
  bool? get success;
  @JsonKey(name: 'expected_identifier')
  String? get expectedIdentifier;
  @JsonKey(name: 'expected_name')
  String? get expectedName;
  @JsonKey(name: 'detected_identifier')
  String? get detectedIdentifier;
  @JsonKey(name: 'detected_name')
  String? get detectedName;
  @JsonKey(name: 'identifier_type')
  String? get identifierType;
  @JsonKey(name: 'confidence')
  double? get confidence;
  @JsonKey(name: 'confidence_percentage')
  double? get confidencePercentage;
  @JsonKey(name: 'threshold')
  double? get threshold;
  @JsonKey(name: 'attendance_type')
  String? get attendanceType;
  @JsonKey(name: 'error')
  String? get error;
  @JsonKey(name: 'raw_person_id')
  String? get rawPersonId;

  /// Create a copy of FaceRecognitionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceRecognitionDetailsModelCopyWith<FaceRecognitionDetailsModel>
      get copyWith => _$FaceRecognitionDetailsModelCopyWithImpl<
              FaceRecognitionDetailsModel>(
          this as FaceRecognitionDetailsModel, _$identity);

  /// Serializes this FaceRecognitionDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceRecognitionDetailsModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'FaceRecognitionDetailsModel(success: $success, expectedIdentifier: $expectedIdentifier, expectedName: $expectedName, detectedIdentifier: $detectedIdentifier, detectedName: $detectedName, identifierType: $identifierType, confidence: $confidence, confidencePercentage: $confidencePercentage, threshold: $threshold, attendanceType: $attendanceType, error: $error, rawPersonId: $rawPersonId)';
  }
}

/// @nodoc
abstract mixin class $FaceRecognitionDetailsModelCopyWith<$Res> {
  factory $FaceRecognitionDetailsModelCopyWith(
          FaceRecognitionDetailsModel value,
          $Res Function(FaceRecognitionDetailsModel) _then) =
      _$FaceRecognitionDetailsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
      @JsonKey(name: 'expected_name') String? expectedName,
      @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
      @JsonKey(name: 'detected_name') String? detectedName,
      @JsonKey(name: 'identifier_type') String? identifierType,
      @JsonKey(name: 'confidence') double? confidence,
      @JsonKey(name: 'confidence_percentage') double? confidencePercentage,
      @JsonKey(name: 'threshold') double? threshold,
      @JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'raw_person_id') String? rawPersonId});
}

/// @nodoc
class _$FaceRecognitionDetailsModelCopyWithImpl<$Res>
    implements $FaceRecognitionDetailsModelCopyWith<$Res> {
  _$FaceRecognitionDetailsModelCopyWithImpl(this._self, this._then);

  final FaceRecognitionDetailsModel _self;
  final $Res Function(FaceRecognitionDetailsModel) _then;

  /// Create a copy of FaceRecognitionDetailsModel
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

/// Adds pattern-matching-related methods to [FaceRecognitionDetailsModel].
extension FaceRecognitionDetailsModelPatterns on FaceRecognitionDetailsModel {
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
    TResult Function(_FaceRecognitionDetailsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel() when $default != null:
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
    TResult Function(_FaceRecognitionDetailsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel():
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
    TResult? Function(_FaceRecognitionDetailsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel() when $default != null:
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
            @JsonKey(name: 'expected_name') String? expectedName,
            @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
            @JsonKey(name: 'detected_name') String? detectedName,
            @JsonKey(name: 'identifier_type') String? identifierType,
            @JsonKey(name: 'confidence') double? confidence,
            @JsonKey(name: 'confidence_percentage')
            double? confidencePercentage,
            @JsonKey(name: 'threshold') double? threshold,
            @JsonKey(name: 'attendance_type') String? attendanceType,
            @JsonKey(name: 'error') String? error,
            @JsonKey(name: 'raw_person_id') String? rawPersonId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel() when $default != null:
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
            @JsonKey(name: 'expected_name') String? expectedName,
            @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
            @JsonKey(name: 'detected_name') String? detectedName,
            @JsonKey(name: 'identifier_type') String? identifierType,
            @JsonKey(name: 'confidence') double? confidence,
            @JsonKey(name: 'confidence_percentage')
            double? confidencePercentage,
            @JsonKey(name: 'threshold') double? threshold,
            @JsonKey(name: 'attendance_type') String? attendanceType,
            @JsonKey(name: 'error') String? error,
            @JsonKey(name: 'raw_person_id') String? rawPersonId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel():
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
            @JsonKey(name: 'success') bool? success,
            @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
            @JsonKey(name: 'expected_name') String? expectedName,
            @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
            @JsonKey(name: 'detected_name') String? detectedName,
            @JsonKey(name: 'identifier_type') String? identifierType,
            @JsonKey(name: 'confidence') double? confidence,
            @JsonKey(name: 'confidence_percentage')
            double? confidencePercentage,
            @JsonKey(name: 'threshold') double? threshold,
            @JsonKey(name: 'attendance_type') String? attendanceType,
            @JsonKey(name: 'error') String? error,
            @JsonKey(name: 'raw_person_id') String? rawPersonId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionDetailsModel() when $default != null:
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
@JsonSerializable()
class _FaceRecognitionDetailsModel implements FaceRecognitionDetailsModel {
  const _FaceRecognitionDetailsModel(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'expected_identifier') this.expectedIdentifier,
      @JsonKey(name: 'expected_name') this.expectedName,
      @JsonKey(name: 'detected_identifier') this.detectedIdentifier,
      @JsonKey(name: 'detected_name') this.detectedName,
      @JsonKey(name: 'identifier_type') this.identifierType,
      @JsonKey(name: 'confidence') this.confidence,
      @JsonKey(name: 'confidence_percentage') this.confidencePercentage,
      @JsonKey(name: 'threshold') this.threshold,
      @JsonKey(name: 'attendance_type') this.attendanceType,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'raw_person_id') this.rawPersonId});
  factory _FaceRecognitionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'expected_identifier')
  final String? expectedIdentifier;
  @override
  @JsonKey(name: 'expected_name')
  final String? expectedName;
  @override
  @JsonKey(name: 'detected_identifier')
  final String? detectedIdentifier;
  @override
  @JsonKey(name: 'detected_name')
  final String? detectedName;
  @override
  @JsonKey(name: 'identifier_type')
  final String? identifierType;
  @override
  @JsonKey(name: 'confidence')
  final double? confidence;
  @override
  @JsonKey(name: 'confidence_percentage')
  final double? confidencePercentage;
  @override
  @JsonKey(name: 'threshold')
  final double? threshold;
  @override
  @JsonKey(name: 'attendance_type')
  final String? attendanceType;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'raw_person_id')
  final String? rawPersonId;

  /// Create a copy of FaceRecognitionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceRecognitionDetailsModelCopyWith<_FaceRecognitionDetailsModel>
      get copyWith => __$FaceRecognitionDetailsModelCopyWithImpl<
          _FaceRecognitionDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FaceRecognitionDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceRecognitionDetailsModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'FaceRecognitionDetailsModel(success: $success, expectedIdentifier: $expectedIdentifier, expectedName: $expectedName, detectedIdentifier: $detectedIdentifier, detectedName: $detectedName, identifierType: $identifierType, confidence: $confidence, confidencePercentage: $confidencePercentage, threshold: $threshold, attendanceType: $attendanceType, error: $error, rawPersonId: $rawPersonId)';
  }
}

/// @nodoc
abstract mixin class _$FaceRecognitionDetailsModelCopyWith<$Res>
    implements $FaceRecognitionDetailsModelCopyWith<$Res> {
  factory _$FaceRecognitionDetailsModelCopyWith(
          _FaceRecognitionDetailsModel value,
          $Res Function(_FaceRecognitionDetailsModel) _then) =
      __$FaceRecognitionDetailsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'expected_identifier') String? expectedIdentifier,
      @JsonKey(name: 'expected_name') String? expectedName,
      @JsonKey(name: 'detected_identifier') String? detectedIdentifier,
      @JsonKey(name: 'detected_name') String? detectedName,
      @JsonKey(name: 'identifier_type') String? identifierType,
      @JsonKey(name: 'confidence') double? confidence,
      @JsonKey(name: 'confidence_percentage') double? confidencePercentage,
      @JsonKey(name: 'threshold') double? threshold,
      @JsonKey(name: 'attendance_type') String? attendanceType,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'raw_person_id') String? rawPersonId});
}

/// @nodoc
class __$FaceRecognitionDetailsModelCopyWithImpl<$Res>
    implements _$FaceRecognitionDetailsModelCopyWith<$Res> {
  __$FaceRecognitionDetailsModelCopyWithImpl(this._self, this._then);

  final _FaceRecognitionDetailsModel _self;
  final $Res Function(_FaceRecognitionDetailsModel) _then;

  /// Create a copy of FaceRecognitionDetailsModel
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
    return _then(_FaceRecognitionDetailsModel(
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
