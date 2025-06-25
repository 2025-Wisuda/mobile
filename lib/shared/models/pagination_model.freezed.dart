// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationModel {
  @JsonKey(name: 'next')
  String? get next;
  @JsonKey(name: 'previous')
  String? get previous;
  @JsonKey(name: 'total_items')
  int? get totalItems;
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'page_size')
  int? get pageSize;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      _$PaginationModelCopyWithImpl<PaginationModel>(
          this as PaginationModel, _$identity);

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous, totalItems,
      totalPages, currentPage, pageSize);

  @override
  String toString() {
    return 'PaginationModel(next: $next, previous: $previous, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) _then) =
      _$PaginationModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'page_size') int? pageSize});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._self, this._then);

  final PaginationModel _self;
  final $Res Function(PaginationModel) _then;

  /// Create a copy of PaginationModel
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

/// @nodoc
@JsonSerializable()
class _PaginationModel implements PaginationModel {
  const _PaginationModel(
      {@JsonKey(name: 'next') this.next,
      @JsonKey(name: 'previous') this.previous,
      @JsonKey(name: 'total_items') this.totalItems,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'page_size') this.pageSize});
  factory _PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  @override
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationModelCopyWith<_PaginationModel> get copyWith =>
      __$PaginationModelCopyWithImpl<_PaginationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous, totalItems,
      totalPages, currentPage, pageSize);

  @override
  String toString() {
    return 'PaginationModel(next: $next, previous: $previous, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class _$PaginationModelCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$PaginationModelCopyWith(
          _PaginationModel value, $Res Function(_PaginationModel) _then) =
      __$PaginationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'page_size') int? pageSize});
}

/// @nodoc
class __$PaginationModelCopyWithImpl<$Res>
    implements _$PaginationModelCopyWith<$Res> {
  __$PaginationModelCopyWithImpl(this._self, this._then);

  final _PaginationModel _self;
  final $Res Function(_PaginationModel) _then;

  /// Create a copy of PaginationModel
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
    return _then(_PaginationModel(
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
