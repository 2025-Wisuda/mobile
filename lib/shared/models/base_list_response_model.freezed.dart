// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseListResponseModel<T> {
  String? get status;
  String? get message;
  List<T>? get data;
  MetaModel? get meta;

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseListResponseModelCopyWith<T, BaseListResponseModel<T>> get copyWith =>
      _$BaseListResponseModelCopyWithImpl<T, BaseListResponseModel<T>>(
          this as BaseListResponseModel<T>, _$identity);

  /// Serializes this BaseListResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseListResponseModel<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(data), meta);

  @override
  String toString() {
    return 'BaseListResponseModel<$T>(status: $status, message: $message, data: $data, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $BaseListResponseModelCopyWith<T, $Res> {
  factory $BaseListResponseModelCopyWith(BaseListResponseModel<T> value,
          $Res Function(BaseListResponseModel<T>) _then) =
      _$BaseListResponseModelCopyWithImpl;
  @useResult
  $Res call({String? status, String? message, List<T>? data, MetaModel? meta});

  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BaseListResponseModelCopyWithImpl<T, $Res>
    implements $BaseListResponseModelCopyWith<T, $Res> {
  _$BaseListResponseModelCopyWithImpl(this._self, this._then);

  final BaseListResponseModel<T> _self;
  final $Res Function(BaseListResponseModel<T>) _then;

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
    ));
  }

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BaseListResponseModel].
extension BaseListResponseModelPatterns<T> on BaseListResponseModel<T> {
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
    TResult Function(_BaseListResponseModel<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel() when $default != null:
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
    TResult Function(_BaseListResponseModel<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel():
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
    TResult? Function(_BaseListResponseModel<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel() when $default != null:
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
            String? status, String? message, List<T>? data, MetaModel? meta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel() when $default != null:
        return $default(_that.status, _that.message, _that.data, _that.meta);
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
            String? status, String? message, List<T>? data, MetaModel? meta)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel():
        return $default(_that.status, _that.message, _that.data, _that.meta);
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
            String? status, String? message, List<T>? data, MetaModel? meta)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseListResponseModel() when $default != null:
        return $default(_that.status, _that.message, _that.data, _that.meta);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _BaseListResponseModel<T> implements BaseListResponseModel<T> {
  const _BaseListResponseModel(
      {this.status, this.message, final List<T>? data, this.meta})
      : _data = data;
  factory _BaseListResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseListResponseModelFromJson(json, fromJsonT);

  @override
  final String? status;
  @override
  final String? message;
  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MetaModel? meta;

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BaseListResponseModelCopyWith<T, _BaseListResponseModel<T>> get copyWith =>
      __$BaseListResponseModelCopyWithImpl<T, _BaseListResponseModel<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$BaseListResponseModelToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseListResponseModel<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_data), meta);

  @override
  String toString() {
    return 'BaseListResponseModel<$T>(status: $status, message: $message, data: $data, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$BaseListResponseModelCopyWith<T, $Res>
    implements $BaseListResponseModelCopyWith<T, $Res> {
  factory _$BaseListResponseModelCopyWith(_BaseListResponseModel<T> value,
          $Res Function(_BaseListResponseModel<T>) _then) =
      __$BaseListResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? status, String? message, List<T>? data, MetaModel? meta});

  @override
  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class __$BaseListResponseModelCopyWithImpl<T, $Res>
    implements _$BaseListResponseModelCopyWith<T, $Res> {
  __$BaseListResponseModelCopyWithImpl(this._self, this._then);

  final _BaseListResponseModel<T> _self;
  final $Res Function(_BaseListResponseModel<T>) _then;

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_BaseListResponseModel<T>(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
    ));
  }

  /// Create a copy of BaseListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
