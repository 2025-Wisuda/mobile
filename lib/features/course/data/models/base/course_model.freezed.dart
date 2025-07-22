// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'title')
  String? get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @JsonKey(name: 'students')
  List<UserModel>? get students;
  @JsonKey(name: 'teaching_assistants')
  List<UserModel>? get teachingAssistants;
  @JsonKey(name: 'enroll_key')
  String? get enrollKey;
  @JsonKey(name: 'total_students')
  int? get totalStudents;
  @JsonKey(name: 'total_teaching_assistants')
  int? get totalTeachingAssistants;
  @JsonKey(name: 'total_sessions')
  int? get totalSessions;
  @JsonKey(name: 'has_enrollment')
  bool? get hasEnrollment;
  @JsonKey(name: 'is_enrollment_open')
  bool? get isEnrollmentOpen;
  @JsonKey(name: 'image')
  String? get image;
  @JsonKey(name: 'recent_sessions')
  List<CourseSessionModel>? get recentSessions;
  @JsonKey(name: 'is_participant')
  bool? get isParticipant;
  @JsonKey(name: 'created_by')
  UserModel? get createdBy;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<CourseModel> get copyWith =>
      _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseModel &&
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
            const DeepCollectionEquality()
                .equals(other.recentSessions, recentSessions) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(recentSessions),
      isParticipant,
      createdBy);

  @override
  String toString() {
    return 'CourseModel(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalSessions: $totalSessions, hasEnrollment: $hasEnrollment, isEnrollmentOpen: $isEnrollmentOpen, image: $image, recentSessions: $recentSessions, isParticipant: $isParticipant, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) _then) =
      _$CourseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'students') List<UserModel>? students,
      @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
      @JsonKey(name: 'enroll_key') String? enrollKey,
      @JsonKey(name: 'total_students') int? totalStudents,
      @JsonKey(name: 'total_teaching_assistants') int? totalTeachingAssistants,
      @JsonKey(name: 'total_sessions') int? totalSessions,
      @JsonKey(name: 'has_enrollment') bool? hasEnrollment,
      @JsonKey(name: 'is_enrollment_open') bool? isEnrollmentOpen,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'recent_sessions')
      List<CourseSessionModel>? recentSessions,
      @JsonKey(name: 'is_participant') bool? isParticipant,
      @JsonKey(name: 'created_by') UserModel? createdBy});

  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

  /// Create a copy of CourseModel
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
    Object? recentSessions = freezed,
    Object? isParticipant = freezed,
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
              as List<UserModel>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self.teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
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
      recentSessions: freezed == recentSessions
          ? _self.recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<CourseSessionModel>?,
      isParticipant: freezed == isParticipant
          ? _self.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CourseModel].
extension CourseModelPatterns on CourseModel {
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
    TResult Function(_CourseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseModel() when $default != null:
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
    TResult Function(_CourseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseModel():
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
    TResult? Function(_CourseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseModel() when $default != null:
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
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'start_date') DateTime? startDate,
            @JsonKey(name: 'end_date') DateTime? endDate,
            @JsonKey(name: 'students') List<UserModel>? students,
            @JsonKey(name: 'teaching_assistants')
            List<UserModel>? teachingAssistants,
            @JsonKey(name: 'enroll_key') String? enrollKey,
            @JsonKey(name: 'total_students') int? totalStudents,
            @JsonKey(name: 'total_teaching_assistants')
            int? totalTeachingAssistants,
            @JsonKey(name: 'total_sessions') int? totalSessions,
            @JsonKey(name: 'has_enrollment') bool? hasEnrollment,
            @JsonKey(name: 'is_enrollment_open') bool? isEnrollmentOpen,
            @JsonKey(name: 'image') String? image,
            @JsonKey(name: 'recent_sessions')
            List<CourseSessionModel>? recentSessions,
            @JsonKey(name: 'is_participant') bool? isParticipant,
            @JsonKey(name: 'created_by') UserModel? createdBy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CourseModel() when $default != null:
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
            _that.recentSessions,
            _that.isParticipant,
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'start_date') DateTime? startDate,
            @JsonKey(name: 'end_date') DateTime? endDate,
            @JsonKey(name: 'students') List<UserModel>? students,
            @JsonKey(name: 'teaching_assistants')
            List<UserModel>? teachingAssistants,
            @JsonKey(name: 'enroll_key') String? enrollKey,
            @JsonKey(name: 'total_students') int? totalStudents,
            @JsonKey(name: 'total_teaching_assistants')
            int? totalTeachingAssistants,
            @JsonKey(name: 'total_sessions') int? totalSessions,
            @JsonKey(name: 'has_enrollment') bool? hasEnrollment,
            @JsonKey(name: 'is_enrollment_open') bool? isEnrollmentOpen,
            @JsonKey(name: 'image') String? image,
            @JsonKey(name: 'recent_sessions')
            List<CourseSessionModel>? recentSessions,
            @JsonKey(name: 'is_participant') bool? isParticipant,
            @JsonKey(name: 'created_by') UserModel? createdBy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseModel():
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
            _that.recentSessions,
            _that.isParticipant,
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'title') String? title,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'start_date') DateTime? startDate,
            @JsonKey(name: 'end_date') DateTime? endDate,
            @JsonKey(name: 'students') List<UserModel>? students,
            @JsonKey(name: 'teaching_assistants')
            List<UserModel>? teachingAssistants,
            @JsonKey(name: 'enroll_key') String? enrollKey,
            @JsonKey(name: 'total_students') int? totalStudents,
            @JsonKey(name: 'total_teaching_assistants')
            int? totalTeachingAssistants,
            @JsonKey(name: 'total_sessions') int? totalSessions,
            @JsonKey(name: 'has_enrollment') bool? hasEnrollment,
            @JsonKey(name: 'is_enrollment_open') bool? isEnrollmentOpen,
            @JsonKey(name: 'image') String? image,
            @JsonKey(name: 'recent_sessions')
            List<CourseSessionModel>? recentSessions,
            @JsonKey(name: 'is_participant') bool? isParticipant,
            @JsonKey(name: 'created_by') UserModel? createdBy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CourseModel() when $default != null:
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
            _that.recentSessions,
            _that.isParticipant,
            _that.createdBy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CourseModel implements CourseModel {
  const _CourseModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'students') final List<UserModel>? students,
      @JsonKey(name: 'teaching_assistants')
      final List<UserModel>? teachingAssistants,
      @JsonKey(name: 'enroll_key') this.enrollKey,
      @JsonKey(name: 'total_students') this.totalStudents,
      @JsonKey(name: 'total_teaching_assistants') this.totalTeachingAssistants,
      @JsonKey(name: 'total_sessions') this.totalSessions,
      @JsonKey(name: 'has_enrollment') this.hasEnrollment,
      @JsonKey(name: 'is_enrollment_open') this.isEnrollmentOpen,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'recent_sessions')
      final List<CourseSessionModel>? recentSessions,
      @JsonKey(name: 'is_participant') this.isParticipant,
      @JsonKey(name: 'created_by') this.createdBy})
      : _students = students,
        _teachingAssistants = teachingAssistants,
        _recentSessions = recentSessions;
  factory _CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  final List<UserModel>? _students;
  @override
  @JsonKey(name: 'students')
  List<UserModel>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _teachingAssistants;
  @override
  @JsonKey(name: 'teaching_assistants')
  List<UserModel>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'enroll_key')
  final String? enrollKey;
  @override
  @JsonKey(name: 'total_students')
  final int? totalStudents;
  @override
  @JsonKey(name: 'total_teaching_assistants')
  final int? totalTeachingAssistants;
  @override
  @JsonKey(name: 'total_sessions')
  final int? totalSessions;
  @override
  @JsonKey(name: 'has_enrollment')
  final bool? hasEnrollment;
  @override
  @JsonKey(name: 'is_enrollment_open')
  final bool? isEnrollmentOpen;
  @override
  @JsonKey(name: 'image')
  final String? image;
  final List<CourseSessionModel>? _recentSessions;
  @override
  @JsonKey(name: 'recent_sessions')
  List<CourseSessionModel>? get recentSessions {
    final value = _recentSessions;
    if (value == null) return null;
    if (_recentSessions is EqualUnmodifiableListView) return _recentSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_participant')
  final bool? isParticipant;
  @override
  @JsonKey(name: 'created_by')
  final UserModel? createdBy;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseModelCopyWith<_CourseModel> get copyWith =>
      __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseModel &&
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
            const DeepCollectionEquality()
                .equals(other._recentSessions, _recentSessions) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(_recentSessions),
      isParticipant,
      createdBy);

  @override
  String toString() {
    return 'CourseModel(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, totalStudents: $totalStudents, totalTeachingAssistants: $totalTeachingAssistants, totalSessions: $totalSessions, hasEnrollment: $hasEnrollment, isEnrollmentOpen: $isEnrollmentOpen, image: $image, recentSessions: $recentSessions, isParticipant: $isParticipant, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(
          _CourseModel value, $Res Function(_CourseModel) _then) =
      __$CourseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'students') List<UserModel>? students,
      @JsonKey(name: 'teaching_assistants') List<UserModel>? teachingAssistants,
      @JsonKey(name: 'enroll_key') String? enrollKey,
      @JsonKey(name: 'total_students') int? totalStudents,
      @JsonKey(name: 'total_teaching_assistants') int? totalTeachingAssistants,
      @JsonKey(name: 'total_sessions') int? totalSessions,
      @JsonKey(name: 'has_enrollment') bool? hasEnrollment,
      @JsonKey(name: 'is_enrollment_open') bool? isEnrollmentOpen,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'recent_sessions')
      List<CourseSessionModel>? recentSessions,
      @JsonKey(name: 'is_participant') bool? isParticipant,
      @JsonKey(name: 'created_by') UserModel? createdBy});

  @override
  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$CourseModelCopyWithImpl<$Res> implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

  /// Create a copy of CourseModel
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
    Object? recentSessions = freezed,
    Object? isParticipant = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_CourseModel(
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
              as List<UserModel>?,
      teachingAssistants: freezed == teachingAssistants
          ? _self._teachingAssistants
          : teachingAssistants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
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
      recentSessions: freezed == recentSessions
          ? _self._recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<CourseSessionModel>?,
      isParticipant: freezed == isParticipant
          ? _self.isParticipant
          : isParticipant // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
