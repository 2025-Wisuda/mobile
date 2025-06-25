// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_availability_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabAvailabilityEntity {
  String? get startTime;
  String? get endTime;

  /// Create a copy of LabAvailabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabAvailabilityEntityCopyWith<LabAvailabilityEntity> get copyWith =>
      _$LabAvailabilityEntityCopyWithImpl<LabAvailabilityEntity>(
          this as LabAvailabilityEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabAvailabilityEntity &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'LabAvailabilityEntity(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class $LabAvailabilityEntityCopyWith<$Res> {
  factory $LabAvailabilityEntityCopyWith(LabAvailabilityEntity value,
          $Res Function(LabAvailabilityEntity) _then) =
      _$LabAvailabilityEntityCopyWithImpl;
  @useResult
  $Res call({String? startTime, String? endTime});
}

/// @nodoc
class _$LabAvailabilityEntityCopyWithImpl<$Res>
    implements $LabAvailabilityEntityCopyWith<$Res> {
  _$LabAvailabilityEntityCopyWithImpl(this._self, this._then);

  final LabAvailabilityEntity _self;
  final $Res Function(LabAvailabilityEntity) _then;

  /// Create a copy of LabAvailabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_self.copyWith(
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _LabAvailabilityEntity implements LabAvailabilityEntity {
  const _LabAvailabilityEntity({this.startTime, this.endTime});

  @override
  final String? startTime;
  @override
  final String? endTime;

  /// Create a copy of LabAvailabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabAvailabilityEntityCopyWith<_LabAvailabilityEntity> get copyWith =>
      __$LabAvailabilityEntityCopyWithImpl<_LabAvailabilityEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabAvailabilityEntity &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'LabAvailabilityEntity(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class _$LabAvailabilityEntityCopyWith<$Res>
    implements $LabAvailabilityEntityCopyWith<$Res> {
  factory _$LabAvailabilityEntityCopyWith(_LabAvailabilityEntity value,
          $Res Function(_LabAvailabilityEntity) _then) =
      __$LabAvailabilityEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? startTime, String? endTime});
}

/// @nodoc
class __$LabAvailabilityEntityCopyWithImpl<$Res>
    implements _$LabAvailabilityEntityCopyWith<$Res> {
  __$LabAvailabilityEntityCopyWithImpl(this._self, this._then);

  final _LabAvailabilityEntity _self;
  final $Res Function(_LabAvailabilityEntity) _then;

  /// Create a copy of LabAvailabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_LabAvailabilityEntity(
      startTime: freezed == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
