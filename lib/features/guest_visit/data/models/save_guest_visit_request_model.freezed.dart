// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_guest_visit_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveGuestVisitRequestModel {
  @JsonKey(name: 'visitor', includeIfNull: false)
  String? get visitor;
  @JsonKey(name: 'name', includeIfNull: false)
  String? get name;
  @JsonKey(name: 'identity_type', includeIfNull: false)
  String? get identityType;
  @JsonKey(name: 'identity_number', includeIfNull: false)
  String? get identityNumber;
  @JsonKey(name: 'date')
  String? get date;
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time', includeIfNull: false)
  String? get endTime;
  @JsonKey(name: 'purpose')
  String? get purpose;
  @JsonKey(name: 'paraf', includeIfNull: false)
  String? get paraf;

  /// Create a copy of SaveGuestVisitRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveGuestVisitRequestModelCopyWith<SaveGuestVisitRequestModel>
      get copyWith =>
          _$SaveGuestVisitRequestModelCopyWithImpl<SaveGuestVisitRequestModel>(
              this as SaveGuestVisitRequestModel, _$identity);

  /// Serializes this SaveGuestVisitRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveGuestVisitRequestModel &&
            (identical(other.visitor, visitor) || other.visitor == visitor) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.paraf, paraf) || other.paraf == paraf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose, paraf);

  @override
  String toString() {
    return 'SaveGuestVisitRequestModel(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf)';
  }
}

/// @nodoc
abstract mixin class $SaveGuestVisitRequestModelCopyWith<$Res> {
  factory $SaveGuestVisitRequestModelCopyWith(SaveGuestVisitRequestModel value,
          $Res Function(SaveGuestVisitRequestModel) _then) =
      _$SaveGuestVisitRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
      @JsonKey(name: 'name', includeIfNull: false) String? name,
      @JsonKey(name: 'identity_type', includeIfNull: false)
      String? identityType,
      @JsonKey(name: 'identity_number', includeIfNull: false)
      String? identityNumber,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'paraf', includeIfNull: false) String? paraf});
}

/// @nodoc
class _$SaveGuestVisitRequestModelCopyWithImpl<$Res>
    implements $SaveGuestVisitRequestModelCopyWith<$Res> {
  _$SaveGuestVisitRequestModelCopyWithImpl(this._self, this._then);

  final SaveGuestVisitRequestModel _self;
  final $Res Function(SaveGuestVisitRequestModel) _then;

  /// Create a copy of SaveGuestVisitRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
    Object? paraf = freezed,
  }) {
    return _then(_self.copyWith(
      visitor: freezed == visitor
          ? _self.visitor
          : visitor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _self.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumber: freezed == identityNumber
          ? _self.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
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
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      paraf: freezed == paraf
          ? _self.paraf
          : paraf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SaveGuestVisitRequestModel implements SaveGuestVisitRequestModel {
  const _SaveGuestVisitRequestModel(
      {@JsonKey(name: 'visitor', includeIfNull: false) this.visitor,
      @JsonKey(name: 'name', includeIfNull: false) this.name,
      @JsonKey(name: 'identity_type', includeIfNull: false) this.identityType,
      @JsonKey(name: 'identity_number', includeIfNull: false)
      this.identityNumber,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) this.endTime,
      @JsonKey(name: 'purpose') this.purpose,
      @JsonKey(name: 'paraf', includeIfNull: false) this.paraf});
  factory _SaveGuestVisitRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveGuestVisitRequestModelFromJson(json);

  @override
  @JsonKey(name: 'visitor', includeIfNull: false)
  final String? visitor;
  @override
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @override
  @JsonKey(name: 'identity_type', includeIfNull: false)
  final String? identityType;
  @override
  @JsonKey(name: 'identity_number', includeIfNull: false)
  final String? identityNumber;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time', includeIfNull: false)
  final String? endTime;
  @override
  @JsonKey(name: 'purpose')
  final String? purpose;
  @override
  @JsonKey(name: 'paraf', includeIfNull: false)
  final String? paraf;

  /// Create a copy of SaveGuestVisitRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveGuestVisitRequestModelCopyWith<_SaveGuestVisitRequestModel>
      get copyWith => __$SaveGuestVisitRequestModelCopyWithImpl<
          _SaveGuestVisitRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaveGuestVisitRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveGuestVisitRequestModel &&
            (identical(other.visitor, visitor) || other.visitor == visitor) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.paraf, paraf) || other.paraf == paraf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose, paraf);

  @override
  String toString() {
    return 'SaveGuestVisitRequestModel(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf)';
  }
}

/// @nodoc
abstract mixin class _$SaveGuestVisitRequestModelCopyWith<$Res>
    implements $SaveGuestVisitRequestModelCopyWith<$Res> {
  factory _$SaveGuestVisitRequestModelCopyWith(
          _SaveGuestVisitRequestModel value,
          $Res Function(_SaveGuestVisitRequestModel) _then) =
      __$SaveGuestVisitRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
      @JsonKey(name: 'name', includeIfNull: false) String? name,
      @JsonKey(name: 'identity_type', includeIfNull: false)
      String? identityType,
      @JsonKey(name: 'identity_number', includeIfNull: false)
      String? identityNumber,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'paraf', includeIfNull: false) String? paraf});
}

/// @nodoc
class __$SaveGuestVisitRequestModelCopyWithImpl<$Res>
    implements _$SaveGuestVisitRequestModelCopyWith<$Res> {
  __$SaveGuestVisitRequestModelCopyWithImpl(this._self, this._then);

  final _SaveGuestVisitRequestModel _self;
  final $Res Function(_SaveGuestVisitRequestModel) _then;

  /// Create a copy of SaveGuestVisitRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
    Object? paraf = freezed,
  }) {
    return _then(_SaveGuestVisitRequestModel(
      visitor: freezed == visitor
          ? _self.visitor
          : visitor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identityType: freezed == identityType
          ? _self.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNumber: freezed == identityNumber
          ? _self.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
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
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      paraf: freezed == paraf
          ? _self.paraf
          : paraf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
