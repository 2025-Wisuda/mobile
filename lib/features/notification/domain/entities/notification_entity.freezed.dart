// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEntity {
  String? get id;
  String? get userName;
  String? get notificationType;
  String? get title;
  String? get body;
  DateTime? get sentAt;
  String? get status;
  bool? get isRead;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      _$NotificationEntityCopyWithImpl<NotificationEntity>(
          this as NotificationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userName, notificationType,
      title, body, sentAt, status, isRead);

  @override
  String toString() {
    return 'NotificationEntity(id: $id, userName: $userName, notificationType: $notificationType, title: $title, body: $body, sentAt: $sentAt, status: $status, isRead: $isRead)';
  }
}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) _then) =
      _$NotificationEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? userName,
      String? notificationType,
      String? title,
      String? body,
      DateTime? sentAt,
      String? status,
      bool? isRead});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? notificationType = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? sentAt = freezed,
    Object? status = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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
    TResult Function(_NotificationEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
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
    TResult Function(_NotificationEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity():
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
    TResult? Function(_NotificationEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
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
            String? userName,
            String? notificationType,
            String? title,
            String? body,
            DateTime? sentAt,
            String? status,
            bool? isRead)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
        return $default(_that.id, _that.userName, _that.notificationType,
            _that.title, _that.body, _that.sentAt, _that.status, _that.isRead);
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
            String? userName,
            String? notificationType,
            String? title,
            String? body,
            DateTime? sentAt,
            String? status,
            bool? isRead)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity():
        return $default(_that.id, _that.userName, _that.notificationType,
            _that.title, _that.body, _that.sentAt, _that.status, _that.isRead);
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
            String? userName,
            String? notificationType,
            String? title,
            String? body,
            DateTime? sentAt,
            String? status,
            bool? isRead)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationEntity() when $default != null:
        return $default(_that.id, _that.userName, _that.notificationType,
            _that.title, _that.body, _that.sentAt, _that.status, _that.isRead);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationEntity implements NotificationEntity {
  const _NotificationEntity(
      {this.id,
      this.userName,
      this.notificationType,
      this.title,
      this.body,
      this.sentAt,
      this.status,
      this.isRead});

  @override
  final String? id;
  @override
  final String? userName;
  @override
  final String? notificationType;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final DateTime? sentAt;
  @override
  final String? status;
  @override
  final bool? isRead;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationEntityCopyWith<_NotificationEntity> get copyWith =>
      __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userName, notificationType,
      title, body, sentAt, status, isRead);

  @override
  String toString() {
    return 'NotificationEntity(id: $id, userName: $userName, notificationType: $notificationType, title: $title, body: $body, sentAt: $sentAt, status: $status, isRead: $isRead)';
  }
}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(
          _NotificationEntity value, $Res Function(_NotificationEntity) _then) =
      __$NotificationEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userName,
      String? notificationType,
      String? title,
      String? body,
      DateTime? sentAt,
      String? status,
      bool? isRead});
}

/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? notificationType = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? sentAt = freezed,
    Object? status = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_NotificationEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: freezed == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _self.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$MarkAsReadResponseEntity {
  String? get id;

  /// Create a copy of MarkAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkAsReadResponseEntityCopyWith<MarkAsReadResponseEntity> get copyWith =>
      _$MarkAsReadResponseEntityCopyWithImpl<MarkAsReadResponseEntity>(
          this as MarkAsReadResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkAsReadResponseEntity &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MarkAsReadResponseEntity(id: $id)';
  }
}

/// @nodoc
abstract mixin class $MarkAsReadResponseEntityCopyWith<$Res> {
  factory $MarkAsReadResponseEntityCopyWith(MarkAsReadResponseEntity value,
          $Res Function(MarkAsReadResponseEntity) _then) =
      _$MarkAsReadResponseEntityCopyWithImpl;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$MarkAsReadResponseEntityCopyWithImpl<$Res>
    implements $MarkAsReadResponseEntityCopyWith<$Res> {
  _$MarkAsReadResponseEntityCopyWithImpl(this._self, this._then);

  final MarkAsReadResponseEntity _self;
  final $Res Function(MarkAsReadResponseEntity) _then;

  /// Create a copy of MarkAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MarkAsReadResponseEntity].
extension MarkAsReadResponseEntityPatterns on MarkAsReadResponseEntity {
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
    TResult Function(_MarkAsReadResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity() when $default != null:
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
    TResult Function(_MarkAsReadResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity():
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
    TResult? Function(_MarkAsReadResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity() when $default != null:
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
    TResult Function(String? id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity() when $default != null:
        return $default(_that.id);
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
    TResult Function(String? id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity():
        return $default(_that.id);
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
    TResult? Function(String? id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAsReadResponseEntity() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MarkAsReadResponseEntity implements MarkAsReadResponseEntity {
  const _MarkAsReadResponseEntity({this.id});

  @override
  final String? id;

  /// Create a copy of MarkAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkAsReadResponseEntityCopyWith<_MarkAsReadResponseEntity> get copyWith =>
      __$MarkAsReadResponseEntityCopyWithImpl<_MarkAsReadResponseEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkAsReadResponseEntity &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MarkAsReadResponseEntity(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$MarkAsReadResponseEntityCopyWith<$Res>
    implements $MarkAsReadResponseEntityCopyWith<$Res> {
  factory _$MarkAsReadResponseEntityCopyWith(_MarkAsReadResponseEntity value,
          $Res Function(_MarkAsReadResponseEntity) _then) =
      __$MarkAsReadResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$MarkAsReadResponseEntityCopyWithImpl<$Res>
    implements _$MarkAsReadResponseEntityCopyWith<$Res> {
  __$MarkAsReadResponseEntityCopyWithImpl(this._self, this._then);

  final _MarkAsReadResponseEntity _self;
  final $Res Function(_MarkAsReadResponseEntity) _then;

  /// Create a copy of MarkAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_MarkAsReadResponseEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$MarkAllAsReadResponseEntity {
  int? get updatedCount;

  /// Create a copy of MarkAllAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkAllAsReadResponseEntityCopyWith<MarkAllAsReadResponseEntity>
      get copyWith => _$MarkAllAsReadResponseEntityCopyWithImpl<
              MarkAllAsReadResponseEntity>(
          this as MarkAllAsReadResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkAllAsReadResponseEntity &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedCount);

  @override
  String toString() {
    return 'MarkAllAsReadResponseEntity(updatedCount: $updatedCount)';
  }
}

/// @nodoc
abstract mixin class $MarkAllAsReadResponseEntityCopyWith<$Res> {
  factory $MarkAllAsReadResponseEntityCopyWith(
          MarkAllAsReadResponseEntity value,
          $Res Function(MarkAllAsReadResponseEntity) _then) =
      _$MarkAllAsReadResponseEntityCopyWithImpl;
  @useResult
  $Res call({int? updatedCount});
}

/// @nodoc
class _$MarkAllAsReadResponseEntityCopyWithImpl<$Res>
    implements $MarkAllAsReadResponseEntityCopyWith<$Res> {
  _$MarkAllAsReadResponseEntityCopyWithImpl(this._self, this._then);

  final MarkAllAsReadResponseEntity _self;
  final $Res Function(MarkAllAsReadResponseEntity) _then;

  /// Create a copy of MarkAllAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedCount = freezed,
  }) {
    return _then(_self.copyWith(
      updatedCount: freezed == updatedCount
          ? _self.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MarkAllAsReadResponseEntity].
extension MarkAllAsReadResponseEntityPatterns on MarkAllAsReadResponseEntity {
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
    TResult Function(_MarkAllAsReadResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity() when $default != null:
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
    TResult Function(_MarkAllAsReadResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity():
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
    TResult? Function(_MarkAllAsReadResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity() when $default != null:
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
    TResult Function(int? updatedCount)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity() when $default != null:
        return $default(_that.updatedCount);
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
    TResult Function(int? updatedCount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity():
        return $default(_that.updatedCount);
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
    TResult? Function(int? updatedCount)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkAllAsReadResponseEntity() when $default != null:
        return $default(_that.updatedCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MarkAllAsReadResponseEntity implements MarkAllAsReadResponseEntity {
  const _MarkAllAsReadResponseEntity({this.updatedCount});

  @override
  final int? updatedCount;

  /// Create a copy of MarkAllAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkAllAsReadResponseEntityCopyWith<_MarkAllAsReadResponseEntity>
      get copyWith => __$MarkAllAsReadResponseEntityCopyWithImpl<
          _MarkAllAsReadResponseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkAllAsReadResponseEntity &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedCount);

  @override
  String toString() {
    return 'MarkAllAsReadResponseEntity(updatedCount: $updatedCount)';
  }
}

/// @nodoc
abstract mixin class _$MarkAllAsReadResponseEntityCopyWith<$Res>
    implements $MarkAllAsReadResponseEntityCopyWith<$Res> {
  factory _$MarkAllAsReadResponseEntityCopyWith(
          _MarkAllAsReadResponseEntity value,
          $Res Function(_MarkAllAsReadResponseEntity) _then) =
      __$MarkAllAsReadResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({int? updatedCount});
}

/// @nodoc
class __$MarkAllAsReadResponseEntityCopyWithImpl<$Res>
    implements _$MarkAllAsReadResponseEntityCopyWith<$Res> {
  __$MarkAllAsReadResponseEntityCopyWithImpl(this._self, this._then);

  final _MarkAllAsReadResponseEntity _self;
  final $Res Function(_MarkAllAsReadResponseEntity) _then;

  /// Create a copy of MarkAllAsReadResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? updatedCount = freezed,
  }) {
    return _then(_MarkAllAsReadResponseEntity(
      updatedCount: freezed == updatedCount
          ? _self.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$UnreadCountResponseEntity {
  int? get unreadCount;

  /// Create a copy of UnreadCountResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnreadCountResponseEntityCopyWith<UnreadCountResponseEntity> get copyWith =>
      _$UnreadCountResponseEntityCopyWithImpl<UnreadCountResponseEntity>(
          this as UnreadCountResponseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnreadCountResponseEntity &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unreadCount);

  @override
  String toString() {
    return 'UnreadCountResponseEntity(unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class $UnreadCountResponseEntityCopyWith<$Res> {
  factory $UnreadCountResponseEntityCopyWith(UnreadCountResponseEntity value,
          $Res Function(UnreadCountResponseEntity) _then) =
      _$UnreadCountResponseEntityCopyWithImpl;
  @useResult
  $Res call({int? unreadCount});
}

/// @nodoc
class _$UnreadCountResponseEntityCopyWithImpl<$Res>
    implements $UnreadCountResponseEntityCopyWith<$Res> {
  _$UnreadCountResponseEntityCopyWithImpl(this._self, this._then);

  final UnreadCountResponseEntity _self;
  final $Res Function(UnreadCountResponseEntity) _then;

  /// Create a copy of UnreadCountResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadCount = freezed,
  }) {
    return _then(_self.copyWith(
      unreadCount: freezed == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnreadCountResponseEntity].
extension UnreadCountResponseEntityPatterns on UnreadCountResponseEntity {
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
    TResult Function(_UnreadCountResponseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity() when $default != null:
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
    TResult Function(_UnreadCountResponseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity():
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
    TResult? Function(_UnreadCountResponseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity() when $default != null:
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
    TResult Function(int? unreadCount)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity() when $default != null:
        return $default(_that.unreadCount);
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
    TResult Function(int? unreadCount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity():
        return $default(_that.unreadCount);
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
    TResult? Function(int? unreadCount)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnreadCountResponseEntity() when $default != null:
        return $default(_that.unreadCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UnreadCountResponseEntity implements UnreadCountResponseEntity {
  const _UnreadCountResponseEntity({this.unreadCount});

  @override
  final int? unreadCount;

  /// Create a copy of UnreadCountResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnreadCountResponseEntityCopyWith<_UnreadCountResponseEntity>
      get copyWith =>
          __$UnreadCountResponseEntityCopyWithImpl<_UnreadCountResponseEntity>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnreadCountResponseEntity &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unreadCount);

  @override
  String toString() {
    return 'UnreadCountResponseEntity(unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class _$UnreadCountResponseEntityCopyWith<$Res>
    implements $UnreadCountResponseEntityCopyWith<$Res> {
  factory _$UnreadCountResponseEntityCopyWith(_UnreadCountResponseEntity value,
          $Res Function(_UnreadCountResponseEntity) _then) =
      __$UnreadCountResponseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({int? unreadCount});
}

/// @nodoc
class __$UnreadCountResponseEntityCopyWithImpl<$Res>
    implements _$UnreadCountResponseEntityCopyWith<$Res> {
  __$UnreadCountResponseEntityCopyWithImpl(this._self, this._then);

  final _UnreadCountResponseEntity _self;
  final $Res Function(_UnreadCountResponseEntity) _then;

  /// Create a copy of UnreadCountResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unreadCount = freezed,
  }) {
    return _then(_UnreadCountResponseEntity(
      unreadCount: freezed == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
