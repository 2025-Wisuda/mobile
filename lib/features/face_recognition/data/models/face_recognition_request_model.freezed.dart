// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_recognition_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaceRecognitionRequestModel {
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'attendance_id')
  String get attendanceId;
  @JsonKey(name: 'image')
  String get image;
  @JsonKey(name: 'action')
  String? get action;
  @JsonKey(name: 'request_id')
  String? get requestId;

  /// Create a copy of FaceRecognitionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaceRecognitionRequestModelCopyWith<FaceRecognitionRequestModel>
      get copyWith => _$FaceRecognitionRequestModelCopyWithImpl<
              FaceRecognitionRequestModel>(
          this as FaceRecognitionRequestModel, _$identity);

  /// Serializes this FaceRecognitionRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaceRecognitionRequestModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, attendanceId, image, action, requestId);

  @override
  String toString() {
    return 'FaceRecognitionRequestModel(type: $type, attendanceId: $attendanceId, image: $image, action: $action, requestId: $requestId)';
  }
}

/// @nodoc
abstract mixin class $FaceRecognitionRequestModelCopyWith<$Res> {
  factory $FaceRecognitionRequestModelCopyWith(
          FaceRecognitionRequestModel value,
          $Res Function(FaceRecognitionRequestModel) _then) =
      _$FaceRecognitionRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'attendance_id') String attendanceId,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'request_id') String? requestId});
}

/// @nodoc
class _$FaceRecognitionRequestModelCopyWithImpl<$Res>
    implements $FaceRecognitionRequestModelCopyWith<$Res> {
  _$FaceRecognitionRequestModelCopyWithImpl(this._self, this._then);

  final FaceRecognitionRequestModel _self;
  final $Res Function(FaceRecognitionRequestModel) _then;

  /// Create a copy of FaceRecognitionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? attendanceId = null,
    Object? image = null,
    Object? action = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaceRecognitionRequestModel].
extension FaceRecognitionRequestModelPatterns on FaceRecognitionRequestModel {
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
    TResult Function(_FaceRecognitionRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel() when $default != null:
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
    TResult Function(_FaceRecognitionRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel():
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
    TResult? Function(_FaceRecognitionRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel() when $default != null:
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'attendance_id') String attendanceId,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'request_id') String? requestId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel() when $default != null:
        return $default(_that.type, _that.attendanceId, _that.image,
            _that.action, _that.requestId);
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'attendance_id') String attendanceId,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'request_id') String? requestId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel():
        return $default(_that.type, _that.attendanceId, _that.image,
            _that.action, _that.requestId);
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
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'attendance_id') String attendanceId,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'action') String? action,
            @JsonKey(name: 'request_id') String? requestId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaceRecognitionRequestModel() when $default != null:
        return $default(_that.type, _that.attendanceId, _that.image,
            _that.action, _that.requestId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FaceRecognitionRequestModel implements FaceRecognitionRequestModel {
  const _FaceRecognitionRequestModel(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'attendance_id') required this.attendanceId,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'action') this.action,
      @JsonKey(name: 'request_id') this.requestId});
  factory _FaceRecognitionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FaceRecognitionRequestModelFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'attendance_id')
  final String attendanceId;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'action')
  final String? action;
  @override
  @JsonKey(name: 'request_id')
  final String? requestId;

  /// Create a copy of FaceRecognitionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaceRecognitionRequestModelCopyWith<_FaceRecognitionRequestModel>
      get copyWith => __$FaceRecognitionRequestModelCopyWithImpl<
          _FaceRecognitionRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FaceRecognitionRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaceRecognitionRequestModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, attendanceId, image, action, requestId);

  @override
  String toString() {
    return 'FaceRecognitionRequestModel(type: $type, attendanceId: $attendanceId, image: $image, action: $action, requestId: $requestId)';
  }
}

/// @nodoc
abstract mixin class _$FaceRecognitionRequestModelCopyWith<$Res>
    implements $FaceRecognitionRequestModelCopyWith<$Res> {
  factory _$FaceRecognitionRequestModelCopyWith(
          _FaceRecognitionRequestModel value,
          $Res Function(_FaceRecognitionRequestModel) _then) =
      __$FaceRecognitionRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'attendance_id') String attendanceId,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'action') String? action,
      @JsonKey(name: 'request_id') String? requestId});
}

/// @nodoc
class __$FaceRecognitionRequestModelCopyWithImpl<$Res>
    implements _$FaceRecognitionRequestModelCopyWith<$Res> {
  __$FaceRecognitionRequestModelCopyWithImpl(this._self, this._then);

  final _FaceRecognitionRequestModel _self;
  final $Res Function(_FaceRecognitionRequestModel) _then;

  /// Create a copy of FaceRecognitionRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? attendanceId = null,
    Object? image = null,
    Object? action = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_FaceRecognitionRequestModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
