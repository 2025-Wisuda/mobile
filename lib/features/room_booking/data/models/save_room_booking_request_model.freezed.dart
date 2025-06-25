// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_room_booking_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveRoomBookingRequestModel {
  @JsonKey(name: 'booking_type', includeIfNull: false)
  String? get bookingType;
  @JsonKey(name: 'purpose', includeIfNull: false)
  String? get purpose;
  @JsonKey(name: 'date', includeIfNull: false)
  String? get date;
  @JsonKey(name: 'start_time', includeIfNull: false)
  String? get startTime;
  @JsonKey(name: 'end_time', includeIfNull: false)
  String? get endTime;
  @JsonKey(name: 'seminar_type', includeIfNull: false)
  String? get seminarType;
  @JsonKey(name: 'research_title', includeIfNull: false)
  String? get researchTitle;
  @JsonKey(name: 'supervisor_main', includeIfNull: false)
  String? get supervisorMain;
  @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
  String? get supervisorSecondary;
  @JsonKey(name: 'examiner', includeIfNull: false)
  String? get examiner;
  @JsonKey(name: 'document_proof', includeIfNull: false)
  String? get documentProof;

  /// Create a copy of SaveRoomBookingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveRoomBookingRequestModelCopyWith<SaveRoomBookingRequestModel>
      get copyWith => _$SaveRoomBookingRequestModelCopyWithImpl<
              SaveRoomBookingRequestModel>(
          this as SaveRoomBookingRequestModel, _$identity);

  /// Serializes this SaveRoomBookingRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRoomBookingRequestModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SaveRoomBookingRequestModel(bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof)';
  }
}

/// @nodoc
abstract mixin class $SaveRoomBookingRequestModelCopyWith<$Res> {
  factory $SaveRoomBookingRequestModelCopyWith(
          SaveRoomBookingRequestModel value,
          $Res Function(SaveRoomBookingRequestModel) _then) =
      _$SaveRoomBookingRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_type', includeIfNull: false) String? bookingType,
      @JsonKey(name: 'purpose', includeIfNull: false) String? purpose,
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'seminar_type', includeIfNull: false) String? seminarType,
      @JsonKey(name: 'research_title', includeIfNull: false)
      String? researchTitle,
      @JsonKey(name: 'supervisor_main', includeIfNull: false)
      String? supervisorMain,
      @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
      String? supervisorSecondary,
      @JsonKey(name: 'examiner', includeIfNull: false) String? examiner,
      @JsonKey(name: 'document_proof', includeIfNull: false)
      String? documentProof});
}

/// @nodoc
class _$SaveRoomBookingRequestModelCopyWithImpl<$Res>
    implements $SaveRoomBookingRequestModelCopyWith<$Res> {
  _$SaveRoomBookingRequestModelCopyWithImpl(this._self, this._then);

  final SaveRoomBookingRequestModel _self;
  final $Res Function(SaveRoomBookingRequestModel) _then;

  /// Create a copy of SaveRoomBookingRequestModel
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

/// @nodoc
@JsonSerializable()
class _SaveRoomBookingRequestModel implements SaveRoomBookingRequestModel {
  const _SaveRoomBookingRequestModel(
      {@JsonKey(name: 'booking_type', includeIfNull: false) this.bookingType,
      @JsonKey(name: 'purpose', includeIfNull: false) this.purpose,
      @JsonKey(name: 'date', includeIfNull: false) this.date,
      @JsonKey(name: 'start_time', includeIfNull: false) this.startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) this.endTime,
      @JsonKey(name: 'seminar_type', includeIfNull: false) this.seminarType,
      @JsonKey(name: 'research_title', includeIfNull: false) this.researchTitle,
      @JsonKey(name: 'supervisor_main', includeIfNull: false)
      this.supervisorMain,
      @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
      this.supervisorSecondary,
      @JsonKey(name: 'examiner', includeIfNull: false) this.examiner,
      @JsonKey(name: 'document_proof', includeIfNull: false)
      this.documentProof});
  factory _SaveRoomBookingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveRoomBookingRequestModelFromJson(json);

  @override
  @JsonKey(name: 'booking_type', includeIfNull: false)
  final String? bookingType;
  @override
  @JsonKey(name: 'purpose', includeIfNull: false)
  final String? purpose;
  @override
  @JsonKey(name: 'date', includeIfNull: false)
  final String? date;
  @override
  @JsonKey(name: 'start_time', includeIfNull: false)
  final String? startTime;
  @override
  @JsonKey(name: 'end_time', includeIfNull: false)
  final String? endTime;
  @override
  @JsonKey(name: 'seminar_type', includeIfNull: false)
  final String? seminarType;
  @override
  @JsonKey(name: 'research_title', includeIfNull: false)
  final String? researchTitle;
  @override
  @JsonKey(name: 'supervisor_main', includeIfNull: false)
  final String? supervisorMain;
  @override
  @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
  final String? supervisorSecondary;
  @override
  @JsonKey(name: 'examiner', includeIfNull: false)
  final String? examiner;
  @override
  @JsonKey(name: 'document_proof', includeIfNull: false)
  final String? documentProof;

  /// Create a copy of SaveRoomBookingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveRoomBookingRequestModelCopyWith<_SaveRoomBookingRequestModel>
      get copyWith => __$SaveRoomBookingRequestModelCopyWithImpl<
          _SaveRoomBookingRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveRoomBookingRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveRoomBookingRequestModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'SaveRoomBookingRequestModel(bookingType: $bookingType, purpose: $purpose, date: $date, startTime: $startTime, endTime: $endTime, seminarType: $seminarType, researchTitle: $researchTitle, supervisorMain: $supervisorMain, supervisorSecondary: $supervisorSecondary, examiner: $examiner, documentProof: $documentProof)';
  }
}

/// @nodoc
abstract mixin class _$SaveRoomBookingRequestModelCopyWith<$Res>
    implements $SaveRoomBookingRequestModelCopyWith<$Res> {
  factory _$SaveRoomBookingRequestModelCopyWith(
          _SaveRoomBookingRequestModel value,
          $Res Function(_SaveRoomBookingRequestModel) _then) =
      __$SaveRoomBookingRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_type', includeIfNull: false) String? bookingType,
      @JsonKey(name: 'purpose', includeIfNull: false) String? purpose,
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'seminar_type', includeIfNull: false) String? seminarType,
      @JsonKey(name: 'research_title', includeIfNull: false)
      String? researchTitle,
      @JsonKey(name: 'supervisor_main', includeIfNull: false)
      String? supervisorMain,
      @JsonKey(name: 'supervisor_secondary', includeIfNull: false)
      String? supervisorSecondary,
      @JsonKey(name: 'examiner', includeIfNull: false) String? examiner,
      @JsonKey(name: 'document_proof', includeIfNull: false)
      String? documentProof});
}

/// @nodoc
class __$SaveRoomBookingRequestModelCopyWithImpl<$Res>
    implements _$SaveRoomBookingRequestModelCopyWith<$Res> {
  __$SaveRoomBookingRequestModelCopyWithImpl(this._self, this._then);

  final _SaveRoomBookingRequestModel _self;
  final $Res Function(_SaveRoomBookingRequestModel) _then;

  /// Create a copy of SaveRoomBookingRequestModel
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
    return _then(_SaveRoomBookingRequestModel(
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
