// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseEntity {
  String? get id;
  String? get title;
  String? get description;
  DateTime? get startDate;
  DateTime? get endDate;
  List<UserEntity>? get students;
  List<UserEntity>? get teachingAssistants;
  String? get enrollKey;
  int? get totalStudents;
  int? get totalTeachingAssistants;
  int? get totalSessions;
  bool? get hasEnrollment;
  bool? get isEnrollmentOpen;
  String? get image;
  bool? get isParticipant;
  List<CourseSessionEntity>? get recentSessions;
  UserEntity? get createdBy;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseEntityCopyWith<CourseEntity> get copyWith =>
      _$CourseEntityCopyWithImpl<CourseEntity>(
          this as CourseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseEntity &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(
                    other.totalTeachingAssistants, totalTeachingAssistants) ||
                other.totalTeachingAssistants == totalTeachingAssistants) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.hasEnrollment, hasEnrollment) ||
                other.hasEnrollment == hasEnrollment) &&
            (identical(other.isEnrollmentOpen, isEnrollmentOpen) ||
                other.isEnrollmentOpen == isEnrollmentOpen) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant) &&
            const DeepCollectionEquality()
                .equals(other.recentSessions, recentSessions) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(students),
      const DeepCollectionEquality().hash(teachingAssistants),
      enrollKey,
      totalStudents,
      totalTeachingAssistants,
      totalSessions,
      hasEnrollment,
      isEnrollmentOpen,
      image,
      isParticipant,
      const DeepCollectionEquality().hash(recentSessions),
      createdBy);

  @override
  String toString() {
    return 'CourseEntity(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalSessions: $totalSessions, hasEnrollment: $hasEnrollment, isEnrollmentOpen: $isEnrollmentOpen, image: $image, isParticipant: $isParticipant, recentSessions: $recentSessions, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $CourseEntityCopyWith<$Res> {
  factory $CourseEntityCopyWith(
          CourseEntity value, $Res Function(CourseEntity) _then) =
      _$CourseEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      List<UserEntity>? students,
      List<UserEntity>? teachingAssistants,
      String? enrollKey,
      int? totalStudents,
      int? totalTeachingAssistants,
      int? totalSessions,
      bool? hasEnrollment,
      bool? isEnrollmentOpen,
      String? image,
      bool? isParticipant,
      List<CourseSessionEntity>? recentSessions,
      UserEntity? createdBy});

  $UserEntityCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$CourseEntityCopyWithImpl<$Res> implements $CourseEntityCopyWith<$Res> {
  _$CourseEntityCopyWithImpl(this._self, this._then);

  final CourseEntity _self;
  final $Res Function(CourseEntity) _then;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? students = freezed,
    Object? teachingAssistants = freezed,
    Object? enrollKey = freezed,
    Object? totalStudents = freezed,
    Object? totalTeachingAssistants = freezed,
    Object? totalSessions = freezed,
    Object? hasEnrollment = freezed,
    Object? isEnrollmentOpen = freezed,
    Object? image = freezed,
    Object? isParticipant = freezed,
    Object? recentSessions = freezed,
    Object? createdBy = freezed,
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
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      students: freezed == students
          ? _self.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self.teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudents: freezed == totalStudents
          ? _self.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTeachingAssistants: freezed == totalTeachingAssistants
          ? _self.totalTeachingAssistants
          : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSessions: freezed == totalSessions
          ? _self.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      hasEnrollment: freezed == hasEnrollment
          ? _self.hasEnrollment
          : hasEnrollment // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnrollmentOpen: freezed == isEnrollmentOpen
          ? _self.isEnrollmentOpen
          : isEnrollmentOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isParticipant: freezed == isParticipant
          ? _self.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool?,
      recentSessions: freezed == recentSessions
          ? _self.recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<CourseSessionEntity>?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CourseEntity].
extension CourseEntityPatterns on CourseEntity {
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
    TResult Function(_CourseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseEntity() when $default != null:
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
    TResult Function(_CourseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseEntity():
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
    TResult? Function(_CourseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseEntity() when $default != null:
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
            DateTime? startDate,
            DateTime? endDate,
            List<UserEntity>? students,
            List<UserEntity>? teachingAssistants,
            String? enrollKey,
            int? totalStudents,
            int? totalTeachingAssistants,
            int? totalSessions,
            bool? hasEnrollment,
            bool? isEnrollmentOpen,
            String? image,
            bool? isParticipant,
            List<CourseSessionEntity>? recentSessions,
            UserEntity? createdBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.totalStudents,
            _that.totalTeachingAssistants,
            _that.totalSessions,
            _that.hasEnrollment,
            _that.isEnrollmentOpen,
            _that.image,
            _that.isParticipant,
            _that.recentSessions,
            _that.createdBy);
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
            DateTime? startDate,
            DateTime? endDate,
            List<UserEntity>? students,
            List<UserEntity>? teachingAssistants,
            String? enrollKey,
            int? totalStudents,
            int? totalTeachingAssistants,
            int? totalSessions,
            bool? hasEnrollment,
            bool? isEnrollmentOpen,
            String? image,
            bool? isParticipant,
            List<CourseSessionEntity>? recentSessions,
            UserEntity? createdBy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseEntity():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.totalStudents,
            _that.totalTeachingAssistants,
            _that.totalSessions,
            _that.hasEnrollment,
            _that.isEnrollmentOpen,
            _that.image,
            _that.isParticipant,
            _that.recentSessions,
            _that.createdBy);
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
            DateTime? startDate,
            DateTime? endDate,
            List<UserEntity>? students,
            List<UserEntity>? teachingAssistants,
            String? enrollKey,
            int? totalStudents,
            int? totalTeachingAssistants,
            int? totalSessions,
            bool? hasEnrollment,
            bool? isEnrollmentOpen,
            String? image,
            bool? isParticipant,
            List<CourseSessionEntity>? recentSessions,
            UserEntity? createdBy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.startDate,
            _that.endDate,
            _that.students,
            _that.teachingAssistants,
            _that.enrollKey,
            _that.totalStudents,
            _that.totalTeachingAssistants,
            _that.totalSessions,
            _that.hasEnrollment,
            _that.isEnrollmentOpen,
            _that.image,
            _that.isParticipant,
            _that.recentSessions,
            _that.createdBy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CourseEntity implements CourseEntity {
  const _CourseEntity(
      {this.id,
      this.title,
      this.description,
      this.startDate,
      this.endDate,
      final List<UserEntity>? students,
      final List<UserEntity>? teachingAssistants,
      this.enrollKey,
      this.totalStudents,
      this.totalTeachingAssistants,
      this.totalSessions,
      this.hasEnrollment,
      this.isEnrollmentOpen,
      this.image,
      this.isParticipant,
      final List<CourseSessionEntity>? recentSessions,
      this.createdBy})
      : _students = students,
        _teachingAssistants = teachingAssistants,
        _recentSessions = recentSessions;

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  final List<UserEntity>? _students;
  @override
  List<UserEntity>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  @override
  final String? enrollKey;
  @override
  final int? totalStudents;
  @override
  final int? totalTeachingAssistants;
  @override
  final int? totalSessions;
  @override
  final bool? hasEnrollment;
  @override
  final bool? isEnrollmentOpen;
  @override
  final String? image;
  @override
  final bool? isParticipant;
  final List<CourseSessionEntity>? _recentSessions;
  @override
  List<CourseSessionEntity>? get recentSessions {
    final value = _recentSessions;
    if (value == null) return null;
    if (_recentSessions is EqualUnmodifiableListView) return _recentSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserEntity? createdBy;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseEntityCopyWith<_CourseEntity> get copyWith =>
      __$CourseEntityCopyWithImpl<_CourseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseEntity &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(
                    other.totalTeachingAssistants, totalTeachingAssistants) ||
                other.totalTeachingAssistants == totalTeachingAssistants) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.hasEnrollment, hasEnrollment) ||
                other.hasEnrollment == hasEnrollment) &&
            (identical(other.isEnrollmentOpen, isEnrollmentOpen) ||
                other.isEnrollmentOpen == isEnrollmentOpen) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant) &&
            const DeepCollectionEquality()
                .equals(other._recentSessions, _recentSessions) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_students),
      const DeepCollectionEquality().hash(_teachingAssistants),
      enrollKey,
      totalStudents,
      totalTeachingAssistants,
      totalSessions,
      hasEnrollment,
      isEnrollmentOpen,
      image,
      isParticipant,
      const DeepCollectionEquality().hash(_recentSessions),
      createdBy);

  @override
  String toString() {
    return 'CourseEntity(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalSessions: $totalSessions, hasEnrollment: $hasEnrollment, isEnrollmentOpen: $isEnrollmentOpen, image: $image, isParticipant: $isParticipant, recentSessions: $recentSessions, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$CourseEntityCopyWith<$Res>
    implements $CourseEntityCopyWith<$Res> {
  factory _$CourseEntityCopyWith(
          _CourseEntity value, $Res Function(_CourseEntity) _then) =
      __$CourseEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      List<UserEntity>? students,
      List<UserEntity>? teachingAssistants,
      String? enrollKey,
      int? totalStudents,
      int? totalTeachingAssistants,
      int? totalSessions,
      bool? hasEnrollment,
      bool? isEnrollmentOpen,
      String? image,
      bool? isParticipant,
      List<CourseSessionEntity>? recentSessions,
      UserEntity? createdBy});

  @override
  $UserEntityCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$CourseEntityCopyWithImpl<$Res>
    implements _$CourseEntityCopyWith<$Res> {
  __$CourseEntityCopyWithImpl(this._self, this._then);

  final _CourseEntity _self;
  final $Res Function(_CourseEntity) _then;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? students = freezed,
    Object? teachingAssistants = freezed,
    Object? enrollKey = freezed,
    Object? totalStudents = freezed,
    Object? totalTeachingAssistants = freezed,
    Object? totalSessions = freezed,
    Object? hasEnrollment = freezed,
    Object? isEnrollmentOpen = freezed,
    Object? image = freezed,
    Object? isParticipant = freezed,
    Object? recentSessions = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_CourseEntity(
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
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      students: freezed == students
          ? _self._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self._teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>?,
      enrollKey: freezed == enrollKey
          ? _self.enrollKey
          : enrollKey // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudents: freezed == totalStudents
          ? _self.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTeachingAssistants: freezed == totalTeachingAssistants
          ? _self.totalTeachingAssistants
          : totalTeachingAssistants // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSessions: freezed == totalSessions
          ? _self.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      hasEnrollment: freezed == hasEnrollment
          ? _self.hasEnrollment
          : hasEnrollment // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnrollmentOpen: freezed == isEnrollmentOpen
          ? _self.isEnrollmentOpen
          : isEnrollmentOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isParticipant: freezed == isParticipant
          ? _self.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool?,
      recentSessions: freezed == recentSessions
          ? _self._recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<CourseSessionEntity>?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
