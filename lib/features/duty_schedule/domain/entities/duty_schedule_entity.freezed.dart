// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyScheduleEntity {
  String? get avatar;
  String? get name;
  String? get studentNumber;
  String? get status;

  /// Create a copy of DutyScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyScheduleEntityCopyWith<DutyScheduleEntity> get copyWith =>
      _$DutyScheduleEntityCopyWithImpl<DutyScheduleEntity>(
          this as DutyScheduleEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyScheduleEntity &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, name, studentNumber, status);

  @override
  String toString() {
    return 'DutyScheduleEntity(avatar: $avatar, name: $name, studentNumber: $studentNumber, status: $status)';
  }
}

/// @nodoc
abstract mixin class $DutyScheduleEntityCopyWith<$Res> {
  factory $DutyScheduleEntityCopyWith(
          DutyScheduleEntity value, $Res Function(DutyScheduleEntity) _then) =
      _$DutyScheduleEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? avatar, String? name, String? studentNumber, String? status});
}

/// @nodoc
class _$DutyScheduleEntityCopyWithImpl<$Res>
    implements $DutyScheduleEntityCopyWith<$Res> {
  _$DutyScheduleEntityCopyWithImpl(this._self, this._then);

  final DutyScheduleEntity _self;
  final $Res Function(DutyScheduleEntity) _then;

  /// Create a copy of DutyScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? studentNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _DutyScheduleEntity implements DutyScheduleEntity {
  const _DutyScheduleEntity(
      {this.avatar, this.name, this.studentNumber, this.status});

  @override
  final String? avatar;
  @override
  final String? name;
  @override
  final String? studentNumber;
  @override
  final String? status;

  /// Create a copy of DutyScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyScheduleEntityCopyWith<_DutyScheduleEntity> get copyWith =>
      __$DutyScheduleEntityCopyWithImpl<_DutyScheduleEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyScheduleEntity &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, name, studentNumber, status);

  @override
  String toString() {
    return 'DutyScheduleEntity(avatar: $avatar, name: $name, studentNumber: $studentNumber, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$DutyScheduleEntityCopyWith<$Res>
    implements $DutyScheduleEntityCopyWith<$Res> {
  factory _$DutyScheduleEntityCopyWith(
          _DutyScheduleEntity value, $Res Function(_DutyScheduleEntity) _then) =
      __$DutyScheduleEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? avatar, String? name, String? studentNumber, String? status});
}

/// @nodoc
class __$DutyScheduleEntityCopyWithImpl<$Res>
    implements _$DutyScheduleEntityCopyWith<$Res> {
  __$DutyScheduleEntityCopyWithImpl(this._self, this._then);

  final _DutyScheduleEntity _self;
  final $Res Function(_DutyScheduleEntity) _then;

  /// Create a copy of DutyScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? avatar = freezed,
    Object? name = freezed,
    Object? studentNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_DutyScheduleEntity(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      studentNumber: freezed == studentNumber
          ? _self.studentNumber
          : studentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
