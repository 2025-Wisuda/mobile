// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_visit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestVisitModel {
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'visitor')
  String? get visitor;
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'identity_type')
  String? get identityType;
  @JsonKey(name: 'identity_number')
  String? get identityNumber;
  @JsonKey(name: 'date')
  String? get date;
  @JsonKey(name: 'start_time')
  String? get startTime;
  @JsonKey(name: 'end_time')
  String? get endTime;
  @JsonKey(name: 'purpose')
  String? get purpose;
  @JsonKey(name: 'name_display')
  String? get nameDisplay;
  @JsonKey(name: 'identity_display')
  String? get identityDisplay;
  @JsonKey(name: 'can_edit')
  bool? get canEdit;
  @JsonKey(name: 'created_by')
  UserModel? get createdBy;
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GuestVisitModelCopyWith<GuestVisitModel> get copyWith =>
      _$GuestVisitModelCopyWithImpl<GuestVisitModel>(
          this as GuestVisitModel, _$identity);

  /// Serializes this GuestVisitModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GuestVisitModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      nameDisplay,
      identityDisplay,
      canEdit,
      createdBy,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'GuestVisitModel(id: $id, visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, nameDisplay: $nameDisplay, identityDisplay: $identityDisplay, canEdit: $canEdit, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $GuestVisitModelCopyWith<$Res> {
  factory $GuestVisitModelCopyWith(
          GuestVisitModel value, $Res Function(GuestVisitModel) _then) =
      _$GuestVisitModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'visitor') String? visitor,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'identity_type') String? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'name_display') String? nameDisplay,
      @JsonKey(name: 'identity_display') String? identityDisplay,
      @JsonKey(name: 'can_edit') bool? canEdit,
      @JsonKey(name: 'created_by') UserModel? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$GuestVisitModelCopyWithImpl<$Res>
    implements $GuestVisitModelCopyWith<$Res> {
  _$GuestVisitModelCopyWithImpl(this._self, this._then);

  final GuestVisitModel _self;
  final $Res Function(GuestVisitModel) _then;

  /// Create a copy of GuestVisitModel
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
              as UserModel?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GuestVisitModel].
extension GuestVisitModelPatterns on GuestVisitModel {
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
    TResult Function(_GuestVisitModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel() when $default != null:
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
    TResult Function(_GuestVisitModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel():
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
    TResult? Function(_GuestVisitModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel() when $default != null:
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'visitor') String? visitor,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'identity_type') String? identityType,
            @JsonKey(name: 'identity_number') String? identityNumber,
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'purpose') String? purpose,
            @JsonKey(name: 'name_display') String? nameDisplay,
            @JsonKey(name: 'identity_display') String? identityDisplay,
            @JsonKey(name: 'can_edit') bool? canEdit,
            @JsonKey(name: 'created_by') UserModel? createdBy,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel() when $default != null:
        return $default(
            _that.id,
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose,
            _that.nameDisplay,
            _that.identityDisplay,
            _that.canEdit,
            _that.createdBy,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'visitor') String? visitor,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'identity_type') String? identityType,
            @JsonKey(name: 'identity_number') String? identityNumber,
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'purpose') String? purpose,
            @JsonKey(name: 'name_display') String? nameDisplay,
            @JsonKey(name: 'identity_display') String? identityDisplay,
            @JsonKey(name: 'can_edit') bool? canEdit,
            @JsonKey(name: 'created_by') UserModel? createdBy,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'updated_at') String? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel():
        return $default(
            _that.id,
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose,
            _that.nameDisplay,
            _that.identityDisplay,
            _that.canEdit,
            _that.createdBy,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'id') String? id,
            @JsonKey(name: 'visitor') String? visitor,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'identity_type') String? identityType,
            @JsonKey(name: 'identity_number') String? identityNumber,
            @JsonKey(name: 'date') String? date,
            @JsonKey(name: 'start_time') String? startTime,
            @JsonKey(name: 'end_time') String? endTime,
            @JsonKey(name: 'purpose') String? purpose,
            @JsonKey(name: 'name_display') String? nameDisplay,
            @JsonKey(name: 'identity_display') String? identityDisplay,
            @JsonKey(name: 'can_edit') bool? canEdit,
            @JsonKey(name: 'created_by') UserModel? createdBy,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GuestVisitModel() when $default != null:
        return $default(
            _that.id,
            _that.visitor,
            _that.name,
            _that.identityType,
            _that.identityNumber,
            _that.date,
            _that.startTime,
            _that.endTime,
            _that.purpose,
            _that.nameDisplay,
            _that.identityDisplay,
            _that.canEdit,
            _that.createdBy,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GuestVisitModel implements GuestVisitModel {
  const _GuestVisitModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'visitor') this.visitor,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'identity_type') this.identityType,
      @JsonKey(name: 'identity_number') this.identityNumber,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'purpose') this.purpose,
      @JsonKey(name: 'name_display') this.nameDisplay,
      @JsonKey(name: 'identity_display') this.identityDisplay,
      @JsonKey(name: 'can_edit') this.canEdit,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});
  factory _GuestVisitModel.fromJson(Map<String, dynamic> json) =>
      _$GuestVisitModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'visitor')
  final String? visitor;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'identity_type')
  final String? identityType;
  @override
  @JsonKey(name: 'identity_number')
  final String? identityNumber;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'purpose')
  final String? purpose;
  @override
  @JsonKey(name: 'name_display')
  final String? nameDisplay;
  @override
  @JsonKey(name: 'identity_display')
  final String? identityDisplay;
  @override
  @JsonKey(name: 'can_edit')
  final bool? canEdit;
  @override
  @JsonKey(name: 'created_by')
  final UserModel? createdBy;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GuestVisitModelCopyWith<_GuestVisitModel> get copyWith =>
      __$GuestVisitModelCopyWithImpl<_GuestVisitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GuestVisitModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuestVisitModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      nameDisplay,
      identityDisplay,
      canEdit,
      createdBy,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'GuestVisitModel(id: $id, visitor: $visitor, name: $name, identityType: $identityType, identityNumber: $identityNumber, date: $date, startTime: $startTime, endTime: $endTime, purpose: $purpose, nameDisplay: $nameDisplay, identityDisplay: $identityDisplay, canEdit: $canEdit, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$GuestVisitModelCopyWith<$Res>
    implements $GuestVisitModelCopyWith<$Res> {
  factory _$GuestVisitModelCopyWith(
          _GuestVisitModel value, $Res Function(_GuestVisitModel) _then) =
      __$GuestVisitModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'visitor') String? visitor,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'identity_type') String? identityType,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'purpose') String? purpose,
      @JsonKey(name: 'name_display') String? nameDisplay,
      @JsonKey(name: 'identity_display') String? identityDisplay,
      @JsonKey(name: 'can_edit') bool? canEdit,
      @JsonKey(name: 'created_by') UserModel? createdBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$GuestVisitModelCopyWithImpl<$Res>
    implements _$GuestVisitModelCopyWith<$Res> {
  __$GuestVisitModelCopyWithImpl(this._self, this._then);

  final _GuestVisitModel _self;
  final $Res Function(_GuestVisitModel) _then;

  /// Create a copy of GuestVisitModel
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
    Object? nameDisplay = freezed,
    Object? identityDisplay = freezed,
    Object? canEdit = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_GuestVisitModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as UserModel?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of GuestVisitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.createdBy!, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
