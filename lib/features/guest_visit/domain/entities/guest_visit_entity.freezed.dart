// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_visit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestVisitEntity {
  String? get id;
  UserEntity? get visitor;
  String? get name;
  String? get identityType;
  String? get identityNumber;
  DateTime? get date;
  String? get startTime;
  String? get endTime;
  String? get purpose;
  String? get paraf;
  UserEntity? get staff;
  String? get nameDisplay;
  String? get identityDisplay;
  bool? get canEdit;
  UserEntity? get createdBy;
  DateTime? get createdAt;
  DateTime? get updatedAt;

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuestVisitEntityCopyWith<GuestVisitEntity> get copyWith =>
      _$GuestVisitEntityCopyWithImpl<GuestVisitEntity>(
          this as GuestVisitEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuestVisitEntity &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.paraf, paraf) || other.paraf == paraf) &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.nameDisplay, nameDisplay) ||
                other.nameDisplay == nameDisplay) &&
            (identical(other.identityDisplay, identityDisplay) ||
                other.identityDisplay == identityDisplay) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      visitor,
      name,
      identityType,
      identityNumber,
      date,
      startTime,
      endTime,
      purpose,
      paraf,
      staff,
      nameDisplay,
      identityDisplay,
      canEdit,
      createdBy,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'GuestVisitEntity(id: $id, visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf, staff: $staff, nameDisplay: $nameDisplay, identityDisplay: $identityDisplay, canEdit: $canEdit, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $GuestVisitEntityCopyWith<$Res> {
  factory $GuestVisitEntityCopyWith(
          GuestVisitEntity value, $Res Function(GuestVisitEntity) _then) =
      _$GuestVisitEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      UserEntity? visitor,
      String? name,
      String? identityType,
      String? identityNumber,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? purpose,
      String? paraf,
      UserEntity? staff,
      String? nameDisplay,
      String? identityDisplay,
      bool? canEdit,
      UserEntity? createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserEntityCopyWith<$Res>? get visitor;
  $UserEntityCopyWith<$Res>? get staff;
  $UserEntityCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$GuestVisitEntityCopyWithImpl<$Res>
    implements $GuestVisitEntityCopyWith<$Res> {
  _$GuestVisitEntityCopyWithImpl(this._self, this._then);

  final GuestVisitEntity _self;
  final $Res Function(GuestVisitEntity) _then;

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
    Object? paraf = freezed,
    Object? staff = freezed,
    Object? nameDisplay = freezed,
    Object? identityDisplay = freezed,
    Object? canEdit = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor: freezed == visitor
          ? _self.visitor
          : visitor // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
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
              as DateTime?,
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
      staff: freezed == staff
          ? _self.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      nameDisplay: freezed == nameDisplay
          ? _self.nameDisplay
          : nameDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDisplay: freezed == identityDisplay
          ? _self.identityDisplay
          : identityDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      canEdit: freezed == canEdit
          ? _self.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
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

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get visitor {
    if (_self.visitor == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.visitor!, (value) {
      return _then(_self.copyWith(visitor: value));
    });
  }

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get staff {
    if (_self.staff == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.staff!, (value) {
      return _then(_self.copyWith(staff: value));
    });
  }

  /// Create a copy of GuestVisitEntity
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

/// @nodoc

class _GuestVisitEntity implements GuestVisitEntity {
  const _GuestVisitEntity(
      {this.id,
      this.visitor,
      this.name,
      this.identityType,
      this.identityNumber,
      this.date,
      this.startTime,
      this.endTime,
      this.purpose,
      this.paraf,
      this.staff,
      this.nameDisplay,
      this.identityDisplay,
      this.canEdit,
      this.createdBy,
      this.createdAt,
      this.updatedAt});

  @override
  final String? id;
  @override
  final UserEntity? visitor;
  @override
  final String? name;
  @override
  final String? identityType;
  @override
  final String? identityNumber;
  @override
  final DateTime? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? purpose;
  @override
  final String? paraf;
  @override
  final UserEntity? staff;
  @override
  final String? nameDisplay;
  @override
  final String? identityDisplay;
  @override
  final bool? canEdit;
  @override
  final UserEntity? createdBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuestVisitEntityCopyWith<_GuestVisitEntity> get copyWith =>
      __$GuestVisitEntityCopyWithImpl<_GuestVisitEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuestVisitEntity &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.paraf, paraf) || other.paraf == paraf) &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.nameDisplay, nameDisplay) ||
                other.nameDisplay == nameDisplay) &&
            (identical(other.identityDisplay, identityDisplay) ||
                other.identityDisplay == identityDisplay) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      visitor,
      name,
      identityType,
      identityNumber,
      date,
      startTime,
      endTime,
      purpose,
      paraf,
      staff,
      nameDisplay,
      identityDisplay,
      canEdit,
      createdBy,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'GuestVisitEntity(id: $id, visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, paraf: $paraf, staff: $staff, nameDisplay: $nameDisplay, identityDisplay: $identityDisplay, canEdit: $canEdit, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$GuestVisitEntityCopyWith<$Res>
    implements $GuestVisitEntityCopyWith<$Res> {
  factory _$GuestVisitEntityCopyWith(
          _GuestVisitEntity value, $Res Function(_GuestVisitEntity) _then) =
      __$GuestVisitEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      UserEntity? visitor,
      String? name,
      String? identityType,
      String? identityNumber,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? purpose,
      String? paraf,
      UserEntity? staff,
      String? nameDisplay,
      String? identityDisplay,
      bool? canEdit,
      UserEntity? createdBy,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserEntityCopyWith<$Res>? get visitor;
  @override
  $UserEntityCopyWith<$Res>? get staff;
  @override
  $UserEntityCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$GuestVisitEntityCopyWithImpl<$Res>
    implements _$GuestVisitEntityCopyWith<$Res> {
  __$GuestVisitEntityCopyWithImpl(this._self, this._then);

  final _GuestVisitEntity _self;
  final $Res Function(_GuestVisitEntity) _then;

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? visitor = freezed,
    Object? name = freezed,
    Object? identityType = freezed,
    Object? identityNumber = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
    Object? paraf = freezed,
    Object? staff = freezed,
    Object? nameDisplay = freezed,
    Object? identityDisplay = freezed,
    Object? canEdit = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_GuestVisitEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor: freezed == visitor
          ? _self.visitor
          : visitor // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
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
              as DateTime?,
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
      staff: freezed == staff
          ? _self.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      nameDisplay: freezed == nameDisplay
          ? _self.nameDisplay
          : nameDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      identityDisplay: freezed == identityDisplay
          ? _self.identityDisplay
          : identityDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      canEdit: freezed == canEdit
          ? _self.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
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

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get visitor {
    if (_self.visitor == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.visitor!, (value) {
      return _then(_self.copyWith(visitor: value));
    });
  }

  /// Create a copy of GuestVisitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get staff {
    if (_self.staff == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_self.staff!, (value) {
      return _then(_self.copyWith(staff: value));
    });
  }

  /// Create a copy of GuestVisitEntity
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
