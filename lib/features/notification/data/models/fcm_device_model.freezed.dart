// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmDeviceModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'device_type')
  String? get deviceType;
  @JsonKey(name: 'device_name')
  String? get deviceName;
  @JsonKey(name: 'registration_token')
  String? get registrationToken;
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @JsonKey(name: 'last_used')
  DateTime? get lastUsed;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of FcmDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FcmDeviceModelCopyWith<FcmDeviceModel> get copyWith =>
      _$FcmDeviceModelCopyWithImpl<FcmDeviceModel>(
          this as FcmDeviceModel, _$identity);

  /// Serializes this FcmDeviceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FcmDeviceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, deviceName,
      registrationToken, isActive, lastUsed, createdAt, updatedAt);

  @override
  String toString() {
    return 'FcmDeviceModel(id: $id, deviceType: $deviceType, deviceName: $deviceName, registrationToken: $registrationToken, isActive: $isActive, lastUsed: $lastUsed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FcmDeviceModelCopyWith<$Res> {
  factory $FcmDeviceModelCopyWith(
          FcmDeviceModel value, $Res Function(FcmDeviceModel) _then) =
      _$FcmDeviceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'device_type') String? deviceType,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'registration_token') String? registrationToken,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'last_used') DateTime? lastUsed,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$FcmDeviceModelCopyWithImpl<$Res>
    implements $FcmDeviceModelCopyWith<$Res> {
  _$FcmDeviceModelCopyWithImpl(this._self, this._then);

  final FcmDeviceModel _self;
  final $Res Function(FcmDeviceModel) _then;

  /// Create a copy of FcmDeviceModel
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

/// Adds pattern-matching-related methods to [FcmDeviceModel].
extension FcmDeviceModelPatterns on FcmDeviceModel {
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
    TResult Function(_FcmDeviceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel() when $default != null:
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
    TResult Function(_FcmDeviceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel():
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
    TResult? Function(_FcmDeviceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'device_type') String? deviceType,
            @JsonKey(name: 'device_name') String? deviceName,
            @JsonKey(name: 'registration_token') String? registrationToken,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'last_used') DateTime? lastUsed,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'device_type') String? deviceType,
            @JsonKey(name: 'device_name') String? deviceName,
            @JsonKey(name: 'registration_token') String? registrationToken,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'last_used') DateTime? lastUsed,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel():
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'device_type') String? deviceType,
            @JsonKey(name: 'device_name') String? deviceName,
            @JsonKey(name: 'registration_token') String? registrationToken,
            @JsonKey(name: 'is_active') bool? isActive,
            @JsonKey(name: 'last_used') DateTime? lastUsed,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FcmDeviceModel() when $default != null:
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
@JsonSerializable()
class _FcmDeviceModel implements FcmDeviceModel {
  const _FcmDeviceModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'device_type') this.deviceType,
      @JsonKey(name: 'device_name') this.deviceName,
      @JsonKey(name: 'registration_token') this.registrationToken,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'last_used') this.lastUsed,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});
  factory _FcmDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$FcmDeviceModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'device_type')
  final String? deviceType;
  @override
  @JsonKey(name: 'device_name')
  final String? deviceName;
  @override
  @JsonKey(name: 'registration_token')
  final String? registrationToken;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'last_used')
  final DateTime? lastUsed;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// Create a copy of FcmDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FcmDeviceModelCopyWith<_FcmDeviceModel> get copyWith =>
      __$FcmDeviceModelCopyWithImpl<_FcmDeviceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FcmDeviceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FcmDeviceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, deviceName,
      registrationToken, isActive, lastUsed, createdAt, updatedAt);

  @override
  String toString() {
    return 'FcmDeviceModel(id: $id, deviceType: $deviceType, deviceName: $deviceName, registrationToken: $registrationToken, isActive: $isActive, lastUsed: $lastUsed, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FcmDeviceModelCopyWith<$Res>
    implements $FcmDeviceModelCopyWith<$Res> {
  factory _$FcmDeviceModelCopyWith(
          _FcmDeviceModel value, $Res Function(_FcmDeviceModel) _then) =
      __$FcmDeviceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'device_type') String? deviceType,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'registration_token') String? registrationToken,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'last_used') DateTime? lastUsed,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$FcmDeviceModelCopyWithImpl<$Res>
    implements _$FcmDeviceModelCopyWith<$Res> {
  __$FcmDeviceModelCopyWithImpl(this._self, this._then);

  final _FcmDeviceModel _self;
  final $Res Function(_FcmDeviceModel) _then;

  /// Create a copy of FcmDeviceModel
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
    return _then(_FcmDeviceModel(
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
mixin _$ListFcmDeviceModel {
  @JsonKey(name: 'devices')
  List<FcmDeviceModel>? get devices;
  @JsonKey(name: 'count')
  int? get count;

  /// Create a copy of ListFcmDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListFcmDeviceModelCopyWith<ListFcmDeviceModel> get copyWith =>
      _$ListFcmDeviceModelCopyWithImpl<ListFcmDeviceModel>(
          this as ListFcmDeviceModel, _$identity);

  /// Serializes this ListFcmDeviceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListFcmDeviceModel &&
            const DeepCollectionEquality().equals(other.devices, devices) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(devices), count);

  @override
  String toString() {
    return 'ListFcmDeviceModel(devices: $devices, count: $count)';
  }
}

/// @nodoc
abstract mixin class $ListFcmDeviceModelCopyWith<$Res> {
  factory $ListFcmDeviceModelCopyWith(
          ListFcmDeviceModel value, $Res Function(ListFcmDeviceModel) _then) =
      _$ListFcmDeviceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class _$ListFcmDeviceModelCopyWithImpl<$Res>
    implements $ListFcmDeviceModelCopyWith<$Res> {
  _$ListFcmDeviceModelCopyWithImpl(this._self, this._then);

  final ListFcmDeviceModel _self;
  final $Res Function(ListFcmDeviceModel) _then;

  /// Create a copy of ListFcmDeviceModel
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
              as List<FcmDeviceModel>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ListFcmDeviceModel].
extension ListFcmDeviceModelPatterns on ListFcmDeviceModel {
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
    TResult Function(_ListFcmDeviceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel() when $default != null:
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
    TResult Function(_ListFcmDeviceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel():
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
    TResult? Function(_ListFcmDeviceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
            @JsonKey(name: 'count') int? count)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
            @JsonKey(name: 'count') int? count)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel():
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
    TResult? Function(@JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
            @JsonKey(name: 'count') int? count)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ListFcmDeviceModel() when $default != null:
        return $default(_that.devices, _that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ListFcmDeviceModel implements ListFcmDeviceModel {
  const _ListFcmDeviceModel(
      {@JsonKey(name: 'devices') final List<FcmDeviceModel>? devices,
      @JsonKey(name: 'count') this.count})
      : _devices = devices;
  factory _ListFcmDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$ListFcmDeviceModelFromJson(json);

  final List<FcmDeviceModel>? _devices;
  @override
  @JsonKey(name: 'devices')
  List<FcmDeviceModel>? get devices {
    final value = _devices;
    if (value == null) return null;
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'count')
  final int? count;

  /// Create a copy of ListFcmDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListFcmDeviceModelCopyWith<_ListFcmDeviceModel> get copyWith =>
      __$ListFcmDeviceModelCopyWithImpl<_ListFcmDeviceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListFcmDeviceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListFcmDeviceModel &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_devices), count);

  @override
  String toString() {
    return 'ListFcmDeviceModel(devices: $devices, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$ListFcmDeviceModelCopyWith<$Res>
    implements $ListFcmDeviceModelCopyWith<$Res> {
  factory _$ListFcmDeviceModelCopyWith(
          _ListFcmDeviceModel value, $Res Function(_ListFcmDeviceModel) _then) =
      __$ListFcmDeviceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class __$ListFcmDeviceModelCopyWithImpl<$Res>
    implements _$ListFcmDeviceModelCopyWith<$Res> {
  __$ListFcmDeviceModelCopyWithImpl(this._self, this._then);

  final _ListFcmDeviceModel _self;
  final $Res Function(_ListFcmDeviceModel) _then;

  /// Create a copy of ListFcmDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? devices = freezed,
    Object? count = freezed,
  }) {
    return _then(_ListFcmDeviceModel(
      devices: freezed == devices
          ? _self._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<FcmDeviceModel>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$RegisterDeviceResponseModel {
  @JsonKey(name: 'device_id')
  String? get deviceId;

  /// Create a copy of RegisterDeviceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterDeviceResponseModelCopyWith<RegisterDeviceResponseModel>
      get copyWith => _$RegisterDeviceResponseModelCopyWithImpl<
              RegisterDeviceResponseModel>(
          this as RegisterDeviceResponseModel, _$identity);

  /// Serializes this RegisterDeviceResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterDeviceResponseModel &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'RegisterDeviceResponseModel(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $RegisterDeviceResponseModelCopyWith<$Res> {
  factory $RegisterDeviceResponseModelCopyWith(
          RegisterDeviceResponseModel value,
          $Res Function(RegisterDeviceResponseModel) _then) =
      _$RegisterDeviceResponseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'device_id') String? deviceId});
}

/// @nodoc
class _$RegisterDeviceResponseModelCopyWithImpl<$Res>
    implements $RegisterDeviceResponseModelCopyWith<$Res> {
  _$RegisterDeviceResponseModelCopyWithImpl(this._self, this._then);

  final RegisterDeviceResponseModel _self;
  final $Res Function(RegisterDeviceResponseModel) _then;

  /// Create a copy of RegisterDeviceResponseModel
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

/// Adds pattern-matching-related methods to [RegisterDeviceResponseModel].
extension RegisterDeviceResponseModelPatterns on RegisterDeviceResponseModel {
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
    TResult Function(_RegisterDeviceResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel() when $default != null:
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
    TResult Function(_RegisterDeviceResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel():
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
    TResult? Function(_RegisterDeviceResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'device_id') String? deviceId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'device_id') String? deviceId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel():
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
    TResult? Function(@JsonKey(name: 'device_id') String? deviceId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterDeviceResponseModel() when $default != null:
        return $default(_that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterDeviceResponseModel implements RegisterDeviceResponseModel {
  const _RegisterDeviceResponseModel(
      {@JsonKey(name: 'device_id') this.deviceId});
  factory _RegisterDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceResponseModelFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;

  /// Create a copy of RegisterDeviceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterDeviceResponseModelCopyWith<_RegisterDeviceResponseModel>
      get copyWith => __$RegisterDeviceResponseModelCopyWithImpl<
          _RegisterDeviceResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterDeviceResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterDeviceResponseModel &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @override
  String toString() {
    return 'RegisterDeviceResponseModel(deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$RegisterDeviceResponseModelCopyWith<$Res>
    implements $RegisterDeviceResponseModelCopyWith<$Res> {
  factory _$RegisterDeviceResponseModelCopyWith(
          _RegisterDeviceResponseModel value,
          $Res Function(_RegisterDeviceResponseModel) _then) =
      __$RegisterDeviceResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'device_id') String? deviceId});
}

/// @nodoc
class __$RegisterDeviceResponseModelCopyWithImpl<$Res>
    implements _$RegisterDeviceResponseModelCopyWith<$Res> {
  __$RegisterDeviceResponseModelCopyWithImpl(this._self, this._then);

  final _RegisterDeviceResponseModel _self;
  final $Res Function(_RegisterDeviceResponseModel) _then;

  /// Create a copy of RegisterDeviceResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(_RegisterDeviceResponseModel(
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
