// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomBookingModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'booker')
  String? get booker;
  @JsonKey(name: 'booker_name')
  String? get bookerName;
  @JsonKey(name: 'booker_identifier')
  String? get bookerIdentifier;
  @JsonKey(name: 'booking_type')
  String? get bookingType;
  @JsonKey(name: 'purpose')
  String? get purpose;
  @JsonKey(name: 'date')
  DateTime? get date;
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time')
  String? get endTime;
  @JsonKey(name: 'seminar_type')
  String? get seminarType;
  @JsonKey(name: 'research_title')
  String? get researchTitle;
  @JsonKey(name: 'supervisor_main')
  String? get supervisorMain;
  @JsonKey(name: 'supervisor_secondary')
  String? get supervisorSecondary;
  @JsonKey(name: 'examiner')
  String? get examiner;
  @JsonKey(name: 'document_proof')
  String? get documentProof;
  @JsonKey(name: 'approval_status')
  String? get approvalStatus;
  @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
  UserModel? get approvedByUser;
  @JsonKey(name: 'approval_timestamp')
  DateTime? get approvalTimestamp;
  @JsonKey(name: 'approval_notes')
  String? get approvalNotes;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of RoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoomBookingModelCopyWith<RoomBookingModel> get copyWith =>
      _$RoomBookingModelCopyWithImpl<RoomBookingModel>(
          this as RoomBookingModel, _$identity);

  /// Serializes this RoomBookingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomBookingModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'RoomBookingModel(id: $id, booker: $booker, bookerName: $bookerName, bookerIdentifier: $bookerIdentifier, bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof, approvalStatus: $approvalStatus, approvedByUser: $approvedByUser, approvalTimestamp: $approvalTimestamp, approvalNotes: $approvalNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $RoomBookingModelCopyWith<$Res> {
  factory $RoomBookingModelCopyWith(
          RoomBookingModel value, $Res Function(RoomBookingModel) _then) =
      _$RoomBookingModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'booker') String? booker,
      @JsonKey(name: 'booker_name') String? bookerName,
      @JsonKey(name: 'booker_identifier') String? bookerIdentifier,
      @JsonKey(name: 'booking_type') String? bookingType,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'seminar_type') String? seminarType,
      @JsonKey(name: 'research_title') String? researchTitle,
      @JsonKey(name: 'supervisor_main') String? supervisorMain,
      @JsonKey(name: 'supervisor_secondary') String? supervisorSecondary,
      @JsonKey(name: 'examiner') String? examiner,
      @JsonKey(name: 'document_proof') String? documentProof,
      @JsonKey(name: 'approval_status') String? approvalStatus,
      @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
      UserModel? approvedByUser,
      @JsonKey(name: 'approval_timestamp') DateTime? approvalTimestamp,
      @JsonKey(name: 'approval_notes') String? approvalNotes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $UserModelCopyWith<$Res>? get approvedByUser;
}

/// @nodoc
class _$RoomBookingModelCopyWithImpl<$Res>
    implements $RoomBookingModelCopyWith<$Res> {
  _$RoomBookingModelCopyWithImpl(this._self, this._then);

  final RoomBookingModel _self;
  final $Res Function(RoomBookingModel) _then;

  /// Create a copy of RoomBookingModel
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
              as UserModel?,
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

  /// Create a copy of RoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get approvedByUser {
    if (_self.approvedByUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.approvedByUser!, (value) {
      return _then(_self.copyWith(approvedByUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RoomBookingModel implements RoomBookingModel {
  const _RoomBookingModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'booker') this.booker,
      @JsonKey(name: 'booker_name') this.bookerName,
      @JsonKey(name: 'booker_identifier') this.bookerIdentifier,
      @JsonKey(name: 'booking_type') this.bookingType,
      @JsonKey(name: 'purpose') this.purpose,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'seminar_type') this.seminarType,
      @JsonKey(name: 'research_title') this.researchTitle,
      @JsonKey(name: 'supervisor_main') this.supervisorMain,
      @JsonKey(name: 'supervisor_secondary') this.supervisorSecondary,
      @JsonKey(name: 'examiner') this.examiner,
      @JsonKey(name: 'document_proof') this.documentProof,
      @JsonKey(name: 'approval_status') this.approvalStatus,
      @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
      this.approvedByUser,
      @JsonKey(name: 'approval_timestamp') this.approvalTimestamp,
      @JsonKey(name: 'approval_notes') this.approvalNotes,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});
  factory _RoomBookingModel.fromJson(Map<String, dynamic> json) =>
      _$RoomBookingModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'booker')
  final String? booker;
  @override
  @JsonKey(name: 'booker_name')
  final String? bookerName;
  @override
  @JsonKey(name: 'booker_identifier')
  final String? bookerIdentifier;
  @override
  @JsonKey(name: 'booking_type')
  final String? bookingType;
  @override
  @JsonKey(name: 'purpose')
  final String? purpose;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'seminar_type')
  final String? seminarType;
  @override
  @JsonKey(name: 'research_title')
  final String? researchTitle;
  @override
  @JsonKey(name: 'supervisor_main')
  final String? supervisorMain;
  @override
  @JsonKey(name: 'supervisor_secondary')
  final String? supervisorSecondary;
  @override
  @JsonKey(name: 'examiner')
  final String? examiner;
  @override
  @JsonKey(name: 'document_proof')
  final String? documentProof;
  @override
  @JsonKey(name: 'approval_status')
  final String? approvalStatus;
  @override
  @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
  final UserModel? approvedByUser;
  @override
  @JsonKey(name: 'approval_timestamp')
  final DateTime? approvalTimestamp;
  @override
  @JsonKey(name: 'approval_notes')
  final String? approvalNotes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// Create a copy of RoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoomBookingModelCopyWith<_RoomBookingModel> get copyWith =>
      __$RoomBookingModelCopyWithImpl<_RoomBookingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RoomBookingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomBookingModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'RoomBookingModel(id: $id, booker: $booker, bookerName: $bookerName, bookerIdentifier: $bookerIdentifier, bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof, approvalStatus: $approvalStatus, approvedByUser: $approvedByUser, approvalTimestamp: $approvalTimestamp, approvalNotes: $approvalNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$RoomBookingModelCopyWith<$Res>
    implements $RoomBookingModelCopyWith<$Res> {
  factory _$RoomBookingModelCopyWith(
          _RoomBookingModel value, $Res Function(_RoomBookingModel) _then) =
      __$RoomBookingModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'booker') String? booker,
      @JsonKey(name: 'booker_name') String? bookerName,
      @JsonKey(name: 'booker_identifier') String? bookerIdentifier,
      @JsonKey(name: 'booking_type') String? bookingType,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'seminar_type') String? seminarType,
      @JsonKey(name: 'research_title') String? researchTitle,
      @JsonKey(name: 'supervisor_main') String? supervisorMain,
      @JsonKey(name: 'supervisor_secondary') String? supervisorSecondary,
      @JsonKey(name: 'examiner') String? examiner,
      @JsonKey(name: 'document_proof') String? documentProof,
      @JsonKey(name: 'approval_status') String? approvalStatus,
      @JsonKey(name: 'approved_by_user', fromJson: _approvedByUserFromJson)
      UserModel? approvedByUser,
      @JsonKey(name: 'approval_timestamp') DateTime? approvalTimestamp,
      @JsonKey(name: 'approval_notes') String? approvalNotes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $UserModelCopyWith<$Res>? get approvedByUser;
}

/// @nodoc
class __$RoomBookingModelCopyWithImpl<$Res>
    implements _$RoomBookingModelCopyWith<$Res> {
  __$RoomBookingModelCopyWithImpl(this._self, this._then);

  final _RoomBookingModel _self;
  final $Res Function(_RoomBookingModel) _then;

  /// Create a copy of RoomBookingModel
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
    return _then(_RoomBookingModel(
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
              as UserModel?,
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

  /// Create a copy of RoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get approvedByUser {
    if (_self.approvedByUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.approvedByUser!, (value) {
      return _then(_self.copyWith(approvedByUser: value));
    });
  }
}

// dart format on
