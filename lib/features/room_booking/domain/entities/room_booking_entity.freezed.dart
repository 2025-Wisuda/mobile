// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomBookingEntity {
  String? get id;
  String? get booker;
  String? get bookerName;
  String? get bookerIdentifier;
  String? get bookingType;
  String? get purpose;
  DateTime? get date;
  String? get startTime;
  String? get endTime;
  String? get seminarType;
  String? get researchTitle;
  String? get supervisorMain;
  String? get supervisorSecondary;
  String? get examiner;
  String? get documentProof;
  String? get approvalStatus;
  UserEntity? get approvedByUser;
  DateTime? get approvalTimestamp;
  String? get approvalNotes;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoomBookingEntityCopyWith<RoomBookingEntity> get copyWith =>
      _$RoomBookingEntityCopyWithImpl<RoomBookingEntity>(
          this as RoomBookingEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomBookingEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.booker, booker) || other.booker == booker) &&
            (identical(other.bookerName, bookerName) ||
                other.bookerName == bookerName) &&
            (identical(other.bookerIdentifier, bookerIdentifier) ||
                other.bookerIdentifier == bookerIdentifier) &&
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
                other.documentProof == documentProof) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.approvedByUser, approvedByUser) ||
                other.approvedByUser == approvedByUser) &&
            (identical(other.approvalTimestamp, approvalTimestamp) ||
                other.approvalTimestamp == approvalTimestamp) &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        booker,
        bookerName,
        bookerIdentifier,
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
        documentProof,
        approvalStatus,
        approvedByUser,
        approvalTimestamp,
        approvalNotes,
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'RoomBookingEntity(id: $id, booker: $booker, bookerName: $bookerName, bookerIdentifier: $bookerIdentifier, bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof, approvalStatus: $approvalStatus, approvedByUser: $approvedByUser, approvalTimestamp: $approvalTimestamp, approvalNotes: $approvalNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $RoomBookingEntityCopyWith<$Res> {
  factory $RoomBookingEntityCopyWith(
          RoomBookingEntity value, $Res Function(RoomBookingEntity) _then) =
      _$RoomBookingEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? booker,
      String? bookerName,
      String? bookerIdentifier,
      String? bookingType,
      String? purpose,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? seminarType,
      String? researchTitle,
      String? supervisorMain,
      String? supervisorSecondary,
      String? examiner,
      String? documentProof,
      String? approvalStatus,
      UserEntity? approvedByUser,
      DateTime? approvalTimestamp,
      String? approvalNotes,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserEntityCopyWith<$Res>? get approvedByUser;
}

/// @nodoc
class _$RoomBookingEntityCopyWithImpl<$Res>
    implements $RoomBookingEntityCopyWith<$Res> {
  _$RoomBookingEntityCopyWithImpl(this._self, this._then);

  final RoomBookingEntity _self;
  final $Res Function(RoomBookingEntity) _then;

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? booker = freezed,
    Object? bookerName = freezed,
    Object? bookerIdentifier = freezed,
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
    Object? approvalStatus = freezed,
    Object? approvedByUser = freezed,
    Object? approvalTimestamp = freezed,
    Object? approvalNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      booker: freezed == booker
          ? _self.booker
          : booker // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerName: freezed == bookerName
          ? _self.bookerName
          : bookerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerIdentifier: freezed == bookerIdentifier
          ? _self.bookerIdentifier
          : bookerIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
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
      approvalStatus: freezed == approvalStatus
          ? _self.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedByUser: freezed == approvedByUser
          ? _self.approvedByUser
          : approvedByUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      approvalTimestamp: freezed == approvalTimestamp
          ? _self.approvalTimestamp
          : approvalTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get approvedByUser {
    if (_self.approvedByUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.approvedByUser!, (value) {
      return _then(_self.copyWith(approvedByUser: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RoomBookingEntity].
extension RoomBookingEntityPatterns on RoomBookingEntity {
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
    TResult Function(_RoomBookingEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity() when $default != null:
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
    TResult Function(_RoomBookingEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity():
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
    TResult? Function(_RoomBookingEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity() when $default != null:
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
            String? booker,
            String? bookerName,
            String? bookerIdentifier,
            String? bookingType,
            String? purpose,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof,
            String? approvalStatus,
            UserEntity? approvedByUser,
            DateTime? approvalTimestamp,
            String? approvalNotes,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity() when $default != null:
        return $default(
            _that.id,
            _that.booker,
            _that.bookerName,
            _that.bookerIdentifier,
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
            _that.documentProof,
            _that.approvalStatus,
            _that.approvedByUser,
            _that.approvalTimestamp,
            _that.approvalNotes,
            _that.createdAt,
            _that.updatedAt);
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
            String? booker,
            String? bookerName,
            String? bookerIdentifier,
            String? bookingType,
            String? purpose,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof,
            String? approvalStatus,
            UserEntity? approvedByUser,
            DateTime? approvalTimestamp,
            String? approvalNotes,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity():
        return $default(
            _that.id,
            _that.booker,
            _that.bookerName,
            _that.bookerIdentifier,
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
            _that.documentProof,
            _that.approvalStatus,
            _that.approvedByUser,
            _that.approvalTimestamp,
            _that.approvalNotes,
            _that.createdAt,
            _that.updatedAt);
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
            String? booker,
            String? bookerName,
            String? bookerIdentifier,
            String? bookingType,
            String? purpose,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? seminarType,
            String? researchTitle,
            String? supervisorMain,
            String? supervisorSecondary,
            String? examiner,
            String? documentProof,
            String? approvalStatus,
            UserEntity? approvedByUser,
            DateTime? approvalTimestamp,
            String? approvalNotes,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomBookingEntity() when $default != null:
        return $default(
            _that.id,
            _that.booker,
            _that.bookerName,
            _that.bookerIdentifier,
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
            _that.documentProof,
            _that.approvalStatus,
            _that.approvedByUser,
            _that.approvalTimestamp,
            _that.approvalNotes,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RoomBookingEntity implements RoomBookingEntity {
  const _RoomBookingEntity(
      {this.id,
      this.booker,
      this.bookerName,
      this.bookerIdentifier,
      this.bookingType,
      this.purpose,
      this.date,
      this.startTime,
      this.endTime,
      this.seminarType,
      this.researchTitle,
      this.supervisorMain,
      this.supervisorSecondary,
      this.examiner,
      this.documentProof,
      this.approvalStatus,
      this.approvedByUser,
      this.approvalTimestamp,
      this.approvalNotes,
      this.createdAt,
      this.updatedAt});

  @override
  final String? id;
  @override
  final String? booker;
  @override
  final String? bookerName;
  @override
  final String? bookerIdentifier;
  @override
  final String? bookingType;
  @override
  final String? purpose;
  @override
  final DateTime? date;
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
  @override
  final String? approvalStatus;
  @override
  final UserEntity? approvedByUser;
  @override
  final DateTime? approvalTimestamp;
  @override
  final String? approvalNotes;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoomBookingEntityCopyWith<_RoomBookingEntity> get copyWith =>
      __$RoomBookingEntityCopyWithImpl<_RoomBookingEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomBookingEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.booker, booker) || other.booker == booker) &&
            (identical(other.bookerName, bookerName) ||
                other.bookerName == bookerName) &&
            (identical(other.bookerIdentifier, bookerIdentifier) ||
                other.bookerIdentifier == bookerIdentifier) &&
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
                other.documentProof == documentProof) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.approvedByUser, approvedByUser) ||
                other.approvedByUser == approvedByUser) &&
            (identical(other.approvalTimestamp, approvalTimestamp) ||
                other.approvalTimestamp == approvalTimestamp) &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        booker,
        bookerName,
        bookerIdentifier,
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
        documentProof,
        approvalStatus,
        approvedByUser,
        approvalTimestamp,
        approvalNotes,
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'RoomBookingEntity(id: $id, booker: $booker, bookerName: $bookerName, bookerIdentifier: $bookerIdentifier, bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof, approvalStatus: $approvalStatus, approvedByUser: $approvedByUser, approvalTimestamp: $approvalTimestamp, approvalNotes: $approvalNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$RoomBookingEntityCopyWith<$Res>
    implements $RoomBookingEntityCopyWith<$Res> {
  factory _$RoomBookingEntityCopyWith(
          _RoomBookingEntity value, $Res Function(_RoomBookingEntity) _then) =
      __$RoomBookingEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? booker,
      String? bookerName,
      String? bookerIdentifier,
      String? bookingType,
      String? purpose,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? seminarType,
      String? researchTitle,
      String? supervisorMain,
      String? supervisorSecondary,
      String? examiner,
      String? documentProof,
      String? approvalStatus,
      UserEntity? approvedByUser,
      DateTime? approvalTimestamp,
      String? approvalNotes,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserEntityCopyWith<$Res>? get approvedByUser;
}

/// @nodoc
class __$RoomBookingEntityCopyWithImpl<$Res>
    implements _$RoomBookingEntityCopyWith<$Res> {
  __$RoomBookingEntityCopyWithImpl(this._self, this._then);

  final _RoomBookingEntity _self;
  final $Res Function(_RoomBookingEntity) _then;

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? booker = freezed,
    Object? bookerName = freezed,
    Object? bookerIdentifier = freezed,
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
    Object? approvalStatus = freezed,
    Object? approvedByUser = freezed,
    Object? approvalTimestamp = freezed,
    Object? approvalNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_RoomBookingEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      booker: freezed == booker
          ? _self.booker
          : booker // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerName: freezed == bookerName
          ? _self.bookerName
          : bookerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bookerIdentifier: freezed == bookerIdentifier
          ? _self.bookerIdentifier
          : bookerIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
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
      approvalStatus: freezed == approvalStatus
          ? _self.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedByUser: freezed == approvedByUser
          ? _self.approvedByUser
          : approvedByUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      approvalTimestamp: freezed == approvalTimestamp
          ? _self.approvalTimestamp
          : approvalTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get approvedByUser {
    if (_self.approvedByUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.approvedByUser!, (value) {
      return _then(_self.copyWith(approvedByUser: value));
    });
  }
}

// dart format on
