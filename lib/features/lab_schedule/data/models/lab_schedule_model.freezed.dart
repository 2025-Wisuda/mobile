// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabScheduleModel {
  @JsonKey(name: 'id', includeIfNull: false)
  String? get id;
  @JsonKey(name: 'date', includeIfNull: false)
  DateTime? get date;
  @JsonKey(name: 'start_time', includeIfNull: false)
  String? get startTime;
  @JsonKey(name: 'end_time', includeIfNull: false)
  String? get endTime;
  @JsonKey(name: 'type', includeIfNull: false)
  String? get type;
  @JsonKey(name: 'detail', includeIfNull: false)
  String? get detail;
  @JsonKey(name: 'created_by', includeIfNull: false)
  String? get createdBy;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  DateTime? get updatedAt;

  /// Create a copy of LabScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabScheduleModelCopyWith<LabScheduleModel> get copyWith =>
      _$LabScheduleModelCopyWithImpl<LabScheduleModel>(
          this as LabScheduleModel, _$identity);

  /// Serializes this LabScheduleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabScheduleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, startTime, endTime,
      type, detail, createdBy, updatedAt);

  @override
  String toString() {
    return 'LabScheduleModel(id: $id, date: $date, startTime: $startTime, endTime: $endTime, type: $type, detail: $detail, createdBy: $createdBy, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LabScheduleModelCopyWith<$Res> {
  factory $LabScheduleModelCopyWith(
          LabScheduleModel value, $Res Function(LabScheduleModel) _then) =
      _$LabScheduleModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String? id,
      @JsonKey(name: 'date', includeIfNull: false) DateTime? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'type', includeIfNull: false) String? type,
      @JsonKey(name: 'detail', includeIfNull: false) String? detail,
      @JsonKey(name: 'created_by', includeIfNull: false) String? createdBy,
      @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt});
}

/// @nodoc
class _$LabScheduleModelCopyWithImpl<$Res>
    implements $LabScheduleModelCopyWith<$Res> {
  _$LabScheduleModelCopyWithImpl(this._self, this._then);

  final LabScheduleModel _self;
  final $Res Function(LabScheduleModel) _then;

  /// Create a copy of LabScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? type = freezed,
    Object? detail = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LabScheduleModel implements LabScheduleModel {
  const _LabScheduleModel(
      {@JsonKey(name: 'id', includeIfNull: false) this.id,
      @JsonKey(name: 'date', includeIfNull: false) this.date,
      @JsonKey(name: 'start_time', includeIfNull: false) this.startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) this.endTime,
      @JsonKey(name: 'type', includeIfNull: false) this.type,
      @JsonKey(name: 'detail', includeIfNull: false) this.detail,
      @JsonKey(name: 'created_by', includeIfNull: false) this.createdBy,
      @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt});
  factory _LabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$LabScheduleModelFromJson(json);

  @override
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @override
  @JsonKey(name: 'start_time', includeIfNull: false)
  final String? startTime;
  @override
  @JsonKey(name: 'end_time', includeIfNull: false)
  final String? endTime;
  @override
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @override
  @JsonKey(name: 'detail', includeIfNull: false)
  final String? detail;
  @override
  @JsonKey(name: 'created_by', includeIfNull: false)
  final String? createdBy;
  @override
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime? updatedAt;

  /// Create a copy of LabScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabScheduleModelCopyWith<_LabScheduleModel> get copyWith =>
      __$LabScheduleModelCopyWithImpl<_LabScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LabScheduleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabScheduleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, startTime, endTime,
      type, detail, createdBy, updatedAt);

  @override
  String toString() {
    return 'LabScheduleModel(id: $id, date: $date, startTime: $startTime, endTime: $endTime, type: $type, detail: $detail, createdBy: $createdBy, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LabScheduleModelCopyWith<$Res>
    implements $LabScheduleModelCopyWith<$Res> {
  factory _$LabScheduleModelCopyWith(
          _LabScheduleModel value, $Res Function(_LabScheduleModel) _then) =
      __$LabScheduleModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String? id,
      @JsonKey(name: 'date', includeIfNull: false) DateTime? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'type', includeIfNull: false) String? type,
      @JsonKey(name: 'detail', includeIfNull: false) String? detail,
      @JsonKey(name: 'created_by', includeIfNull: false) String? createdBy,
      @JsonKey(name: 'updated_at', includeIfNull: false) DateTime? updatedAt});
}

/// @nodoc
class __$LabScheduleModelCopyWithImpl<$Res>
    implements _$LabScheduleModelCopyWith<$Res> {
  __$LabScheduleModelCopyWithImpl(this._self, this._then);

  final _LabScheduleModel _self;
  final $Res Function(_LabScheduleModel) _then;

  /// Create a copy of LabScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? type = freezed,
    Object? detail = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_LabScheduleModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
