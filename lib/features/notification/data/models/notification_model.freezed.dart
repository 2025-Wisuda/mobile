// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'user_name')
  String? get userName;
  @JsonKey(name: 'notification_type')
  String? get notificationType;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'body')
  String? get body;
  @JsonKey(name: 'sent_at')
  DateTime? get sentAt;
  @JsonKey(name: 'status')
  String? get status;
  @JsonKey(name: 'is_read')
  bool? get isRead;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      _$NotificationModelCopyWithImpl<NotificationModel>(
          this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, notificationType,
      title, body, sentAt, status, isRead);

  @override
  String toString() {
    return 'NotificationModel(id: $id, userName: $userName, notificationType: $notificationType, title: $title, body: $body, sentAt: $sentAt, status: $status, isRead: $isRead)';
  }
}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) _then) =
      _$NotificationModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'notification_type') String? notificationType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'sent_at') DateTime? sentAt,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'is_read') bool? isRead});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

  /// Create a copy of NotificationModel
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

/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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
    TResult Function(_NotificationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
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
    TResult Function(_NotificationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel():
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
    TResult? Function(_NotificationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
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
            @JsonKey(name: 'user_name') String? userName,
            @JsonKey(name: 'notification_type') String? notificationType,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'sent_at') DateTime? sentAt,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'is_read') bool? isRead)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'user_name') String? userName,
            @JsonKey(name: 'notification_type') String? notificationType,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'sent_at') DateTime? sentAt,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'is_read') bool? isRead)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel():
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'user_name') String? userName,
            @JsonKey(name: 'notification_type') String? notificationType,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'body') String? body,
            @JsonKey(name: 'sent_at') DateTime? sentAt,
            @JsonKey(name: 'status') String? status,
            @JsonKey(name: 'is_read') bool? isRead)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationModel() when $default != null:
        return $default(_that.id, _that.userName, _that.notificationType,
            _that.title, _that.body, _that.sentAt, _that.status, _that.isRead);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationModel implements NotificationModel {
  const _NotificationModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'notification_type') this.notificationType,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'sent_at') this.sentAt,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'is_read') this.isRead});
  factory _NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'notification_type')
  final String? notificationType;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'sent_at')
  final DateTime? sentAt;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'is_read')
  final bool? isRead;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, notificationType,
      title, body, sentAt, status, isRead);

  @override
  String toString() {
    return 'NotificationModel(id: $id, userName: $userName, notificationType: $notificationType, title: $title, body: $body, sentAt: $sentAt, status: $status, isRead: $isRead)';
  }
}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(
          _NotificationModel value, $Res Function(_NotificationModel) _then) =
      __$NotificationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'notification_type') String? notificationType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'sent_at') DateTime? sentAt,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'is_read') bool? isRead});
}

/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

  /// Create a copy of NotificationModel
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
    return _then(_NotificationModel(
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
mixin _$NotificationMarkAsReadResponseModel {
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of NotificationMarkAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationMarkAsReadResponseModelCopyWith<
          NotificationMarkAsReadResponseModel>
      get copyWith => _$NotificationMarkAsReadResponseModelCopyWithImpl<
              NotificationMarkAsReadResponseModel>(
          this as NotificationMarkAsReadResponseModel, _$identity);

  /// Serializes this NotificationMarkAsReadResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationMarkAsReadResponseModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NotificationMarkAsReadResponseModel(id: $id)';
  }
}

/// @nodoc
abstract mixin class $NotificationMarkAsReadResponseModelCopyWith<$Res> {
  factory $NotificationMarkAsReadResponseModelCopyWith(
          NotificationMarkAsReadResponseModel value,
          $Res Function(NotificationMarkAsReadResponseModel) _then) =
      _$NotificationMarkAsReadResponseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$NotificationMarkAsReadResponseModelCopyWithImpl<$Res>
    implements $NotificationMarkAsReadResponseModelCopyWith<$Res> {
  _$NotificationMarkAsReadResponseModelCopyWithImpl(this._self, this._then);

  final NotificationMarkAsReadResponseModel _self;
  final $Res Function(NotificationMarkAsReadResponseModel) _then;

  /// Create a copy of NotificationMarkAsReadResponseModel
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

/// Adds pattern-matching-related methods to [NotificationMarkAsReadResponseModel].
extension NotificationMarkAsReadResponseModelPatterns
    on NotificationMarkAsReadResponseModel {
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
    TResult Function(_NotificationMarkAsReadResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel() when $default != null:
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
    TResult Function(_NotificationMarkAsReadResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel():
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
    TResult? Function(_NotificationMarkAsReadResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'id') String? id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'id') String? id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel():
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
    TResult? Function(@JsonKey(name: 'id') String? id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAsReadResponseModel() when $default != null:
        return $default(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationMarkAsReadResponseModel
    implements NotificationMarkAsReadResponseModel {
  const _NotificationMarkAsReadResponseModel({@JsonKey(name: 'id') this.id});
  factory _NotificationMarkAsReadResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationMarkAsReadResponseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;

  /// Create a copy of NotificationMarkAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationMarkAsReadResponseModelCopyWith<
          _NotificationMarkAsReadResponseModel>
      get copyWith => __$NotificationMarkAsReadResponseModelCopyWithImpl<
          _NotificationMarkAsReadResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationMarkAsReadResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationMarkAsReadResponseModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NotificationMarkAsReadResponseModel(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$NotificationMarkAsReadResponseModelCopyWith<$Res>
    implements $NotificationMarkAsReadResponseModelCopyWith<$Res> {
  factory _$NotificationMarkAsReadResponseModelCopyWith(
          _NotificationMarkAsReadResponseModel value,
          $Res Function(_NotificationMarkAsReadResponseModel) _then) =
      __$NotificationMarkAsReadResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$NotificationMarkAsReadResponseModelCopyWithImpl<$Res>
    implements _$NotificationMarkAsReadResponseModelCopyWith<$Res> {
  __$NotificationMarkAsReadResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationMarkAsReadResponseModel _self;
  final $Res Function(_NotificationMarkAsReadResponseModel) _then;

  /// Create a copy of NotificationMarkAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_NotificationMarkAsReadResponseModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NotificationMarkAllAsReadResponseModel {
  @JsonKey(name: 'updated_count')
  int? get updatedCount;

  /// Create a copy of NotificationMarkAllAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationMarkAllAsReadResponseModelCopyWith<
          NotificationMarkAllAsReadResponseModel>
      get copyWith => _$NotificationMarkAllAsReadResponseModelCopyWithImpl<
              NotificationMarkAllAsReadResponseModel>(
          this as NotificationMarkAllAsReadResponseModel, _$identity);

  /// Serializes this NotificationMarkAllAsReadResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationMarkAllAsReadResponseModel &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updatedCount);

  @override
  String toString() {
    return 'NotificationMarkAllAsReadResponseModel(updatedCount: $updatedCount)';
  }
}

/// @nodoc
abstract mixin class $NotificationMarkAllAsReadResponseModelCopyWith<$Res> {
  factory $NotificationMarkAllAsReadResponseModelCopyWith(
          NotificationMarkAllAsReadResponseModel value,
          $Res Function(NotificationMarkAllAsReadResponseModel) _then) =
      _$NotificationMarkAllAsReadResponseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'updated_count') int? updatedCount});
}

/// @nodoc
class _$NotificationMarkAllAsReadResponseModelCopyWithImpl<$Res>
    implements $NotificationMarkAllAsReadResponseModelCopyWith<$Res> {
  _$NotificationMarkAllAsReadResponseModelCopyWithImpl(this._self, this._then);

  final NotificationMarkAllAsReadResponseModel _self;
  final $Res Function(NotificationMarkAllAsReadResponseModel) _then;

  /// Create a copy of NotificationMarkAllAsReadResponseModel
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

/// Adds pattern-matching-related methods to [NotificationMarkAllAsReadResponseModel].
extension NotificationMarkAllAsReadResponseModelPatterns
    on NotificationMarkAllAsReadResponseModel {
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
    TResult Function(_NotificationMarkAllAsReadResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel() when $default != null:
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
    TResult Function(_NotificationMarkAllAsReadResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel():
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
    TResult? Function(_NotificationMarkAllAsReadResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'updated_count') int? updatedCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'updated_count') int? updatedCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel():
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
    TResult? Function(@JsonKey(name: 'updated_count') int? updatedCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationMarkAllAsReadResponseModel() when $default != null:
        return $default(_that.updatedCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationMarkAllAsReadResponseModel
    implements NotificationMarkAllAsReadResponseModel {
  const _NotificationMarkAllAsReadResponseModel(
      {@JsonKey(name: 'updated_count') this.updatedCount});
  factory _NotificationMarkAllAsReadResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationMarkAllAsReadResponseModelFromJson(json);

  @override
  @JsonKey(name: 'updated_count')
  final int? updatedCount;

  /// Create a copy of NotificationMarkAllAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationMarkAllAsReadResponseModelCopyWith<
          _NotificationMarkAllAsReadResponseModel>
      get copyWith => __$NotificationMarkAllAsReadResponseModelCopyWithImpl<
          _NotificationMarkAllAsReadResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationMarkAllAsReadResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationMarkAllAsReadResponseModel &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updatedCount);

  @override
  String toString() {
    return 'NotificationMarkAllAsReadResponseModel(updatedCount: $updatedCount)';
  }
}

/// @nodoc
abstract mixin class _$NotificationMarkAllAsReadResponseModelCopyWith<$Res>
    implements $NotificationMarkAllAsReadResponseModelCopyWith<$Res> {
  factory _$NotificationMarkAllAsReadResponseModelCopyWith(
          _NotificationMarkAllAsReadResponseModel value,
          $Res Function(_NotificationMarkAllAsReadResponseModel) _then) =
      __$NotificationMarkAllAsReadResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'updated_count') int? updatedCount});
}

/// @nodoc
class __$NotificationMarkAllAsReadResponseModelCopyWithImpl<$Res>
    implements _$NotificationMarkAllAsReadResponseModelCopyWith<$Res> {
  __$NotificationMarkAllAsReadResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationMarkAllAsReadResponseModel _self;
  final $Res Function(_NotificationMarkAllAsReadResponseModel) _then;

  /// Create a copy of NotificationMarkAllAsReadResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? updatedCount = freezed,
  }) {
    return _then(_NotificationMarkAllAsReadResponseModel(
      updatedCount: freezed == updatedCount
          ? _self.updatedCount
          : updatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$NotificationUnreadCountResponseModel {
  @JsonKey(name: 'unread_count')
  int? get unreadCount;

  /// Create a copy of NotificationUnreadCountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationUnreadCountResponseModelCopyWith<
          NotificationUnreadCountResponseModel>
      get copyWith => _$NotificationUnreadCountResponseModelCopyWithImpl<
              NotificationUnreadCountResponseModel>(
          this as NotificationUnreadCountResponseModel, _$identity);

  /// Serializes this NotificationUnreadCountResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationUnreadCountResponseModel &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unreadCount);

  @override
  String toString() {
    return 'NotificationUnreadCountResponseModel(unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class $NotificationUnreadCountResponseModelCopyWith<$Res> {
  factory $NotificationUnreadCountResponseModelCopyWith(
          NotificationUnreadCountResponseModel value,
          $Res Function(NotificationUnreadCountResponseModel) _then) =
      _$NotificationUnreadCountResponseModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'unread_count') int? unreadCount});
}

/// @nodoc
class _$NotificationUnreadCountResponseModelCopyWithImpl<$Res>
    implements $NotificationUnreadCountResponseModelCopyWith<$Res> {
  _$NotificationUnreadCountResponseModelCopyWithImpl(this._self, this._then);

  final NotificationUnreadCountResponseModel _self;
  final $Res Function(NotificationUnreadCountResponseModel) _then;

  /// Create a copy of NotificationUnreadCountResponseModel
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

/// Adds pattern-matching-related methods to [NotificationUnreadCountResponseModel].
extension NotificationUnreadCountResponseModelPatterns
    on NotificationUnreadCountResponseModel {
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
    TResult Function(_NotificationUnreadCountResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel() when $default != null:
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
    TResult Function(_NotificationUnreadCountResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel():
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
    TResult? Function(_NotificationUnreadCountResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'unread_count') int? unreadCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'unread_count') int? unreadCount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel():
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
    TResult? Function(@JsonKey(name: 'unread_count') int? unreadCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationUnreadCountResponseModel() when $default != null:
        return $default(_that.unreadCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationUnreadCountResponseModel
    implements NotificationUnreadCountResponseModel {
  const _NotificationUnreadCountResponseModel(
      {@JsonKey(name: 'unread_count') this.unreadCount});
  factory _NotificationUnreadCountResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationUnreadCountResponseModelFromJson(json);

  @override
  @JsonKey(name: 'unread_count')
  final int? unreadCount;

  /// Create a copy of NotificationUnreadCountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationUnreadCountResponseModelCopyWith<
          _NotificationUnreadCountResponseModel>
      get copyWith => __$NotificationUnreadCountResponseModelCopyWithImpl<
          _NotificationUnreadCountResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationUnreadCountResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationUnreadCountResponseModel &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unreadCount);

  @override
  String toString() {
    return 'NotificationUnreadCountResponseModel(unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class _$NotificationUnreadCountResponseModelCopyWith<$Res>
    implements $NotificationUnreadCountResponseModelCopyWith<$Res> {
  factory _$NotificationUnreadCountResponseModelCopyWith(
          _NotificationUnreadCountResponseModel value,
          $Res Function(_NotificationUnreadCountResponseModel) _then) =
      __$NotificationUnreadCountResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'unread_count') int? unreadCount});
}

/// @nodoc
class __$NotificationUnreadCountResponseModelCopyWithImpl<$Res>
    implements _$NotificationUnreadCountResponseModelCopyWith<$Res> {
  __$NotificationUnreadCountResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationUnreadCountResponseModel _self;
  final $Res Function(_NotificationUnreadCountResponseModel) _then;

  /// Create a copy of NotificationUnreadCountResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unreadCount = freezed,
  }) {
    return _then(_NotificationUnreadCountResponseModel(
      unreadCount: freezed == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
