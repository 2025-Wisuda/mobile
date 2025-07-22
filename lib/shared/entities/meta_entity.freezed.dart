// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetaEntity {
  PaginationEntity? get pagination;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      _$MetaEntityCopyWithImpl<MetaEntity>(this as MetaEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MetaEntity &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagination);

  @override
  String toString() {
    return 'MetaEntity(pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
          MetaEntity value, $Res Function(MetaEntity) _then) =
      _$MetaEntityCopyWithImpl;
  @useResult
  $Res call({PaginationEntity? pagination});

  $PaginationEntityCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res> implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._self, this._then);

  final MetaEntity _self;
  final $Res Function(MetaEntity) _then;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_self.copyWith(
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationEntity?,
    ));
  }

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationEntityCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationEntityCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MetaEntity].
extension MetaEntityPatterns on MetaEntity {
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
    TResult Function(_MetaEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MetaEntity() when $default != null:
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
    TResult Function(_MetaEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetaEntity():
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
    TResult? Function(_MetaEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetaEntity() when $default != null:
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
    TResult Function(PaginationEntity? pagination)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MetaEntity() when $default != null:
        return $default(_that.pagination);
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
    TResult Function(PaginationEntity? pagination) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetaEntity():
        return $default(_that.pagination);
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
    TResult? Function(PaginationEntity? pagination)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetaEntity() when $default != null:
        return $default(_that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MetaEntity implements MetaEntity {
  const _MetaEntity({this.pagination});

  @override
  final PaginationEntity? pagination;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetaEntityCopyWith<_MetaEntity> get copyWith =>
      __$MetaEntityCopyWithImpl<_MetaEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaEntity &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagination);

  @override
  String toString() {
    return 'MetaEntity(pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$MetaEntityCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$MetaEntityCopyWith(
          _MetaEntity value, $Res Function(_MetaEntity) _then) =
      __$MetaEntityCopyWithImpl;
  @override
  @useResult
  $Res call({PaginationEntity? pagination});

  @override
  $PaginationEntityCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$MetaEntityCopyWithImpl<$Res> implements _$MetaEntityCopyWith<$Res> {
  __$MetaEntityCopyWithImpl(this._self, this._then);

  final _MetaEntity _self;
  final $Res Function(_MetaEntity) _then;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_MetaEntity(
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationEntity?,
    ));
  }

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationEntityCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationEntityCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

// dart format on
