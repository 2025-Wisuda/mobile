// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_room_booking_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveRoomBookingRequestEntity {
  String? get bookingType;
  String? get purpose;
  String? get date;
  String? get startTime;
  String? get endTime;
  String? get seminarType;
  String? get researchTitle;
  String? get supervisorMain;
  String? get supervisorSecondary;
  String? get examiner;
  String? get documentProof;

  /// Create a copy of SaveRoomBookingRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveRoomBookingRequestEntityCopyWith<SaveRoomBookingRequestEntity>
      get copyWith => _$SaveRoomBookingRequestEntityCopyWithImpl<
              SaveRoomBookingRequestEntity>(
          this as SaveRoomBookingRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRoomBookingRequestEntity &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.seminarType, seminarType) ||
                other.seminarType == seminarType) &&
            (identical(other.researchTitle, researchTitle) ||
                other.researchTitle == researchTitle) &&
            (identical(other.supervisorMain, supervisorMain) ||
                other.supervisorMain == supervisorMain) &&
            (identical(other.supervisorSecondary, supervisorSecondary) ||
                other.supervisorSecondary == supervisorSecondary) &&
            (identical(other.examiner, examiner) ||
                other.examiner == examiner) &&
            (identical(other.documentProof, documentProof) ||
                other.documentProof == documentProof));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingType,
      purpose,
      date,
      startTime,
      endTime,
      seminarType,
      researchTitle,
      supervisorMain,
      supervisorSecondary,
      examiner,
      documentProof);

  @override
  String toString() {
    return 'SaveRoomBookingRequestEntity(bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof)';
  }
}

/// @nodoc
abstract mixin class $SaveRoomBookingRequestEntityCopyWith<$Res> {
  factory $SaveRoomBookingRequestEntityCopyWith(
          SaveRoomBookingRequestEntity value,
          $Res Function(SaveRoomBookingRequestEntity) _then) =
      _$SaveRoomBookingRequestEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? bookingType,
      String? purpose,
      String? date,
      String? startTime,
      String? endTime,
      String? seminarType,
      String? researchTitle,
      String? supervisorMain,
      String? supervisorSecondary,
      String? examiner,
      String? documentProof});
}

/// @nodoc
class _$SaveRoomBookingRequestEntityCopyWithImpl<$Res>
    implements $SaveRoomBookingRequestEntityCopyWith<$Res> {
  _$SaveRoomBookingRequestEntityCopyWithImpl(this._self, this._then);

  final SaveRoomBookingRequestEntity _self;
  final $Res Function(SaveRoomBookingRequestEntity) _then;

  /// Create a copy of SaveRoomBookingRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingType = freezed,
    Object? purpose = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? seminarType = freezed,
    Object? researchTitle = freezed,
    Object? supervisorMain = freezed,
    Object? supervisorSecondary = freezed,
    Object? examiner = freezed,
    Object? documentProof = freezed,
  }) {
    return _then(_self.copyWith(
      bookingType: freezed == bookingType
          ? _self.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
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
      seminarType: freezed == seminarType
          ? _self.seminarType
          : seminarType // ignore: cast_nullable_to_non_nullable
              as String?,
      researchTitle: freezed == researchTitle
          ? _self.researchTitle
          : researchTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorMain: freezed == supervisorMain
          ? _self.supervisorMain
          : supervisorMain // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorSecondary: freezed == supervisorSecondary
          ? _self.supervisorSecondary
          : supervisorSecondary // ignore: cast_nullable_to_non_nullable
              as String?,
      examiner: freezed == examiner
          ? _self.examiner
          : examiner // ignore: cast_nullable_to_non_nullable
              as String?,
      documentProof: freezed == documentProof
          ? _self.documentProof
          : documentProof // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaveRoomBookingRequestEntity].
extension SaveRoomBookingRequestEntityPatterns on SaveRoomBookingRequestEntity {
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
    TResult Function(_SaveRoomBookingRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity() when $default != null:
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
    TResult Function(_SaveRoomBookingRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity():
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
    TResult? Function(_SaveRoomBookingRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity() when $default != null:
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
            String? bookingType,
            String? purpose,
            String? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity() when $default != null:
        return $default(
            _that.bookingType,
            _that.purpose,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.seminarType,
            _that.researchTitle,
            _that.supervisorMain,
            _that.supervisorSecondary,
            _that.examiner,
            _that.documentProof);
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
            String? bookingType,
            String? purpose,
            String? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity():
        return $default(
            _that.bookingType,
            _that.purpose,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.seminarType,
            _that.researchTitle,
            _that.supervisorMain,
            _that.supervisorSecondary,
            _that.examiner,
            _that.documentProof);
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
            String? bookingType,
            String? purpose,
            String? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveRoomBookingRequestEntity() when $default != null:
        return $default(
            _that.bookingType,
            _that.purpose,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.seminarType,
            _that.researchTitle,
            _that.supervisorMain,
            _that.supervisorSecondary,
            _that.examiner,
            _that.documentProof);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SaveRoomBookingRequestEntity implements SaveRoomBookingRequestEntity {
  const _SaveRoomBookingRequestEntity(
      {this.bookingType,
      this.purpose,
      this.date,
      this.startTime,
      this.endTime,
      this.seminarType,
      this.researchTitle,
      this.supervisorMain,
      this.supervisorSecondary,
      this.examiner,
      this.documentProof});

  @override
  final String? bookingType;
  @override
  final String? purpose;
  @override
  final String? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? seminarType;
  @override
  final String? researchTitle;
  @override
  final String? supervisorMain;
  @override
  final String? supervisorSecondary;
  @override
  final String? examiner;
  @override
  final String? documentProof;

  /// Create a copy of SaveRoomBookingRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveRoomBookingRequestEntityCopyWith<_SaveRoomBookingRequestEntity>
      get copyWith => __$SaveRoomBookingRequestEntityCopyWithImpl<
          _SaveRoomBookingRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveRoomBookingRequestEntity &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.seminarType, seminarType) ||
                other.seminarType == seminarType) &&
            (identical(other.researchTitle, researchTitle) ||
                other.researchTitle == researchTitle) &&
            (identical(other.supervisorMain, supervisorMain) ||
                other.supervisorMain == supervisorMain) &&
            (identical(other.supervisorSecondary, supervisorSecondary) ||
                other.supervisorSecondary == supervisorSecondary) &&
            (identical(other.examiner, examiner) ||
                other.examiner == examiner) &&
            (identical(other.documentProof, documentProof) ||
                other.documentProof == documentProof));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingType,
      purpose,
      date,
      startTime,
      endTime,
      seminarType,
      researchTitle,
      supervisorMain,
      supervisorSecondary,
      examiner,
      documentProof);

  @override
  String toString() {
    return 'SaveRoomBookingRequestEntity(bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof)';
  }
}

/// @nodoc
abstract mixin class _$SaveRoomBookingRequestEntityCopyWith<$Res>
    implements $SaveRoomBookingRequestEntityCopyWith<$Res> {
  factory _$SaveRoomBookingRequestEntityCopyWith(
          _SaveRoomBookingRequestEntity value,
          $Res Function(_SaveRoomBookingRequestEntity) _then) =
      __$SaveRoomBookingRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? bookingType,
      String? purpose,
      String? date,
      String? startTime,
      String? endTime,
      String? seminarType,
      String? researchTitle,
      String? supervisorMain,
      String? supervisorSecondary,
      String? examiner,
      String? documentProof});
}

/// @nodoc
class __$SaveRoomBookingRequestEntityCopyWithImpl<$Res>
    implements _$SaveRoomBookingRequestEntityCopyWith<$Res> {
  __$SaveRoomBookingRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveRoomBookingRequestEntity _self;
  final $Res Function(_SaveRoomBookingRequestEntity) _then;

  /// Create a copy of SaveRoomBookingRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookingType = freezed,
    Object? purpose = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? seminarType = freezed,
    Object? researchTitle = freezed,
    Object? supervisorMain = freezed,
    Object? supervisorSecondary = freezed,
    Object? examiner = freezed,
    Object? documentProof = freezed,
  }) {
    return _then(_SaveRoomBookingRequestEntity(
      bookingType: freezed == bookingType
          ? _self.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
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
      seminarType: freezed == seminarType
          ? _self.seminarType
          : seminarType // ignore: cast_nullable_to_non_nullable
              as String?,
      researchTitle: freezed == researchTitle
          ? _self.researchTitle
          : researchTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorMain: freezed == supervisorMain
          ? _self.supervisorMain
          : supervisorMain // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorSecondary: freezed == supervisorSecondary
          ? _self.supervisorSecondary
          : supervisorSecondary // ignore: cast_nullable_to_non_nullable
              as String?,
      examiner: freezed == examiner
          ? _self.examiner
          : examiner // ignore: cast_nullable_to_non_nullable
              as String?,
      documentProof: freezed == documentProof
          ? _self.documentProof
          : documentProof // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
