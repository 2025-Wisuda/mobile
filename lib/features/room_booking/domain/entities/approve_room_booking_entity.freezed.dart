// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_room_booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApproveRoomBookingEntity {
  String? get approvalNotes;

  /// Create a copy of ApproveRoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApproveRoomBookingEntityCopyWith<ApproveRoomBookingEntity> get copyWith =>
      _$ApproveRoomBookingEntityCopyWithImpl<ApproveRoomBookingEntity>(
          this as ApproveRoomBookingEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApproveRoomBookingEntity &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approvalNotes);

  @override
  String toString() {
    return 'ApproveRoomBookingEntity(approvalNotes: $approvalNotes)';
  }
}

/// @nodoc
abstract mixin class $ApproveRoomBookingEntityCopyWith<$Res> {
  factory $ApproveRoomBookingEntityCopyWith(ApproveRoomBookingEntity value,
          $Res Function(ApproveRoomBookingEntity) _then) =
      _$ApproveRoomBookingEntityCopyWithImpl;
  @useResult
  $Res call({String? approvalNotes});
}

/// @nodoc
class _$ApproveRoomBookingEntityCopyWithImpl<$Res>
    implements $ApproveRoomBookingEntityCopyWith<$Res> {
  _$ApproveRoomBookingEntityCopyWithImpl(this._self, this._then);

  final ApproveRoomBookingEntity _self;
  final $Res Function(ApproveRoomBookingEntity) _then;

  /// Create a copy of ApproveRoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvalNotes = freezed,
  }) {
    return _then(_self.copyWith(
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ApproveRoomBookingEntity implements ApproveRoomBookingEntity {
  const _ApproveRoomBookingEntity({this.approvalNotes});

  @override
  final String? approvalNotes;

  /// Create a copy of ApproveRoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApproveRoomBookingEntityCopyWith<_ApproveRoomBookingEntity> get copyWith =>
      __$ApproveRoomBookingEntityCopyWithImpl<_ApproveRoomBookingEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApproveRoomBookingEntity &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approvalNotes);

  @override
  String toString() {
    return 'ApproveRoomBookingEntity(approvalNotes: $approvalNotes)';
  }
}

/// @nodoc
abstract mixin class _$ApproveRoomBookingEntityCopyWith<$Res>
    implements $ApproveRoomBookingEntityCopyWith<$Res> {
  factory _$ApproveRoomBookingEntityCopyWith(_ApproveRoomBookingEntity value,
          $Res Function(_ApproveRoomBookingEntity) _then) =
      __$ApproveRoomBookingEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? approvalNotes});
}

/// @nodoc
class __$ApproveRoomBookingEntityCopyWithImpl<$Res>
    implements _$ApproveRoomBookingEntityCopyWith<$Res> {
  __$ApproveRoomBookingEntityCopyWithImpl(this._self, this._then);

  final _ApproveRoomBookingEntity _self;
  final $Res Function(_ApproveRoomBookingEntity) _then;

  /// Create a copy of ApproveRoomBookingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? approvalNotes = freezed,
  }) {
    return _then(_ApproveRoomBookingEntity(
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
