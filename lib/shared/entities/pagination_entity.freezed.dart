// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationEntity {
  String? get next;
  String? get previous;
  int? get totalItems;
  int? get totalPages;
  int? get currentPage;
  int? get pageSize;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationEntityCopyWith<PaginationEntity> get copyWith =>
      _$PaginationEntityCopyWithImpl<PaginationEntity>(
          this as PaginationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationEntity &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, next, previous, totalItems,
      totalPages, currentPage, pageSize);

  @override
  String toString() {
    return 'PaginationEntity(next: $next, previous: $previous, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class $PaginationEntityCopyWith<$Res> {
  factory $PaginationEntityCopyWith(
          PaginationEntity value, $Res Function(PaginationEntity) _then) =
      _$PaginationEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? next,
      String? previous,
      int? totalItems,
      int? totalPages,
      int? currentPage,
      int? pageSize});
}

/// @nodoc
class _$PaginationEntityCopyWithImpl<$Res>
    implements $PaginationEntityCopyWith<$Res> {
  _$PaginationEntityCopyWithImpl(this._self, this._then);

  final PaginationEntity _self;
  final $Res Function(PaginationEntity) _then;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_self.copyWith(
      next: freezed == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _self.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItems: freezed == totalItems
          ? _self.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginationEntity].
extension PaginationEntityPatterns on PaginationEntity {
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
    TResult Function(_PaginationEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity() when $default != null:
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
    TResult Function(_PaginationEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity():
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
    TResult? Function(_PaginationEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity() when $default != null:
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
    TResult Function(String? next, String? previous, int? totalItems,
            int? totalPages, int? currentPage, int? pageSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity() when $default != null:
        return $default(_that.next, _that.previous, _that.totalItems,
            _that.totalPages, _that.currentPage, _that.pageSize);
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
    TResult Function(String? next, String? previous, int? totalItems,
            int? totalPages, int? currentPage, int? pageSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity():
        return $default(_that.next, _that.previous, _that.totalItems,
            _that.totalPages, _that.currentPage, _that.pageSize);
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
    TResult? Function(String? next, String? previous, int? totalItems,
            int? totalPages, int? currentPage, int? pageSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationEntity() when $default != null:
        return $default(_that.next, _that.previous, _that.totalItems,
            _that.totalPages, _that.currentPage, _that.pageSize);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginationEntity implements PaginationEntity {
  const _PaginationEntity(
      {required this.next,
      required this.previous,
      required this.totalItems,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? totalItems;
  @override
  final int? totalPages;
  @override
  final int? currentPage;
  @override
  final int? pageSize;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationEntityCopyWith<_PaginationEntity> get copyWith =>
      __$PaginationEntityCopyWithImpl<_PaginationEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationEntity &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, next, previous, totalItems,
      totalPages, currentPage, pageSize);

  @override
  String toString() {
    return 'PaginationEntity(next: $next, previous: $previous, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class _$PaginationEntityCopyWith<$Res>
    implements $PaginationEntityCopyWith<$Res> {
  factory _$PaginationEntityCopyWith(
          _PaginationEntity value, $Res Function(_PaginationEntity) _then) =
      __$PaginationEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? next,
      String? previous,
      int? totalItems,
      int? totalPages,
      int? currentPage,
      int? pageSize});
}

/// @nodoc
class __$PaginationEntityCopyWithImpl<$Res>
    implements _$PaginationEntityCopyWith<$Res> {
  __$PaginationEntityCopyWithImpl(this._self, this._then);

  final _PaginationEntity _self;
  final $Res Function(_PaginationEntity) _then;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_PaginationEntity(
      next: freezed == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _self.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItems: freezed == totalItems
          ? _self.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
