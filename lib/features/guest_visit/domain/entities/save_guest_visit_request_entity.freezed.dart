// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_guest_visit_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveGuestVisitRequestEntity {
// Visitor information - conditional fields
  String? get visitor;
  String? get name;
  String? get identityType;
  String? get identityNumber; // Visit details - required
  DateTime get date;
  String get startTime;
  String? get endTime;
  String get purpose;
  String? get paraf;

  /// Create a copy of SaveGuestVisitRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveGuestVisitRequestEntityCopyWith<SaveGuestVisitRequestEntity>
      get copyWith => _$SaveGuestVisitRequestEntityCopyWithImpl<
              SaveGuestVisitRequestEntity>(
          this as SaveGuestVisitRequestEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveGuestVisitRequestEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose, paraf);

  @override
  String toString() {
    return 'SaveGuestVisitRequestEntity(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf)';
  }
}

/// @nodoc
abstract mixin class $SaveGuestVisitRequestEntityCopyWith<$Res> {
  factory $SaveGuestVisitRequestEntityCopyWith(
          SaveGuestVisitRequestEntity value,
          $Res Function(SaveGuestVisitRequestEntity) _then) =
      _$SaveGuestVisitRequestEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? visitor,
      String? name,
      String? identityType,
      String? identityNumber,
      DateTime date,
      String startTime,
      String? endTime,
      String purpose,
      String? paraf});
}

/// @nodoc
class _$SaveGuestVisitRequestEntityCopyWithImpl<$Res>
    implements $SaveGuestVisitRequestEntityCopyWith<$Res> {
  _$SaveGuestVisitRequestEntityCopyWithImpl(this._self, this._then);

  final SaveGuestVisitRequestEntity _self;
  final $Res Function(SaveGuestVisitRequestEntity) _then;

  /// Create a copy of SaveGuestVisitRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? purpose = null,
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
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      paraf: freezed == paraf
          ? _self.paraf
          : paraf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _SaveGuestVisitRequestEntity implements SaveGuestVisitRequestEntity {
  const _SaveGuestVisitRequestEntity(
      {this.visitor,
      this.name,
      this.identityType,
      this.identityNumber,
      required this.date,
      required this.startTime,
      this.endTime,
      required this.purpose,
      this.paraf});

// Visitor information - conditional fields
  @override
  final String? visitor;
  @override
  final String? name;
  @override
  final String? identityType;
  @override
  final String? identityNumber;
// Visit details - required
  @override
  final DateTime date;
  @override
  final String startTime;
  @override
  final String? endTime;
  @override
  final String purpose;
  @override
  final String? paraf;

  /// Create a copy of SaveGuestVisitRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveGuestVisitRequestEntityCopyWith<_SaveGuestVisitRequestEntity>
      get copyWith => __$SaveGuestVisitRequestEntityCopyWithImpl<
          _SaveGuestVisitRequestEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveGuestVisitRequestEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose, paraf);

  @override
  String toString() {
    return 'SaveGuestVisitRequestEntity(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf)';
  }
}

/// @nodoc
abstract mixin class _$SaveGuestVisitRequestEntityCopyWith<$Res>
    implements $SaveGuestVisitRequestEntityCopyWith<$Res> {
  factory _$SaveGuestVisitRequestEntityCopyWith(
          _SaveGuestVisitRequestEntity value,
          $Res Function(_SaveGuestVisitRequestEntity) _then) =
      __$SaveGuestVisitRequestEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? visitor,
      String? name,
      String? identityType,
      String? identityNumber,
      DateTime date,
      String startTime,
      String? endTime,
      String purpose,
      String? paraf});
}

/// @nodoc
class __$SaveGuestVisitRequestEntityCopyWithImpl<$Res>
    implements _$SaveGuestVisitRequestEntityCopyWith<$Res> {
  __$SaveGuestVisitRequestEntityCopyWithImpl(this._self, this._then);

  final _SaveGuestVisitRequestEntity _self;
  final $Res Function(_SaveGuestVisitRequestEntity) _then;

  /// Create a copy of SaveGuestVisitRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? purpose = null,
    Object? paraf = freezed,
  }) {
    return _then(_SaveGuestVisitRequestEntity(
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
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      paraf: freezed == paraf
          ? _self.paraf
          : paraf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
