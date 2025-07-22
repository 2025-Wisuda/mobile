// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_session_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCourseSessionRequestEntity {
  String? get title;
  String? get description;
  String? get type;
  String? get date;
  String? get startTime;
  String? get endTime;
  String? get status;
  List<String>? get teachingAssistants;

  /// Create a copy of SaveCourseSessionRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveCourseSessionRequestEntityCopyWith<SaveCourseSessionRequestEntity>
      get copyWith => _$SaveCourseSessionRequestEntityCopyWithImpl<
              SaveCourseSessionRequestEntity>(
          this as SaveCourseSessionRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveCourseSessionRequestEntity &&
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
                .equals(other.teachingAssistants, teachingAssistants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(teachingAssistants));

  @override
  String toString() {
    return 'SaveCourseSessionRequestEntity(title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
  }
}

/// @nodoc
abstract mixin class $SaveCourseSessionRequestEntityCopyWith<$Res> {
  factory $SaveCourseSessionRequestEntityCopyWith(
          SaveCourseSessionRequestEntity value,
          $Res Function(SaveCourseSessionRequestEntity) _then) =
      _$SaveCourseSessionRequestEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? type,
      String? date,
      String? startTime,
      String? endTime,
      String? status,
      List<String>? teachingAssistants});
}

/// @nodoc
class _$SaveCourseSessionRequestEntityCopyWithImpl<$Res>
    implements $SaveCourseSessionRequestEntityCopyWith<$Res> {
  _$SaveCourseSessionRequestEntityCopyWithImpl(this._self, this._then);

  final SaveCourseSessionRequestEntity _self;
  final $Res Function(SaveCourseSessionRequestEntity) _then;

  /// Create a copy of SaveCourseSessionRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
  }) {
    return _then(_self.copyWith(
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
              as String?,
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
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaveCourseSessionRequestEntity].
extension SaveCourseSessionRequestEntityPatterns
    on SaveCourseSessionRequestEntity {
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
    TResult Function(_SaveCourseSessionRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity() when $default != null:
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
    TResult Function(_SaveCourseSessionRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity():
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
    TResult? Function(_SaveCourseSessionRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity() when $default != null:
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
            String? title,
            String? description,
            String? type,
            String? date,
            String? startTime,
            String? endTime,
            String? status,
            List<String>? teachingAssistants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants);
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
            String? title,
            String? description,
            String? type,
            String? date,
            String? startTime,
            String? endTime,
            String? status,
            List<String>? teachingAssistants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity():
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants);
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
            String? title,
            String? description,
            String? type,
            String? date,
            String? startTime,
            String? endTime,
            String? status,
            List<String>? teachingAssistants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseSessionRequestEntity() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.type,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.status,
            _that.teachingAssistants);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SaveCourseSessionRequestEntity
    implements SaveCourseSessionRequestEntity {
  const _SaveCourseSessionRequestEntity(
      {this.title,
      this.description,
      this.type,
      this.date,
      this.startTime,
      this.endTime,
      this.status,
      final List<String>? teachingAssistants})
      : _teachingAssistants = teachingAssistants;

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? status;
  final List<String>? _teachingAssistants;
  @override
  List<String>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SaveCourseSessionRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveCourseSessionRequestEntityCopyWith<_SaveCourseSessionRequestEntity>
      get copyWith => __$SaveCourseSessionRequestEntityCopyWithImpl<
          _SaveCourseSessionRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveCourseSessionRequestEntity &&
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
                .equals(other._teachingAssistants, _teachingAssistants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      date,
      startTime,
      endTime,
      status,
      const DeepCollectionEquality().hash(_teachingAssistants));

  @override
  String toString() {
    return 'SaveCourseSessionRequestEntity(title: $title, description: $description, type: $type, date: $date, startTime: $startTime, endTime: $endTime, status: $status, teachingAssistants: $teachingAssistants)';
  }
}

/// @nodoc
abstract mixin class _$SaveCourseSessionRequestEntityCopyWith<$Res>
    implements $SaveCourseSessionRequestEntityCopyWith<$Res> {
  factory _$SaveCourseSessionRequestEntityCopyWith(
          _SaveCourseSessionRequestEntity value,
          $Res Function(_SaveCourseSessionRequestEntity) _then) =
      __$SaveCourseSessionRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? type,
      String? date,
      String? startTime,
      String? endTime,
      String? status,
      List<String>? teachingAssistants});
}

/// @nodoc
class __$SaveCourseSessionRequestEntityCopyWithImpl<$Res>
    implements _$SaveCourseSessionRequestEntityCopyWith<$Res> {
  __$SaveCourseSessionRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveCourseSessionRequestEntity _self;
  final $Res Function(_SaveCourseSessionRequestEntity) _then;

  /// Create a copy of SaveCourseSessionRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = freezed,
    Object? teachingAssistants = freezed,
  }) {
    return _then(_SaveCourseSessionRequestEntity(
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
              as String?,
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
              as List<String>?,
    ));
  }
}

// dart format on
