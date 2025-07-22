// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manual_override_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManualOverrideRequestEntity {
  String get attendanceId;
  String get action;

  /// Create a copy of ManualOverrideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManualOverrideRequestEntityCopyWith<ManualOverrideRequestEntity>
      get copyWith => _$ManualOverrideRequestEntityCopyWithImpl<
              ManualOverrideRequestEntity>(
          this as ManualOverrideRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManualOverrideRequestEntity &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceId, action);

  @override
  String toString() {
    return 'ManualOverrideRequestEntity(attendanceId: $attendanceId, action: $action)';
  }
}

/// @nodoc
abstract mixin class $ManualOverrideRequestEntityCopyWith<$Res> {
  factory $ManualOverrideRequestEntityCopyWith(
          ManualOverrideRequestEntity value,
          $Res Function(ManualOverrideRequestEntity) _then) =
      _$ManualOverrideRequestEntityCopyWithImpl;
  @useResult
  $Res call({String attendanceId, String action});
}

/// @nodoc
class _$ManualOverrideRequestEntityCopyWithImpl<$Res>
    implements $ManualOverrideRequestEntityCopyWith<$Res> {
  _$ManualOverrideRequestEntityCopyWithImpl(this._self, this._then);

  final ManualOverrideRequestEntity _self;
  final $Res Function(ManualOverrideRequestEntity) _then;

  /// Create a copy of ManualOverrideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? action = null,
  }) {
    return _then(_self.copyWith(
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ManualOverrideRequestEntity].
extension ManualOverrideRequestEntityPatterns on ManualOverrideRequestEntity {
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
    TResult Function(_ManualOverrideRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity() when $default != null:
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
    TResult Function(_ManualOverrideRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity():
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
    TResult? Function(_ManualOverrideRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity() when $default != null:
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
    TResult Function(String attendanceId, String action)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity() when $default != null:
        return $default(_that.attendanceId, _that.action);
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
    TResult Function(String attendanceId, String action) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity():
        return $default(_that.attendanceId, _that.action);
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
    TResult? Function(String attendanceId, String action)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestEntity() when $default != null:
        return $default(_that.attendanceId, _that.action);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ManualOverrideRequestEntity implements ManualOverrideRequestEntity {
  const _ManualOverrideRequestEntity(
      {required this.attendanceId, required this.action});

  @override
  final String attendanceId;
  @override
  final String action;

  /// Create a copy of ManualOverrideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManualOverrideRequestEntityCopyWith<_ManualOverrideRequestEntity>
      get copyWith => __$ManualOverrideRequestEntityCopyWithImpl<
          _ManualOverrideRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ManualOverrideRequestEntity &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendanceId, action);

  @override
  String toString() {
    return 'ManualOverrideRequestEntity(attendanceId: $attendanceId, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$ManualOverrideRequestEntityCopyWith<$Res>
    implements $ManualOverrideRequestEntityCopyWith<$Res> {
  factory _$ManualOverrideRequestEntityCopyWith(
          _ManualOverrideRequestEntity value,
          $Res Function(_ManualOverrideRequestEntity) _then) =
      __$ManualOverrideRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String attendanceId, String action});
}

/// @nodoc
class __$ManualOverrideRequestEntityCopyWithImpl<$Res>
    implements _$ManualOverrideRequestEntityCopyWith<$Res> {
  __$ManualOverrideRequestEntityCopyWithImpl(this._self, this._then);

  final _ManualOverrideRequestEntity _self;
  final $Res Function(_ManualOverrideRequestEntity) _then;

  /// Create a copy of ManualOverrideRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? attendanceId = null,
    Object? action = null,
  }) {
    return _then(_ManualOverrideRequestEntity(
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ManualOverrideResponseEntity {
  String get attendanceId;
  String get action;
  String get status;
  String get overriddenBy;

  /// Create a copy of ManualOverrideResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManualOverrideResponseEntityCopyWith<ManualOverrideResponseEntity>
      get copyWith => _$ManualOverrideResponseEntityCopyWithImpl<
              ManualOverrideResponseEntity>(
          this as ManualOverrideResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManualOverrideResponseEntity &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.overriddenBy, overriddenBy) ||
                other.overriddenBy == overriddenBy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, attendanceId, action, status, overriddenBy);

  @override
  String toString() {
    return 'ManualOverrideResponseEntity(attendanceId: $attendanceId, action: $action, status: $status, overriddenBy: $overriddenBy)';
  }
}

/// @nodoc
abstract mixin class $ManualOverrideResponseEntityCopyWith<$Res> {
  factory $ManualOverrideResponseEntityCopyWith(
          ManualOverrideResponseEntity value,
          $Res Function(ManualOverrideResponseEntity) _then) =
      _$ManualOverrideResponseEntityCopyWithImpl;
  @useResult
  $Res call(
      {String attendanceId, String action, String status, String overriddenBy});
}

/// @nodoc
class _$ManualOverrideResponseEntityCopyWithImpl<$Res>
    implements $ManualOverrideResponseEntityCopyWith<$Res> {
  _$ManualOverrideResponseEntityCopyWithImpl(this._self, this._then);

  final ManualOverrideResponseEntity _self;
  final $Res Function(ManualOverrideResponseEntity) _then;

  /// Create a copy of ManualOverrideResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? action = null,
    Object? status = null,
    Object? overriddenBy = null,
  }) {
    return _then(_self.copyWith(
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      overriddenBy: null == overriddenBy
          ? _self.overriddenBy
          : overriddenBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ManualOverrideResponseEntity].
extension ManualOverrideResponseEntityPatterns on ManualOverrideResponseEntity {
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
    TResult Function(_ManualOverrideResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity() when $default != null:
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
    TResult Function(_ManualOverrideResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity():
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
    TResult? Function(_ManualOverrideResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity() when $default != null:
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
    TResult Function(String attendanceId, String action, String status,
            String overriddenBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity() when $default != null:
        return $default(
            _that.attendanceId, _that.action, _that.status, _that.overriddenBy);
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
    TResult Function(String attendanceId, String action, String status,
            String overriddenBy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity():
        return $default(
            _that.attendanceId, _that.action, _that.status, _that.overriddenBy);
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
    TResult? Function(String attendanceId, String action, String status,
            String overriddenBy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideResponseEntity() when $default != null:
        return $default(
            _that.attendanceId, _that.action, _that.status, _that.overriddenBy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ManualOverrideResponseEntity implements ManualOverrideResponseEntity {
  const _ManualOverrideResponseEntity(
      {required this.attendanceId,
      required this.action,
      required this.status,
      required this.overriddenBy});

  @override
  final String attendanceId;
  @override
  final String action;
  @override
  final String status;
  @override
  final String overriddenBy;

  /// Create a copy of ManualOverrideResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManualOverrideResponseEntityCopyWith<_ManualOverrideResponseEntity>
      get copyWith => __$ManualOverrideResponseEntityCopyWithImpl<
          _ManualOverrideResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ManualOverrideResponseEntity &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.overriddenBy, overriddenBy) ||
                other.overriddenBy == overriddenBy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, attendanceId, action, status, overriddenBy);

  @override
  String toString() {
    return 'ManualOverrideResponseEntity(attendanceId: $attendanceId, action: $action, status: $status, overriddenBy: $overriddenBy)';
  }
}

/// @nodoc
abstract mixin class _$ManualOverrideResponseEntityCopyWith<$Res>
    implements $ManualOverrideResponseEntityCopyWith<$Res> {
  factory _$ManualOverrideResponseEntityCopyWith(
          _ManualOverrideResponseEntity value,
          $Res Function(_ManualOverrideResponseEntity) _then) =
      __$ManualOverrideResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String attendanceId, String action, String status, String overriddenBy});
}

/// @nodoc
class __$ManualOverrideResponseEntityCopyWithImpl<$Res>
    implements _$ManualOverrideResponseEntityCopyWith<$Res> {
  __$ManualOverrideResponseEntityCopyWithImpl(this._self, this._then);

  final _ManualOverrideResponseEntity _self;
  final $Res Function(_ManualOverrideResponseEntity) _then;

  /// Create a copy of ManualOverrideResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? attendanceId = null,
    Object? action = null,
    Object? status = null,
    Object? overriddenBy = null,
  }) {
    return _then(_ManualOverrideResponseEntity(
      attendanceId: null == attendanceId
          ? _self.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      overriddenBy: null == overriddenBy
          ? _self.overriddenBy
          : overriddenBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
