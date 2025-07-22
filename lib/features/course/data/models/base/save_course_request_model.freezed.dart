// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_course_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCourseRequestModel {
  @JsonKey(name: 'title', includeIfNull: false)
  String? get title;
  @JsonKey(name: 'description', includeIfNull: false)
  String? get description;
  @JsonKey(name: 'start_date', includeIfNull: false)
  String? get startDate;
  @JsonKey(name: 'end_date', includeIfNull: false)
  String? get endDate;
  @JsonKey(name: 'student_ids', includeIfNull: false)
  List<String>? get students;
  @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
  List<String>? get teachingAssistants;
  @JsonKey(name: 'enroll_key', includeIfNull: false)
  String? get enrollKey;
  @JsonKey(name: 'image', includeIfNull: false)
  String? get image;

  /// Create a copy of SaveCourseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveCourseRequestModelCopyWith<SaveCourseRequestModel> get copyWith =>
      _$SaveCourseRequestModelCopyWithImpl<SaveCourseRequestModel>(
          this as SaveCourseRequestModel, _$identity);

  /// Serializes this SaveCourseRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveCourseRequestModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SaveCourseRequestModel(title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, image: $image)';
  }
}

/// @nodoc
abstract mixin class $SaveCourseRequestModelCopyWith<$Res> {
  factory $SaveCourseRequestModelCopyWith(SaveCourseRequestModel value,
          $Res Function(SaveCourseRequestModel) _then) =
      _$SaveCourseRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', includeIfNull: false) String? title,
      @JsonKey(name: 'description', includeIfNull: false) String? description,
      @JsonKey(name: 'start_date', includeIfNull: false) String? startDate,
      @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
      @JsonKey(name: 'student_ids', includeIfNull: false)
      List<String>? students,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      List<String>? teachingAssistants,
      @JsonKey(name: 'enroll_key', includeIfNull: false) String? enrollKey,
      @JsonKey(name: 'image', includeIfNull: false) String? image});
}

/// @nodoc
class _$SaveCourseRequestModelCopyWithImpl<$Res>
    implements $SaveCourseRequestModelCopyWith<$Res> {
  _$SaveCourseRequestModelCopyWithImpl(this._self, this._then);

  final SaveCourseRequestModel _self;
  final $Res Function(SaveCourseRequestModel) _then;

  /// Create a copy of SaveCourseRequestModel
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

/// Adds pattern-matching-related methods to [SaveCourseRequestModel].
extension SaveCourseRequestModelPatterns on SaveCourseRequestModel {
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
    TResult Function(_SaveCourseRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel() when $default != null:
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
    TResult Function(_SaveCourseRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel():
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
    TResult? Function(_SaveCourseRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel() when $default != null:
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
            @JsonKey(name: 'title', includeIfNull: false) String? title,
            @JsonKey(name: 'description', includeIfNull: false)
            String? description,
            @JsonKey(name: 'start_date', includeIfNull: false)
            String? startDate,
            @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
            @JsonKey(name: 'student_ids', includeIfNull: false)
            List<String>? students,
            @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
            List<String>? teachingAssistants,
            @JsonKey(name: 'enroll_key', includeIfNull: false)
            String? enrollKey,
            @JsonKey(name: 'image', includeIfNull: false) String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel() when $default != null:
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
            @JsonKey(name: 'title', includeIfNull: false) String? title,
            @JsonKey(name: 'description', includeIfNull: false)
            String? description,
            @JsonKey(name: 'start_date', includeIfNull: false)
            String? startDate,
            @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
            @JsonKey(name: 'student_ids', includeIfNull: false)
            List<String>? students,
            @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
            List<String>? teachingAssistants,
            @JsonKey(name: 'enroll_key', includeIfNull: false)
            String? enrollKey,
            @JsonKey(name: 'image', includeIfNull: false) String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel():
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
            @JsonKey(name: 'title', includeIfNull: false) String? title,
            @JsonKey(name: 'description', includeIfNull: false)
            String? description,
            @JsonKey(name: 'start_date', includeIfNull: false)
            String? startDate,
            @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
            @JsonKey(name: 'student_ids', includeIfNull: false)
            List<String>? students,
            @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
            List<String>? teachingAssistants,
            @JsonKey(name: 'enroll_key', includeIfNull: false)
            String? enrollKey,
            @JsonKey(name: 'image', includeIfNull: false) String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveCourseRequestModel() when $default != null:
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
@JsonSerializable()
class _SaveCourseRequestModel implements SaveCourseRequestModel {
  const _SaveCourseRequestModel(
      {@JsonKey(name: 'title', includeIfNull: false) this.title,
      @JsonKey(name: 'description', includeIfNull: false) this.description,
      @JsonKey(name: 'start_date', includeIfNull: false) this.startDate,
      @JsonKey(name: 'end_date', includeIfNull: false) this.endDate,
      @JsonKey(name: 'student_ids', includeIfNull: false)
      final List<String>? students,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      final List<String>? teachingAssistants,
      @JsonKey(name: 'enroll_key', includeIfNull: false) this.enrollKey,
      @JsonKey(name: 'image', includeIfNull: false) this.image})
      : _students = students,
        _teachingAssistants = teachingAssistants;
  factory _SaveCourseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveCourseRequestModelFromJson(json);

  @override
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  @override
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @override
  @JsonKey(name: 'start_date', includeIfNull: false)
  final String? startDate;
  @override
  @JsonKey(name: 'end_date', includeIfNull: false)
  final String? endDate;
  final List<String>? _students;
  @override
  @JsonKey(name: 'student_ids', includeIfNull: false)
  List<String>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _teachingAssistants;
  @override
  @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
  List<String>? get teachingAssistants {
    final value = _teachingAssistants;
    if (value == null) return null;
    if (_teachingAssistants is EqualUnmodifiableListView)
      return _teachingAssistants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'enroll_key', includeIfNull: false)
  final String? enrollKey;
  @override
  @JsonKey(name: 'image', includeIfNull: false)
  final String? image;

  /// Create a copy of SaveCourseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveCourseRequestModelCopyWith<_SaveCourseRequestModel> get copyWith =>
      __$SaveCourseRequestModelCopyWithImpl<_SaveCourseRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveCourseRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveCourseRequestModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SaveCourseRequestModel(title: $title, description: $description, startDate: $startDate, endDate: $endDate, students: $students, teachingAssistants: $teachingAssistants, enrollKey: $enrollKey, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$SaveCourseRequestModelCopyWith<$Res>
    implements $SaveCourseRequestModelCopyWith<$Res> {
  factory _$SaveCourseRequestModelCopyWith(_SaveCourseRequestModel value,
          $Res Function(_SaveCourseRequestModel) _then) =
      __$SaveCourseRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', includeIfNull: false) String? title,
      @JsonKey(name: 'description', includeIfNull: false) String? description,
      @JsonKey(name: 'start_date', includeIfNull: false) String? startDate,
      @JsonKey(name: 'end_date', includeIfNull: false) String? endDate,
      @JsonKey(name: 'student_ids', includeIfNull: false)
      List<String>? students,
      @JsonKey(name: 'teaching_assistant_ids', includeIfNull: false)
      List<String>? teachingAssistants,
      @JsonKey(name: 'enroll_key', includeIfNull: false) String? enrollKey,
      @JsonKey(name: 'image', includeIfNull: false) String? image});
}

/// @nodoc
class __$SaveCourseRequestModelCopyWithImpl<$Res>
    implements _$SaveCourseRequestModelCopyWith<$Res> {
  __$SaveCourseRequestModelCopyWithImpl(this._self, this._then);

  final _SaveCourseRequestModel _self;
  final $Res Function(_SaveCourseRequestModel) _then;

  /// Create a copy of SaveCourseRequestModel
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
    return _then(_SaveCourseRequestModel(
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
