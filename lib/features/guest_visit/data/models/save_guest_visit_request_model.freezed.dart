// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @JsonKey(name: 'date', includeIfNull: false)
  String? get date;
  @JsonKey(name: 'start_time', includeIfNull: false)
  String? get startTime;
  @JsonKey(name: 'end_time', includeIfNull: false)
  String? get endTime;
  @JsonKey(name: 'purpose', includeIfNull: false)
  String? get purpose;

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
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose);

  @override
  String toString() {
    return 'SaveGuestVisitRequestModel(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose)';
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
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'purpose', includeIfNull: false) String? purpose});
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

/// Adds pattern-matching-related methods to [SaveGuestVisitRequestModel].
extension SaveGuestVisitRequestModelPatterns on SaveGuestVisitRequestModel {
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
    TResult Function(_SaveGuestVisitRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel() when $default != null:
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
    TResult Function(_SaveGuestVisitRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel():
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
    TResult? Function(_SaveGuestVisitRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel() when $default != null:
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
            @JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'identity_type', includeIfNull: false)
            String? identityType,
            @JsonKey(name: 'identity_number', includeIfNull: false)
            String? identityNumber,
            @JsonKey(name: 'date', includeIfNull: false) String? date,
            @JsonKey(name: 'start_time', includeIfNull: false)
            String? startTime,
            @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
            @JsonKey(name: 'purpose', includeIfNull: false) String? purpose)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel() when $default != null:
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
            @JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'identity_type', includeIfNull: false)
            String? identityType,
            @JsonKey(name: 'identity_number', includeIfNull: false)
            String? identityNumber,
            @JsonKey(name: 'date', includeIfNull: false) String? date,
            @JsonKey(name: 'start_time', includeIfNull: false)
            String? startTime,
            @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
            @JsonKey(name: 'purpose', includeIfNull: false) String? purpose)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel():
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
            @JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
            @JsonKey(name: 'name', includeIfNull: false) String? name,
            @JsonKey(name: 'identity_type', includeIfNull: false)
            String? identityType,
            @JsonKey(name: 'identity_number', includeIfNull: false)
            String? identityNumber,
            @JsonKey(name: 'date', includeIfNull: false) String? date,
            @JsonKey(name: 'start_time', includeIfNull: false)
            String? startTime,
            @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
            @JsonKey(name: 'purpose', includeIfNull: false) String? purpose)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaveGuestVisitRequestModel() when $default != null:
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
@JsonSerializable()
class _SaveGuestVisitRequestModel implements SaveGuestVisitRequestModel {
  const _SaveGuestVisitRequestModel(
      {@JsonKey(name: 'visitor', includeIfNull: false) this.visitor,
      @JsonKey(name: 'name', includeIfNull: false) this.name,
      @JsonKey(name: 'identity_type', includeIfNull: false) this.identityType,
      @JsonKey(name: 'identity_number', includeIfNull: false)
      this.identityNumber,
      @JsonKey(name: 'date', includeIfNull: false) this.date,
      @JsonKey(name: 'start_time', includeIfNull: false) this.startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) this.endTime,
      @JsonKey(name: 'purpose', includeIfNull: false) this.purpose});
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
  @JsonKey(name: 'date', includeIfNull: false)
  final String? date;
  @override
  @JsonKey(name: 'start_time', includeIfNull: false)
  final String? startTime;
  @override
  @JsonKey(name: 'end_time', includeIfNull: false)
  final String? endTime;
  @override
  @JsonKey(name: 'purpose', includeIfNull: false)
  final String? purpose;

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
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visitor, name, identityType,
      identityNumber, date, startTime, endTime, purpose);

  @override
  String toString() {
    return 'SaveGuestVisitRequestModel(visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose)';
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
      @JsonKey(name: 'date', includeIfNull: false) String? date,
      @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
      @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
      @JsonKey(name: 'purpose', includeIfNull: false) String? purpose});
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
    ));
  }
}

// dart format on
