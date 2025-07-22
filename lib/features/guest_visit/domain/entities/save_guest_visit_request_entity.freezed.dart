// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  String? get visitor;
  String? get name;
  String? get identityType;
  String? get identityNumber;
  String? get date;
  String? get startTime;
  String? get endTime;
  String? get purpose;

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
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose);

  @override
  String toString() {
    return 'SaveGuestVisitRequestEntity(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose)';
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
      String? date,
      String? startTime,
      String? endTime,
      String? purpose});
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
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [SaveGuestVisitRequestEntity].
extension SaveGuestVisitRequestEntityPatterns on SaveGuestVisitRequestEntity {
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
    TResult Function(_SaveGuestVisitRequestEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity() when $default != null:
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
    TResult Function(_SaveGuestVisitRequestEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity():
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
    TResult? Function(_SaveGuestVisitRequestEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity() when $default != null:
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
            String? visitor,
            String? name,
            String? identityType,
            String? identityNumber,
            String? date,
            String? startTime,
            String? endTime,
            String? purpose)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity() when $default != null:
        return $default(
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose);
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
            String? visitor,
            String? name,
            String? identityType,
            String? identityNumber,
            String? date,
            String? startTime,
            String? endTime,
            String? purpose)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity():
        return $default(
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose);
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
            String? visitor,
            String? name,
            String? identityType,
            String? identityNumber,
            String? date,
            String? startTime,
            String? endTime,
            String? purpose)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestEntity() when $default != null:
        return $default(
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SaveGuestVisitRequestEntity implements SaveGuestVisitRequestEntity {
  const _SaveGuestVisitRequestEntity(
      {this.visitor,
      this.name,
      this.identityType,
      this.identityNumber,
      this.date,
      this.startTime,
      this.endTime,
      this.purpose});

  @override
  final String? visitor;
  @override
  final String? name;
  @override
  final String? identityType;
  @override
  final String? identityNumber;
  @override
  final String? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? purpose;

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
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose);

  @override
  String toString() {
    return 'SaveGuestVisitRequestEntity(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose)';
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
      String? date,
      String? startTime,
      String? endTime,
      String? purpose});
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
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? purpose = freezed,
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
    ));
  }
}

// dart format on
