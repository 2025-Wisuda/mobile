// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmDeviceEntity {
  String? get id;
  String? get deviceType;
  String? get deviceName;
  String? get registrationToken;
  bool? get isActive;
  DateTime? get lastUsed;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of FcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FcmDeviceEntityCopyWith<FcmDeviceEntity> get copyWith =>
      _$FcmDeviceEntityCopyWithImpl<FcmDeviceEntity>(
          this as FcmDeviceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FcmDeviceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.registrationToken, registrationToken) ||
                other.registrationToken == registrationToken) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, deviceName,
      registrationToken, isActive, lastUsed, createdAt, updatedAt);

  @override
  String toString() {
    return 'FcmDeviceEntity(id: $id, deviceType: $deviceType, deviceName: $deviceName, registrationToken: $registrationToken, isActive: $isActive, lastUsed: $lastUsed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FcmDeviceEntityCopyWith<$Res> {
  factory $FcmDeviceEntityCopyWith(
          FcmDeviceEntity value, $Res Function(FcmDeviceEntity) _then) =
      _$FcmDeviceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? deviceType,
      String? deviceName,
      String? registrationToken,
      bool? isActive,
      DateTime? lastUsed,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$FcmDeviceEntityCopyWithImpl<$Res>
    implements $FcmDeviceEntityCopyWith<$Res> {
  _$FcmDeviceEntityCopyWithImpl(this._self, this._then);

  final FcmDeviceEntity _self;
  final $Res Function(FcmDeviceEntity) _then;

  /// Create a copy of FcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceType = freezed,
    Object? deviceName = freezed,
    Object? registrationToken = freezed,
    Object? isActive = freezed,
    Object? lastUsed = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationToken: freezed == registrationToken
          ? _self.registrationToken
          : registrationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUsed: freezed == lastUsed
          ? _self.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FcmDeviceEntity].
extension FcmDeviceEntityPatterns on FcmDeviceEntity {
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
    TResult Function(_FcmDeviceEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity() when $default != null:
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
    TResult Function(_FcmDeviceEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity():
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
    TResult? Function(_FcmDeviceEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity() when $default != null:
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
            String? id,
            String? deviceType,
            String? deviceName,
            String? registrationToken,
            bool? isActive,
            DateTime? lastUsed,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity() when $default != null:
        return $default(
            _that.id,
            _that.deviceType,
            _that.deviceName,
            _that.registrationToken,
            _that.isActive,
            _that.lastUsed,
            _that.createdAt,
            _that.updatedAt);
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
            String? id,
            String? deviceType,
            String? deviceName,
            String? registrationToken,
            bool? isActive,
            DateTime? lastUsed,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity():
        return $default(
            _that.id,
            _that.deviceType,
            _that.deviceName,
            _that.registrationToken,
            _that.isActive,
            _that.lastUsed,
            _that.createdAt,
            _that.updatedAt);
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
            String? id,
            String? deviceType,
            String? deviceName,
            String? registrationToken,
            bool? isActive,
            DateTime? lastUsed,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceEntity() when $default != null:
        return $default(
            _that.id,
            _that.deviceType,
            _that.deviceName,
            _that.registrationToken,
            _that.isActive,
            _that.lastUsed,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FcmDeviceEntity implements FcmDeviceEntity {
  const _FcmDeviceEntity(
      {this.id,
      this.deviceType,
      this.deviceName,
      this.registrationToken,
      this.isActive,
      this.lastUsed,
      this.createdAt,
      this.updatedAt});

  @override
  final String? id;
  @override
  final String? deviceType;
  @override
  final String? deviceName;
  @override
  final String? registrationToken;
  @override
  final bool? isActive;
  @override
  final DateTime? lastUsed;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of FcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FcmDeviceEntityCopyWith<_FcmDeviceEntity> get copyWith =>
      __$FcmDeviceEntityCopyWithImpl<_FcmDeviceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FcmDeviceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.registrationToken, registrationToken) ||
                other.registrationToken == registrationToken) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, deviceName,
      registrationToken, isActive, lastUsed, createdAt, updatedAt);

  @override
  String toString() {
    return 'FcmDeviceEntity(id: $id, deviceType: $deviceType, deviceName: $deviceName, registrationToken: $registrationToken, isActive: $isActive, lastUsed: $lastUsed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FcmDeviceEntityCopyWith<$Res>
    implements $FcmDeviceEntityCopyWith<$Res> {
  factory _$FcmDeviceEntityCopyWith(
          _FcmDeviceEntity value, $Res Function(_FcmDeviceEntity) _then) =
      __$FcmDeviceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? deviceType,
      String? deviceName,
      String? registrationToken,
      bool? isActive,
      DateTime? lastUsed,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$FcmDeviceEntityCopyWithImpl<$Res>
    implements _$FcmDeviceEntityCopyWith<$Res> {
  __$FcmDeviceEntityCopyWithImpl(this._self, this._then);

  final _FcmDeviceEntity _self;
  final $Res Function(_FcmDeviceEntity) _then;

  /// Create a copy of FcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? deviceType = freezed,
    Object? deviceName = freezed,
    Object? registrationToken = freezed,
    Object? isActive = freezed,
    Object? lastUsed = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FcmDeviceEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationToken: freezed == registrationToken
          ? _self.registrationToken
          : registrationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUsed: freezed == lastUsed
          ? _self.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$ListFcmDeviceEntity {
  List<FcmDeviceEntity>? get devices;
  int? get count;

  /// Create a copy of ListFcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListFcmDeviceEntityCopyWith<ListFcmDeviceEntity> get copyWith =>
      _$ListFcmDeviceEntityCopyWithImpl<ListFcmDeviceEntity>(
          this as ListFcmDeviceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListFcmDeviceEntity &&
            const DeepCollectionEquality().equals(other.devices, devices) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(devices), count);

  @override
  String toString() {
    return 'ListFcmDeviceEntity(devices: $devices, count: $count)';
  }
}

/// @nodoc
abstract mixin class $ListFcmDeviceEntityCopyWith<$Res> {
  factory $ListFcmDeviceEntityCopyWith(
          ListFcmDeviceEntity value, $Res Function(ListFcmDeviceEntity) _then) =
      _$ListFcmDeviceEntityCopyWithImpl;
  @useResult
  $Res call({List<FcmDeviceEntity>? devices, int? count});
}

/// @nodoc
class _$ListFcmDeviceEntityCopyWithImpl<$Res>
    implements $ListFcmDeviceEntityCopyWith<$Res> {
  _$ListFcmDeviceEntityCopyWithImpl(this._self, this._then);

  final ListFcmDeviceEntity _self;
  final $Res Function(ListFcmDeviceEntity) _then;

  /// Create a copy of ListFcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = freezed,
    Object? count = freezed,
  }) {
    return _then(_self.copyWith(
      devices: freezed == devices
          ? _self.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<FcmDeviceEntity>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ListFcmDeviceEntity].
extension ListFcmDeviceEntityPatterns on ListFcmDeviceEntity {
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
    TResult Function(_ListFcmDeviceEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity() when $default != null:
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
    TResult Function(_ListFcmDeviceEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity():
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
    TResult? Function(_ListFcmDeviceEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity() when $default != null:
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
    TResult Function(List<FcmDeviceEntity>? devices, int? count)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity() when $default != null:
        return $default(_that.devices, _that.count);
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
    TResult Function(List<FcmDeviceEntity>? devices, int? count) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity():
        return $default(_that.devices, _that.count);
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
    TResult? Function(List<FcmDeviceEntity>? devices, int? count)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceEntity() when $default != null:
        return $default(_that.devices, _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ListFcmDeviceEntity implements ListFcmDeviceEntity {
  const _ListFcmDeviceEntity({final List<FcmDeviceEntity>? devices, this.count})
      : _devices = devices;

  final List<FcmDeviceEntity>? _devices;
  @override
  List<FcmDeviceEntity>? get devices {
    final value = _devices;
    if (value == null) return null;
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? count;

  /// Create a copy of ListFcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListFcmDeviceEntityCopyWith<_ListFcmDeviceEntity> get copyWith =>
      __$ListFcmDeviceEntityCopyWithImpl<_ListFcmDeviceEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListFcmDeviceEntity &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_devices), count);

  @override
  String toString() {
    return 'ListFcmDeviceEntity(devices: $devices, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$ListFcmDeviceEntityCopyWith<$Res>
    implements $ListFcmDeviceEntityCopyWith<$Res> {
  factory _$ListFcmDeviceEntityCopyWith(_ListFcmDeviceEntity value,
          $Res Function(_ListFcmDeviceEntity) _then) =
      __$ListFcmDeviceEntityCopyWithImpl;
  @override
  @useResult
  $Res call({List<FcmDeviceEntity>? devices, int? count});
}

/// @nodoc
class __$ListFcmDeviceEntityCopyWithImpl<$Res>
    implements _$ListFcmDeviceEntityCopyWith<$Res> {
  __$ListFcmDeviceEntityCopyWithImpl(this._self, this._then);

  final _ListFcmDeviceEntity _self;
  final $Res Function(_ListFcmDeviceEntity) _then;

  /// Create a copy of ListFcmDeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? devices = freezed,
    Object? count = freezed,
  }) {
    return _then(_ListFcmDeviceEntity(
      devices: freezed == devices
          ? _self._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<FcmDeviceEntity>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$RegisterDeviceResponseEntity {
  String? get deviceId;

  /// Create a copy of RegisterDeviceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterDeviceResponseEntityCopyWith<RegisterDeviceResponseEntity>
      get copyWith => _$RegisterDeviceResponseEntityCopyWithImpl<
              RegisterDeviceResponseEntity>(
          this as RegisterDeviceResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterDeviceResponseEntity &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'RegisterDeviceResponseEntity(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $RegisterDeviceResponseEntityCopyWith<$Res> {
  factory $RegisterDeviceResponseEntityCopyWith(
          RegisterDeviceResponseEntity value,
          $Res Function(RegisterDeviceResponseEntity) _then) =
      _$RegisterDeviceResponseEntityCopyWithImpl;
  @useResult
  $Res call({String? deviceId});
}

/// @nodoc
class _$RegisterDeviceResponseEntityCopyWithImpl<$Res>
    implements $RegisterDeviceResponseEntityCopyWith<$Res> {
  _$RegisterDeviceResponseEntityCopyWithImpl(this._self, this._then);

  final RegisterDeviceResponseEntity _self;
  final $Res Function(RegisterDeviceResponseEntity) _then;

  /// Create a copy of RegisterDeviceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(_self.copyWith(
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterDeviceResponseEntity].
extension RegisterDeviceResponseEntityPatterns on RegisterDeviceResponseEntity {
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
    TResult Function(_RegisterDeviceResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity() when $default != null:
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
    TResult Function(_RegisterDeviceResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity():
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
    TResult? Function(_RegisterDeviceResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity() when $default != null:
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
    TResult Function(String? deviceId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity() when $default != null:
        return $default(_that.deviceId);
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
    TResult Function(String? deviceId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity():
        return $default(_that.deviceId);
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
    TResult? Function(String? deviceId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseEntity() when $default != null:
        return $default(_that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterDeviceResponseEntity implements RegisterDeviceResponseEntity {
  const _RegisterDeviceResponseEntity({this.deviceId});

  @override
  final String? deviceId;

  /// Create a copy of RegisterDeviceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterDeviceResponseEntityCopyWith<_RegisterDeviceResponseEntity>
      get copyWith => __$RegisterDeviceResponseEntityCopyWithImpl<
          _RegisterDeviceResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterDeviceResponseEntity &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'RegisterDeviceResponseEntity(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$RegisterDeviceResponseEntityCopyWith<$Res>
    implements $RegisterDeviceResponseEntityCopyWith<$Res> {
  factory _$RegisterDeviceResponseEntityCopyWith(
          _RegisterDeviceResponseEntity value,
          $Res Function(_RegisterDeviceResponseEntity) _then) =
      __$RegisterDeviceResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? deviceId});
}

/// @nodoc
class __$RegisterDeviceResponseEntityCopyWithImpl<$Res>
    implements _$RegisterDeviceResponseEntityCopyWith<$Res> {
  __$RegisterDeviceResponseEntityCopyWithImpl(this._self, this._then);

  final _RegisterDeviceResponseEntity _self;
  final $Res Function(_RegisterDeviceResponseEntity) _then;

  /// Create a copy of RegisterDeviceResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(_RegisterDeviceResponseEntity(
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
