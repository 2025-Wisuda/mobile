// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSessionEntity {
  String? get id;
  String? get title;
  String? get description;
  String? get type;
  DateTime? get date;
  String? get startTime;
  String? get endTime;
  String? get status;
  List<UserEntity>? get teachingAssistants;
  List<String>? get teachingAssistantIds;

  /// Create a copy of CourseSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseSessionEntityCopyWith<CourseSessionEntity> get copyWith =>
      _$CourseSessionEntityCopyWithImpl<CourseSessionEntity>(
          this as CourseSessionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseSessionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.teachingAssistants, teachingAssistants) &&
            const DeepCollectionEquality()
                .equals(other.teachingAssistantIds, teachingAssistantIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(teachingAssistants),
      const DeepCollectionEquality().hash(teachingAssistantIds));

  @override
  String toString() {
    return 'CourseSessionEntity(id: $id, title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, teachingAssistantIds: $teachingAssistantIds)';
  }
}

/// @nodoc
abstract mixin class $CourseSessionEntityCopyWith<$Res> {
  factory $CourseSessionEntityCopyWith(
          CourseSessionEntity value, $Res Function(CourseSessionEntity) _then) =
      _$CourseSessionEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? type,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? status,
      List<UserEntity>? teachingAssistants,
      List<String>? teachingAssistantIds});
}

/// @nodoc
class _$CourseSessionEntityCopyWithImpl<$Res>
    implements $CourseSessionEntityCopyWith<$Res> {
  _$CourseSessionEntityCopyWithImpl(this._self, this._then);

  final CourseSessionEntity _self;
  final $Res Function(CourseSessionEntity) _then;

  /// Create a copy of CourseSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
    Object? teachingAssistantIds = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      teachingAssistants: freezed == teachingAssistants
          ? _self.teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      teachingAssistantIds: freezed == teachingAssistantIds
          ? _self.teachingAssistantIds
          : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CourseSessionEntity].
extension CourseSessionEntityPatterns on CourseSessionEntity {
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
    TResult Function(_CourseSessionEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity() when $default != null:
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
    TResult Function(_CourseSessionEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity():
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
    TResult? Function(_CourseSessionEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity() when $default != null:
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
            String? title,
            String? description,
            String? type,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? status,
            List<UserEntity>? teachingAssistants,
            List<String>? teachingAssistantIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants,
            _that.teachingAssistantIds);
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
            String? title,
            String? description,
            String? type,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? status,
            List<UserEntity>? teachingAssistants,
            List<String>? teachingAssistantIds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants,
            _that.teachingAssistantIds);
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
            String? title,
            String? description,
            String? type,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? status,
            List<UserEntity>? teachingAssistants,
            List<String>? teachingAssistantIds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseSessionEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants,
            _that.teachingAssistantIds);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CourseSessionEntity implements CourseSessionEntity {
  const _CourseSessionEntity(
      {this.id,
      this.title,
      this.description,
      this.type,
      this.date,
      this.startTime,
      this.endTime,
      this.status,
      final List<UserEntity>? teachingAssistants,
      final List<String>? teachingAssistantIds})
      : _teachingAssistants = teachingAssistants,
        _teachingAssistantIds = teachingAssistantIds;

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final DateTime? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? status;
  final List<UserEntity>? _teachingAssistants;
  @override
  List<UserEntity>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _teachingAssistantIds;
  @override
  List<String>? get teachingAssistantIds {
    final value = _teachingAssistantIds;
    if (value == null) return null;
    if (_teachingAssistantIds is EqualUnmodifiableListView)
      return _teachingAssistantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CourseSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseSessionEntityCopyWith<_CourseSessionEntity> get copyWith =>
      __$CourseSessionEntityCopyWithImpl<_CourseSessionEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseSessionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._teachingAssistants, _teachingAssistants) &&
            const DeepCollectionEquality()
                .equals(other._teachingAssistantIds, _teachingAssistantIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(_teachingAssistants),
      const DeepCollectionEquality().hash(_teachingAssistantIds));

  @override
  String toString() {
    return 'CourseSessionEntity(id: $id, title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants, teachingAssistantIds: $teachingAssistantIds)';
  }
}

/// @nodoc
abstract mixin class _$CourseSessionEntityCopyWith<$Res>
    implements $CourseSessionEntityCopyWith<$Res> {
  factory _$CourseSessionEntityCopyWith(_CourseSessionEntity value,
          $Res Function(_CourseSessionEntity) _then) =
      __$CourseSessionEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? type,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? status,
      List<UserEntity>? teachingAssistants,
      List<String>? teachingAssistantIds});
}

/// @nodoc
class __$CourseSessionEntityCopyWithImpl<$Res>
    implements _$CourseSessionEntityCopyWith<$Res> {
  __$CourseSessionEntityCopyWithImpl(this._self, this._then);

  final _CourseSessionEntity _self;
  final $Res Function(_CourseSessionEntity) _then;

  /// Create a copy of CourseSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
    Object? teachingAssistantIds = freezed,
  }) {
    return _then(_CourseSessionEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      teachingAssistants: freezed == teachingAssistants
          ? _self._teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      teachingAssistantIds: freezed == teachingAssistantIds
          ? _self._teachingAssistantIds
          : teachingAssistantIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
