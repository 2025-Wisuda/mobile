// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_room_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApproveRoomBookingModel {
  @JsonKey(name: 'approval_notes')
  String? get approvalNotes;

  /// Create a copy of ApproveRoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApproveRoomBookingModelCopyWith<ApproveRoomBookingModel> get copyWith =>
      _$ApproveRoomBookingModelCopyWithImpl<ApproveRoomBookingModel>(
          this as ApproveRoomBookingModel, _$identity);

  /// Serializes this ApproveRoomBookingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApproveRoomBookingModel &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, approvalNotes);

  @override
  String toString() {
    return 'ApproveRoomBookingModel(approvalNotes: $approvalNotes)';
  }
}

/// @nodoc
abstract mixin class $ApproveRoomBookingModelCopyWith<$Res> {
  factory $ApproveRoomBookingModelCopyWith(ApproveRoomBookingModel value,
          $Res Function(ApproveRoomBookingModel) _then) =
      _$ApproveRoomBookingModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'approval_notes') String? approvalNotes});
}

/// @nodoc
class _$ApproveRoomBookingModelCopyWithImpl<$Res>
    implements $ApproveRoomBookingModelCopyWith<$Res> {
  _$ApproveRoomBookingModelCopyWithImpl(this._self, this._then);

  final ApproveRoomBookingModel _self;
  final $Res Function(ApproveRoomBookingModel) _then;

  /// Create a copy of ApproveRoomBookingModel
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
@JsonSerializable()
class _ApproveRoomBookingModel implements ApproveRoomBookingModel {
  const _ApproveRoomBookingModel(
      {@JsonKey(name: 'approval_notes') this.approvalNotes});
  factory _ApproveRoomBookingModel.fromJson(Map<String, dynamic> json) =>
      _$ApproveRoomBookingModelFromJson(json);

  @override
  @JsonKey(name: 'approval_notes')
  final String? approvalNotes;

  /// Create a copy of ApproveRoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApproveRoomBookingModelCopyWith<_ApproveRoomBookingModel> get copyWith =>
      __$ApproveRoomBookingModelCopyWithImpl<_ApproveRoomBookingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApproveRoomBookingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApproveRoomBookingModel &&
            (identical(other.approvalNotes, approvalNotes) ||
                other.approvalNotes == approvalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, approvalNotes);

  @override
  String toString() {
    return 'ApproveRoomBookingModel(approvalNotes: $approvalNotes)';
  }
}

/// @nodoc
abstract mixin class _$ApproveRoomBookingModelCopyWith<$Res>
    implements $ApproveRoomBookingModelCopyWith<$Res> {
  factory _$ApproveRoomBookingModelCopyWith(_ApproveRoomBookingModel value,
          $Res Function(_ApproveRoomBookingModel) _then) =
      __$ApproveRoomBookingModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'approval_notes') String? approvalNotes});
}

/// @nodoc
class __$ApproveRoomBookingModelCopyWithImpl<$Res>
    implements _$ApproveRoomBookingModelCopyWith<$Res> {
  __$ApproveRoomBookingModelCopyWithImpl(this._self, this._then);

  final _ApproveRoomBookingModel _self;
  final $Res Function(_ApproveRoomBookingModel) _then;

  /// Create a copy of ApproveRoomBookingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? approvalNotes = freezed,
  }) {
    return _then(_ApproveRoomBookingModel(
      approvalNotes: freezed == approvalNotes
          ? _self.approvalNotes
          : approvalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
