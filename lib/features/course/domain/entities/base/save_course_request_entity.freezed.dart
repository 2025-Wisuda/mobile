// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCourseRequestEntity {
  String? get title;
  String? get description;
  String? get startDate;
  String? get endDate;
  List<String>? get students;
  List<String>? get teachingAssistants;
  String? get enrollKey;
  String? get image;

  /// Create a copy of SaveCourseRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveCourseRequestEntityCopyWith<SaveCourseRequestEntity> get copyWith =>
      _$SaveCourseRequestEntityCopyWithImpl<SaveCourseRequestEntity>(
          this as SaveCourseRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveCourseRequestEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other.students, students) &&
            const DeepCollectionEquality()
                .equals(other.teachingAssistants, teachingAssistants) &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(students),
      const DeepCollectionEquality().hash(teachingAssistants),
      enrollKey,
      image);

  @override
  String toString() {
    return 'SaveCourseRequestEntity(title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, image: $image)';
  }
}

/// @nodoc
abstract mixin class $SaveCourseRequestEntityCopyWith<$Res> {
  factory $SaveCourseRequestEntityCopyWith(SaveCourseRequestEntity value,
          $Res Function(SaveCourseRequestEntity) _then) =
      _$SaveCourseRequestEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? startDate,
      String? endDate,
      List<String>? students,
      List<String>? teachingAssistants,
      String? enrollKey,
      String? image});
}

/// @nodoc
class _$SaveCourseRequestEntityCopyWithImpl<$Res>
    implements $SaveCourseRequestEntityCopyWith<$Res> {
  _$SaveCourseRequestEntityCopyWithImpl(this._self, this._then);

  final SaveCourseRequestEntity _self;
  final $Res Function(SaveCourseRequestEntity) _then;

  /// Create a copy of SaveCourseRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? students = freezed,
    Object? teachingAssistants = freezed,
    Object? enrollKey = freezed,
    Object? image = freezed,
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
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _self.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self.teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaveCourseRequestEntity].
extension SaveCourseRequestEntityPatterns on SaveCourseRequestEntity {
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
    TResult Function(_SaveCourseRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity() when $default != null:
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
    TResult Function(_SaveCourseRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity():
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
    TResult? Function(_SaveCourseRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity() when $default != null:
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
            String? startDate,
            String? endDate,
            List<String>? students,
            List<String>? teachingAssistants,
            String? enrollKey,
            String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.image);
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
            String? startDate,
            String? endDate,
            List<String>? students,
            List<String>? teachingAssistants,
            String? enrollKey,
            String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity():
        return $default(
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.image);
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
            String? startDate,
            String? endDate,
            List<String>? students,
            List<String>? teachingAssistants,
            String? enrollKey,
            String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestEntity() when $default != null:
        return $default(
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SaveCourseRequestEntity implements SaveCourseRequestEntity {
  const _SaveCourseRequestEntity(
      {this.title,
      this.description,
      this.startDate,
      this.endDate,
      final List<String>? students,
      final List<String>? teachingAssistants,
      this.enrollKey,
      this.image})
      : _students = students,
        _teachingAssistants = teachingAssistants;

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? startDate;
  @override
  final String? endDate;
  final List<String>? _students;
  @override
  List<String>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  @override
  final String? enrollKey;
  @override
  final String? image;

  /// Create a copy of SaveCourseRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveCourseRequestEntityCopyWith<_SaveCourseRequestEntity> get copyWith =>
      __$SaveCourseRequestEntityCopyWithImpl<_SaveCourseRequestEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveCourseRequestEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality()
                .equals(other._teachingAssistants, _teachingAssistants) &&
            (identical(other.enrollKey, enrollKey) ||
                other.enrollKey == enrollKey) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_students),
      const DeepCollectionEquality().hash(_teachingAssistants),
      enrollKey,
      image);

  @override
  String toString() {
    return 'SaveCourseRequestEntity(title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$SaveCourseRequestEntityCopyWith<$Res>
    implements $SaveCourseRequestEntityCopyWith<$Res> {
  factory _$SaveCourseRequestEntityCopyWith(_SaveCourseRequestEntity value,
          $Res Function(_SaveCourseRequestEntity) _then) =
      __$SaveCourseRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? startDate,
      String? endDate,
      List<String>? students,
      List<String>? teachingAssistants,
      String? enrollKey,
      String? image});
}

/// @nodoc
class __$SaveCourseRequestEntityCopyWithImpl<$Res>
    implements _$SaveCourseRequestEntityCopyWith<$Res> {
  __$SaveCourseRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveCourseRequestEntity _self;
  final $Res Function(_SaveCourseRequestEntity) _then;

  /// Create a copy of SaveCourseRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? students = freezed,
    Object? teachingAssistants = freezed,
    Object? enrollKey = freezed,
    Object? image = freezed,
  }) {
    return _then(_SaveCourseRequestEntity(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _self._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self._teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
