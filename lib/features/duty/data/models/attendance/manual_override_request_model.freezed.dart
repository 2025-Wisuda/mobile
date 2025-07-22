// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manual_override_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManualOverrideRequestModel {
  @JsonKey(name: 'action')
  String get action;

  /// Create a copy of ManualOverrideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManualOverrideRequestModelCopyWith<ManualOverrideRequestModel>
      get copyWith =>
          _$ManualOverrideRequestModelCopyWithImpl<ManualOverrideRequestModel>(
              this as ManualOverrideRequestModel, _$identity);

  /// Serializes this ManualOverrideRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManualOverrideRequestModel &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action);

  @override
  String toString() {
    return 'ManualOverrideRequestModel(action: $action)';
  }
}

/// @nodoc
abstract mixin class $ManualOverrideRequestModelCopyWith<$Res> {
  factory $ManualOverrideRequestModelCopyWith(ManualOverrideRequestModel value,
          $Res Function(ManualOverrideRequestModel) _then) =
      _$ManualOverrideRequestModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'action') String action});
}

/// @nodoc
class _$ManualOverrideRequestModelCopyWithImpl<$Res>
    implements $ManualOverrideRequestModelCopyWith<$Res> {
  _$ManualOverrideRequestModelCopyWithImpl(this._self, this._then);

  final ManualOverrideRequestModel _self;
  final $Res Function(ManualOverrideRequestModel) _then;

  /// Create a copy of ManualOverrideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_self.copyWith(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ManualOverrideRequestModel].
extension ManualOverrideRequestModelPatterns on ManualOverrideRequestModel {
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
    TResult Function(_ManualOverrideRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel() when $default != null:
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
    TResult Function(_ManualOverrideRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel():
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
    TResult? Function(_ManualOverrideRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel() when $default != null:
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
    TResult Function(@JsonKey(name: 'action') String action)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel() when $default != null:
        return $default(_that.action);
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
    TResult Function(@JsonKey(name: 'action') String action) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel():
        return $default(_that.action);
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
    TResult? Function(@JsonKey(name: 'action') String action)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ManualOverrideRequestModel() when $default != null:
        return $default(_that.action);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ManualOverrideRequestModel implements ManualOverrideRequestModel {
  const _ManualOverrideRequestModel(
      {@JsonKey(name: 'action') required this.action});
  factory _ManualOverrideRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ManualOverrideRequestModelFromJson(json);

  @override
  @JsonKey(name: 'action')
  final String action;

  /// Create a copy of ManualOverrideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ManualOverrideRequestModelCopyWith<_ManualOverrideRequestModel>
      get copyWith => __$ManualOverrideRequestModelCopyWithImpl<
          _ManualOverrideRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ManualOverrideRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ManualOverrideRequestModel &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action);

  @override
  String toString() {
    return 'ManualOverrideRequestModel(action: $action)';
  }
}

/// @nodoc
abstract mixin class _$ManualOverrideRequestModelCopyWith<$Res>
    implements $ManualOverrideRequestModelCopyWith<$Res> {
  factory _$ManualOverrideRequestModelCopyWith(
          _ManualOverrideRequestModel value,
          $Res Function(_ManualOverrideRequestModel) _then) =
      __$ManualOverrideRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'action') String action});
}

/// @nodoc
class __$ManualOverrideRequestModelCopyWithImpl<$Res>
    implements _$ManualOverrideRequestModelCopyWith<$Res> {
  __$ManualOverrideRequestModelCopyWithImpl(this._self, this._then);

  final _ManualOverrideRequestModel _self;
  final $Res Function(_ManualOverrideRequestModel) _then;

  /// Create a copy of ManualOverrideRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? action = null,
  }) {
    return _then(_ManualOverrideRequestModel(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
