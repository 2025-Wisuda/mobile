// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabScheduleEntity {
  String? get id;
  DateTime? get date;
  String? get startTime;
  String? get endTime;
  String? get type;
  String? get detail;
  String? get createdBy;
  DateTime? get updatedAt;

  /// Create a copy of LabScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabScheduleEntityCopyWith<LabScheduleEntity> get copyWith =>
      _$LabScheduleEntityCopyWithImpl<LabScheduleEntity>(
          this as LabScheduleEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabScheduleEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, date, startTime, endTime,
      type, detail, createdBy, updatedAt);

  @override
  String toString() {
    return 'LabScheduleEntity(id: $id, date: $date, startTime: $startTime, endTime: $endTime, type: $type, detail: $detail, createdBy: $createdBy, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LabScheduleEntityCopyWith<$Res> {
  factory $LabScheduleEntityCopyWith(
          LabScheduleEntity value, $Res Function(LabScheduleEntity) _then) =
      _$LabScheduleEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? type,
      String? detail,
      String? createdBy,
      DateTime? updatedAt});
}

/// @nodoc
class _$LabScheduleEntityCopyWithImpl<$Res>
    implements $LabScheduleEntityCopyWith<$Res> {
  _$LabScheduleEntityCopyWithImpl(this._self, this._then);

  final LabScheduleEntity _self;
  final $Res Function(LabScheduleEntity) _then;

  /// Create a copy of LabScheduleEntity
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

/// Adds pattern-matching-related methods to [LabScheduleEntity].
extension LabScheduleEntityPatterns on LabScheduleEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LabScheduleEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LabScheduleEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LabScheduleEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? type,
            String? detail,
            String? createdBy,
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity() when $default != null:
        return $default(_that.id, _that.date, _that.startTime, _that.endTime,
            _that.type, _that.detail, _that.createdBy, _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? type,
            String? detail,
            String? createdBy,
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity():
        return $default(_that.id, _that.date, _that.startTime, _that.endTime,
            _that.type, _that.detail, _that.createdBy, _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            DateTime? date,
            String? startTime,
            String? endTime,
            String? type,
            String? detail,
            String? createdBy,
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabScheduleEntity() when $default != null:
        return $default(_that.id, _that.date, _that.startTime, _that.endTime,
            _that.type, _that.detail, _that.createdBy, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LabScheduleEntity implements LabScheduleEntity {
  const _LabScheduleEntity(
      {this.id,
      this.date,
      this.startTime,
      this.endTime,
      this.type,
      this.detail,
      this.createdBy,
      this.updatedAt});

  @override
  final String? id;
  @override
  final DateTime? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? type;
  @override
  final String? detail;
  @override
  final String? createdBy;
  @override
  final DateTime? updatedAt;

  /// Create a copy of LabScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabScheduleEntityCopyWith<_LabScheduleEntity> get copyWith =>
      __$LabScheduleEntityCopyWithImpl<_LabScheduleEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabScheduleEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, date, startTime, endTime,
      type, detail, createdBy, updatedAt);

  @override
  String toString() {
    return 'LabScheduleEntity(id: $id, date: $date, startTime: $startTime, endTime: $endTime, type: $type, detail: $detail, createdBy: $createdBy, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LabScheduleEntityCopyWith<$Res>
    implements $LabScheduleEntityCopyWith<$Res> {
  factory _$LabScheduleEntityCopyWith(
          _LabScheduleEntity value, $Res Function(_LabScheduleEntity) _then) =
      __$LabScheduleEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? date,
      String? startTime,
      String? endTime,
      String? type,
      String? detail,
      String? createdBy,
      DateTime? updatedAt});
}

/// @nodoc
class __$LabScheduleEntityCopyWithImpl<$Res>
    implements _$LabScheduleEntityCopyWith<$Res> {
  __$LabScheduleEntityCopyWithImpl(this._self, this._then);

  final _LabScheduleEntity _self;
  final $Res Function(_LabScheduleEntity) _then;

  /// Create a copy of LabScheduleEntity
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
    return _then(_LabScheduleEntity(
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
