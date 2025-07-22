// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_attendance_statistics_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyAttendanceStatisticsEntity {
  AttendanceStatisticsSummaryEntity get summary;
  List<AttendanceStatusBreakdownEntity> get statusBreakdown;
  List<AttendanceDailyTrendEntity> get dailyTrends;
  List<AttendanceAssistantPerformanceEntity> get assistantPerformance;
  AttendanceStatisticsFiltersEntity get filters;

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyAttendanceStatisticsEntityCopyWith<DutyAttendanceStatisticsEntity>
      get copyWith => _$DutyAttendanceStatisticsEntityCopyWithImpl<
              DutyAttendanceStatisticsEntity>(
          this as DutyAttendanceStatisticsEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyAttendanceStatisticsEntity &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other.statusBreakdown, statusBreakdown) &&
            const DeepCollectionEquality()
                .equals(other.dailyTrends, dailyTrends) &&
            const DeepCollectionEquality()
                .equals(other.assistantPerformance, assistantPerformance) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      summary,
      const DeepCollectionEquality().hash(statusBreakdown),
      const DeepCollectionEquality().hash(dailyTrends),
      const DeepCollectionEquality().hash(assistantPerformance),
      filters);

  @override
  String toString() {
    return 'DutyAttendanceStatisticsEntity(summary: $summary, statusBreakdown: $statusBreakdown, dailyTrends: $dailyTrends, assistantPerformance: $assistantPerformance, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class $DutyAttendanceStatisticsEntityCopyWith<$Res> {
  factory $DutyAttendanceStatisticsEntityCopyWith(
          DutyAttendanceStatisticsEntity value,
          $Res Function(DutyAttendanceStatisticsEntity) _then) =
      _$DutyAttendanceStatisticsEntityCopyWithImpl;
  @useResult
  $Res call(
      {AttendanceStatisticsSummaryEntity summary,
      List<AttendanceStatusBreakdownEntity> statusBreakdown,
      List<AttendanceDailyTrendEntity> dailyTrends,
      List<AttendanceAssistantPerformanceEntity> assistantPerformance,
      AttendanceStatisticsFiltersEntity filters});

  $AttendanceStatisticsSummaryEntityCopyWith<$Res> get summary;
  $AttendanceStatisticsFiltersEntityCopyWith<$Res> get filters;
}

/// @nodoc
class _$DutyAttendanceStatisticsEntityCopyWithImpl<$Res>
    implements $DutyAttendanceStatisticsEntityCopyWith<$Res> {
  _$DutyAttendanceStatisticsEntityCopyWithImpl(this._self, this._then);

  final DutyAttendanceStatisticsEntity _self;
  final $Res Function(DutyAttendanceStatisticsEntity) _then;

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? statusBreakdown = null,
    Object? dailyTrends = null,
    Object? assistantPerformance = null,
    Object? filters = null,
  }) {
    return _then(_self.copyWith(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsSummaryEntity,
      statusBreakdown: null == statusBreakdown
          ? _self.statusBreakdown
          : statusBreakdown // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusBreakdownEntity>,
      dailyTrends: null == dailyTrends
          ? _self.dailyTrends
          : dailyTrends // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDailyTrendEntity>,
      assistantPerformance: null == assistantPerformance
          ? _self.assistantPerformance
          : assistantPerformance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceAssistantPerformanceEntity>,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsFiltersEntity,
    ));
  }

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryEntityCopyWith<$Res> get summary {
    return $AttendanceStatisticsSummaryEntityCopyWith<$Res>(_self.summary,
        (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersEntityCopyWith<$Res> get filters {
    return $AttendanceStatisticsFiltersEntityCopyWith<$Res>(_self.filters,
        (value) {
      return _then(_self.copyWith(filters: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DutyAttendanceStatisticsEntity].
extension DutyAttendanceStatisticsEntityPatterns
    on DutyAttendanceStatisticsEntity {
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
    TResult Function(_DutyAttendanceStatisticsEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity() when $default != null:
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
    TResult Function(_DutyAttendanceStatisticsEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity():
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
    TResult? Function(_DutyAttendanceStatisticsEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity() when $default != null:
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
            AttendanceStatisticsSummaryEntity summary,
            List<AttendanceStatusBreakdownEntity> statusBreakdown,
            List<AttendanceDailyTrendEntity> dailyTrends,
            List<AttendanceAssistantPerformanceEntity> assistantPerformance,
            AttendanceStatisticsFiltersEntity filters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity() when $default != null:
        return $default(_that.summary, _that.statusBreakdown, _that.dailyTrends,
            _that.assistantPerformance, _that.filters);
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
            AttendanceStatisticsSummaryEntity summary,
            List<AttendanceStatusBreakdownEntity> statusBreakdown,
            List<AttendanceDailyTrendEntity> dailyTrends,
            List<AttendanceAssistantPerformanceEntity> assistantPerformance,
            AttendanceStatisticsFiltersEntity filters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity():
        return $default(_that.summary, _that.statusBreakdown, _that.dailyTrends,
            _that.assistantPerformance, _that.filters);
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
            AttendanceStatisticsSummaryEntity summary,
            List<AttendanceStatusBreakdownEntity> statusBreakdown,
            List<AttendanceDailyTrendEntity> dailyTrends,
            List<AttendanceAssistantPerformanceEntity> assistantPerformance,
            AttendanceStatisticsFiltersEntity filters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsEntity() when $default != null:
        return $default(_that.summary, _that.statusBreakdown, _that.dailyTrends,
            _that.assistantPerformance, _that.filters);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DutyAttendanceStatisticsEntity
    implements DutyAttendanceStatisticsEntity {
  const _DutyAttendanceStatisticsEntity(
      {required this.summary,
      required final List<AttendanceStatusBreakdownEntity> statusBreakdown,
      required final List<AttendanceDailyTrendEntity> dailyTrends,
      required final List<AttendanceAssistantPerformanceEntity>
          assistantPerformance,
      required this.filters})
      : _statusBreakdown = statusBreakdown,
        _dailyTrends = dailyTrends,
        _assistantPerformance = assistantPerformance;

  @override
  final AttendanceStatisticsSummaryEntity summary;
  final List<AttendanceStatusBreakdownEntity> _statusBreakdown;
  @override
  List<AttendanceStatusBreakdownEntity> get statusBreakdown {
    if (_statusBreakdown is EqualUnmodifiableListView) return _statusBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusBreakdown);
  }

  final List<AttendanceDailyTrendEntity> _dailyTrends;
  @override
  List<AttendanceDailyTrendEntity> get dailyTrends {
    if (_dailyTrends is EqualUnmodifiableListView) return _dailyTrends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTrends);
  }

  final List<AttendanceAssistantPerformanceEntity> _assistantPerformance;
  @override
  List<AttendanceAssistantPerformanceEntity> get assistantPerformance {
    if (_assistantPerformance is EqualUnmodifiableListView)
      return _assistantPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assistantPerformance);
  }

  @override
  final AttendanceStatisticsFiltersEntity filters;

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyAttendanceStatisticsEntityCopyWith<_DutyAttendanceStatisticsEntity>
      get copyWith => __$DutyAttendanceStatisticsEntityCopyWithImpl<
          _DutyAttendanceStatisticsEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyAttendanceStatisticsEntity &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._statusBreakdown, _statusBreakdown) &&
            const DeepCollectionEquality()
                .equals(other._dailyTrends, _dailyTrends) &&
            const DeepCollectionEquality()
                .equals(other._assistantPerformance, _assistantPerformance) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      summary,
      const DeepCollectionEquality().hash(_statusBreakdown),
      const DeepCollectionEquality().hash(_dailyTrends),
      const DeepCollectionEquality().hash(_assistantPerformance),
      filters);

  @override
  String toString() {
    return 'DutyAttendanceStatisticsEntity(summary: $summary, statusBreakdown: $statusBreakdown, dailyTrends: $dailyTrends, assistantPerformance: $assistantPerformance, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class _$DutyAttendanceStatisticsEntityCopyWith<$Res>
    implements $DutyAttendanceStatisticsEntityCopyWith<$Res> {
  factory _$DutyAttendanceStatisticsEntityCopyWith(
          _DutyAttendanceStatisticsEntity value,
          $Res Function(_DutyAttendanceStatisticsEntity) _then) =
      __$DutyAttendanceStatisticsEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AttendanceStatisticsSummaryEntity summary,
      List<AttendanceStatusBreakdownEntity> statusBreakdown,
      List<AttendanceDailyTrendEntity> dailyTrends,
      List<AttendanceAssistantPerformanceEntity> assistantPerformance,
      AttendanceStatisticsFiltersEntity filters});

  @override
  $AttendanceStatisticsSummaryEntityCopyWith<$Res> get summary;
  @override
  $AttendanceStatisticsFiltersEntityCopyWith<$Res> get filters;
}

/// @nodoc
class __$DutyAttendanceStatisticsEntityCopyWithImpl<$Res>
    implements _$DutyAttendanceStatisticsEntityCopyWith<$Res> {
  __$DutyAttendanceStatisticsEntityCopyWithImpl(this._self, this._then);

  final _DutyAttendanceStatisticsEntity _self;
  final $Res Function(_DutyAttendanceStatisticsEntity) _then;

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summary = null,
    Object? statusBreakdown = null,
    Object? dailyTrends = null,
    Object? assistantPerformance = null,
    Object? filters = null,
  }) {
    return _then(_DutyAttendanceStatisticsEntity(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsSummaryEntity,
      statusBreakdown: null == statusBreakdown
          ? _self._statusBreakdown
          : statusBreakdown // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusBreakdownEntity>,
      dailyTrends: null == dailyTrends
          ? _self._dailyTrends
          : dailyTrends // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDailyTrendEntity>,
      assistantPerformance: null == assistantPerformance
          ? _self._assistantPerformance
          : assistantPerformance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceAssistantPerformanceEntity>,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsFiltersEntity,
    ));
  }

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryEntityCopyWith<$Res> get summary {
    return $AttendanceStatisticsSummaryEntityCopyWith<$Res>(_self.summary,
        (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of DutyAttendanceStatisticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersEntityCopyWith<$Res> get filters {
    return $AttendanceStatisticsFiltersEntityCopyWith<$Res>(_self.filters,
        (value) {
      return _then(_self.copyWith(filters: value));
    });
  }
}

/// @nodoc
mixin _$AttendanceStatisticsSummaryEntity {
  int get totalDuties;
  AttendanceDateRangeEntity get dateRange;
  double get overallAttendanceRate;

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryEntityCopyWith<AttendanceStatisticsSummaryEntity>
      get copyWith => _$AttendanceStatisticsSummaryEntityCopyWithImpl<
              AttendanceStatisticsSummaryEntity>(
          this as AttendanceStatisticsSummaryEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatisticsSummaryEntity &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.overallAttendanceRate, overallAttendanceRate) ||
                other.overallAttendanceRate == overallAttendanceRate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalDuties, dateRange, overallAttendanceRate);

  @override
  String toString() {
    return 'AttendanceStatisticsSummaryEntity(totalDuties: $totalDuties, dateRange: $dateRange, overallAttendanceRate: $overallAttendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatisticsSummaryEntityCopyWith<$Res> {
  factory $AttendanceStatisticsSummaryEntityCopyWith(
          AttendanceStatisticsSummaryEntity value,
          $Res Function(AttendanceStatisticsSummaryEntity) _then) =
      _$AttendanceStatisticsSummaryEntityCopyWithImpl;
  @useResult
  $Res call(
      {int totalDuties,
      AttendanceDateRangeEntity dateRange,
      double overallAttendanceRate});

  $AttendanceDateRangeEntityCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$AttendanceStatisticsSummaryEntityCopyWithImpl<$Res>
    implements $AttendanceStatisticsSummaryEntityCopyWith<$Res> {
  _$AttendanceStatisticsSummaryEntityCopyWithImpl(this._self, this._then);

  final AttendanceStatisticsSummaryEntity _self;
  final $Res Function(AttendanceStatisticsSummaryEntity) _then;

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDuties = null,
    Object? dateRange = null,
    Object? overallAttendanceRate = null,
  }) {
    return _then(_self.copyWith(
      totalDuties: null == totalDuties
          ? _self.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
      dateRange: null == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as AttendanceDateRangeEntity,
      overallAttendanceRate: null == overallAttendanceRate
          ? _self.overallAttendanceRate
          : overallAttendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeEntityCopyWith<$Res> get dateRange {
    return $AttendanceDateRangeEntityCopyWith<$Res>(_self.dateRange, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AttendanceStatisticsSummaryEntity].
extension AttendanceStatisticsSummaryEntityPatterns
    on AttendanceStatisticsSummaryEntity {
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
    TResult Function(_AttendanceStatisticsSummaryEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity() when $default != null:
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
    TResult Function(_AttendanceStatisticsSummaryEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity():
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
    TResult? Function(_AttendanceStatisticsSummaryEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity() when $default != null:
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
    TResult Function(int totalDuties, AttendanceDateRangeEntity dateRange,
            double overallAttendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity() when $default != null:
        return $default(
            _that.totalDuties, _that.dateRange, _that.overallAttendanceRate);
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
    TResult Function(int totalDuties, AttendanceDateRangeEntity dateRange,
            double overallAttendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity():
        return $default(
            _that.totalDuties, _that.dateRange, _that.overallAttendanceRate);
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
    TResult? Function(int totalDuties, AttendanceDateRangeEntity dateRange,
            double overallAttendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryEntity() when $default != null:
        return $default(
            _that.totalDuties, _that.dateRange, _that.overallAttendanceRate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceStatisticsSummaryEntity
    implements AttendanceStatisticsSummaryEntity {
  const _AttendanceStatisticsSummaryEntity(
      {required this.totalDuties,
      required this.dateRange,
      required this.overallAttendanceRate});

  @override
  final int totalDuties;
  @override
  final AttendanceDateRangeEntity dateRange;
  @override
  final double overallAttendanceRate;

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatisticsSummaryEntityCopyWith<
          _AttendanceStatisticsSummaryEntity>
      get copyWith => __$AttendanceStatisticsSummaryEntityCopyWithImpl<
          _AttendanceStatisticsSummaryEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatisticsSummaryEntity &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.overallAttendanceRate, overallAttendanceRate) ||
                other.overallAttendanceRate == overallAttendanceRate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalDuties, dateRange, overallAttendanceRate);

  @override
  String toString() {
    return 'AttendanceStatisticsSummaryEntity(totalDuties: $totalDuties, dateRange: $dateRange, overallAttendanceRate: $overallAttendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatisticsSummaryEntityCopyWith<$Res>
    implements $AttendanceStatisticsSummaryEntityCopyWith<$Res> {
  factory _$AttendanceStatisticsSummaryEntityCopyWith(
          _AttendanceStatisticsSummaryEntity value,
          $Res Function(_AttendanceStatisticsSummaryEntity) _then) =
      __$AttendanceStatisticsSummaryEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int totalDuties,
      AttendanceDateRangeEntity dateRange,
      double overallAttendanceRate});

  @override
  $AttendanceDateRangeEntityCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$AttendanceStatisticsSummaryEntityCopyWithImpl<$Res>
    implements _$AttendanceStatisticsSummaryEntityCopyWith<$Res> {
  __$AttendanceStatisticsSummaryEntityCopyWithImpl(this._self, this._then);

  final _AttendanceStatisticsSummaryEntity _self;
  final $Res Function(_AttendanceStatisticsSummaryEntity) _then;

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalDuties = null,
    Object? dateRange = null,
    Object? overallAttendanceRate = null,
  }) {
    return _then(_AttendanceStatisticsSummaryEntity(
      totalDuties: null == totalDuties
          ? _self.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
      dateRange: null == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as AttendanceDateRangeEntity,
      overallAttendanceRate: null == overallAttendanceRate
          ? _self.overallAttendanceRate
          : overallAttendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of AttendanceStatisticsSummaryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeEntityCopyWith<$Res> get dateRange {
    return $AttendanceDateRangeEntityCopyWith<$Res>(_self.dateRange, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}

/// @nodoc
mixin _$AttendanceDateRangeEntity {
  String get startDate;
  String get endDate;
  int get daysCount;

  /// Create a copy of AttendanceDateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeEntityCopyWith<AttendanceDateRangeEntity> get copyWith =>
      _$AttendanceDateRangeEntityCopyWithImpl<AttendanceDateRangeEntity>(
          this as AttendanceDateRangeEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceDateRangeEntity &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, daysCount);

  @override
  String toString() {
    return 'AttendanceDateRangeEntity(startDate: $startDate, endDate: $endDate, daysCount: $daysCount)';
  }
}

/// @nodoc
abstract mixin class $AttendanceDateRangeEntityCopyWith<$Res> {
  factory $AttendanceDateRangeEntityCopyWith(AttendanceDateRangeEntity value,
          $Res Function(AttendanceDateRangeEntity) _then) =
      _$AttendanceDateRangeEntityCopyWithImpl;
  @useResult
  $Res call({String startDate, String endDate, int daysCount});
}

/// @nodoc
class _$AttendanceDateRangeEntityCopyWithImpl<$Res>
    implements $AttendanceDateRangeEntityCopyWith<$Res> {
  _$AttendanceDateRangeEntityCopyWithImpl(this._self, this._then);

  final AttendanceDateRangeEntity _self;
  final $Res Function(AttendanceDateRangeEntity) _then;

  /// Create a copy of AttendanceDateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? daysCount = null,
  }) {
    return _then(_self.copyWith(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysCount: null == daysCount
          ? _self.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttendanceDateRangeEntity].
extension AttendanceDateRangeEntityPatterns on AttendanceDateRangeEntity {
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
    TResult Function(_AttendanceDateRangeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity() when $default != null:
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
    TResult Function(_AttendanceDateRangeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity():
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
    TResult? Function(_AttendanceDateRangeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity() when $default != null:
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
    TResult Function(String startDate, String endDate, int daysCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.daysCount);
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
    TResult Function(String startDate, String endDate, int daysCount) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity():
        return $default(_that.startDate, _that.endDate, _that.daysCount);
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
    TResult? Function(String startDate, String endDate, int daysCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeEntity() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.daysCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceDateRangeEntity implements AttendanceDateRangeEntity {
  const _AttendanceDateRangeEntity(
      {required this.startDate,
      required this.endDate,
      required this.daysCount});

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int daysCount;

  /// Create a copy of AttendanceDateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceDateRangeEntityCopyWith<_AttendanceDateRangeEntity>
      get copyWith =>
          __$AttendanceDateRangeEntityCopyWithImpl<_AttendanceDateRangeEntity>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceDateRangeEntity &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, daysCount);

  @override
  String toString() {
    return 'AttendanceDateRangeEntity(startDate: $startDate, endDate: $endDate, daysCount: $daysCount)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceDateRangeEntityCopyWith<$Res>
    implements $AttendanceDateRangeEntityCopyWith<$Res> {
  factory _$AttendanceDateRangeEntityCopyWith(_AttendanceDateRangeEntity value,
          $Res Function(_AttendanceDateRangeEntity) _then) =
      __$AttendanceDateRangeEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String startDate, String endDate, int daysCount});
}

/// @nodoc
class __$AttendanceDateRangeEntityCopyWithImpl<$Res>
    implements _$AttendanceDateRangeEntityCopyWith<$Res> {
  __$AttendanceDateRangeEntityCopyWithImpl(this._self, this._then);

  final _AttendanceDateRangeEntity _self;
  final $Res Function(_AttendanceDateRangeEntity) _then;

  /// Create a copy of AttendanceDateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? daysCount = null,
  }) {
    return _then(_AttendanceDateRangeEntity(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      daysCount: null == daysCount
          ? _self.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$AttendanceStatusBreakdownEntity {
  String get status;
  int get count;
  double get percentage;

  /// Create a copy of AttendanceStatusBreakdownEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatusBreakdownEntityCopyWith<AttendanceStatusBreakdownEntity>
      get copyWith => _$AttendanceStatusBreakdownEntityCopyWithImpl<
              AttendanceStatusBreakdownEntity>(
          this as AttendanceStatusBreakdownEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatusBreakdownEntity &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, count, percentage);

  @override
  String toString() {
    return 'AttendanceStatusBreakdownEntity(status: $status, count: $count, percentage: $percentage)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatusBreakdownEntityCopyWith<$Res> {
  factory $AttendanceStatusBreakdownEntityCopyWith(
          AttendanceStatusBreakdownEntity value,
          $Res Function(AttendanceStatusBreakdownEntity) _then) =
      _$AttendanceStatusBreakdownEntityCopyWithImpl;
  @useResult
  $Res call({String status, int count, double percentage});
}

/// @nodoc
class _$AttendanceStatusBreakdownEntityCopyWithImpl<$Res>
    implements $AttendanceStatusBreakdownEntityCopyWith<$Res> {
  _$AttendanceStatusBreakdownEntityCopyWithImpl(this._self, this._then);

  final AttendanceStatusBreakdownEntity _self;
  final $Res Function(AttendanceStatusBreakdownEntity) _then;

  /// Create a copy of AttendanceStatusBreakdownEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? count = null,
    Object? percentage = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _self.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttendanceStatusBreakdownEntity].
extension AttendanceStatusBreakdownEntityPatterns
    on AttendanceStatusBreakdownEntity {
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
    TResult Function(_AttendanceStatusBreakdownEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity() when $default != null:
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
    TResult Function(_AttendanceStatusBreakdownEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity():
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
    TResult? Function(_AttendanceStatusBreakdownEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity() when $default != null:
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
    TResult Function(String status, int count, double percentage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity() when $default != null:
        return $default(_that.status, _that.count, _that.percentage);
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
    TResult Function(String status, int count, double percentage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity():
        return $default(_that.status, _that.count, _that.percentage);
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
    TResult? Function(String status, int count, double percentage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownEntity() when $default != null:
        return $default(_that.status, _that.count, _that.percentage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceStatusBreakdownEntity
    implements AttendanceStatusBreakdownEntity {
  const _AttendanceStatusBreakdownEntity(
      {required this.status, required this.count, required this.percentage});

  @override
  final String status;
  @override
  final int count;
  @override
  final double percentage;

  /// Create a copy of AttendanceStatusBreakdownEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatusBreakdownEntityCopyWith<_AttendanceStatusBreakdownEntity>
      get copyWith => __$AttendanceStatusBreakdownEntityCopyWithImpl<
          _AttendanceStatusBreakdownEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatusBreakdownEntity &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, count, percentage);

  @override
  String toString() {
    return 'AttendanceStatusBreakdownEntity(status: $status, count: $count, percentage: $percentage)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatusBreakdownEntityCopyWith<$Res>
    implements $AttendanceStatusBreakdownEntityCopyWith<$Res> {
  factory _$AttendanceStatusBreakdownEntityCopyWith(
          _AttendanceStatusBreakdownEntity value,
          $Res Function(_AttendanceStatusBreakdownEntity) _then) =
      __$AttendanceStatusBreakdownEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String status, int count, double percentage});
}

/// @nodoc
class __$AttendanceStatusBreakdownEntityCopyWithImpl<$Res>
    implements _$AttendanceStatusBreakdownEntityCopyWith<$Res> {
  __$AttendanceStatusBreakdownEntityCopyWithImpl(this._self, this._then);

  final _AttendanceStatusBreakdownEntity _self;
  final $Res Function(_AttendanceStatusBreakdownEntity) _then;

  /// Create a copy of AttendanceStatusBreakdownEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? count = null,
    Object? percentage = null,
  }) {
    return _then(_AttendanceStatusBreakdownEntity(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _self.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$AttendanceDailyTrendEntity {
  String get date;
  int get total;
  int get present;
  int get absent;
  int get late;
  double get attendanceRate;

  /// Create a copy of AttendanceDailyTrendEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceDailyTrendEntityCopyWith<AttendanceDailyTrendEntity>
      get copyWith =>
          _$AttendanceDailyTrendEntityCopyWithImpl<AttendanceDailyTrendEntity>(
              this as AttendanceDailyTrendEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceDailyTrendEntity &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, total, present, absent, late, attendanceRate);

  @override
  String toString() {
    return 'AttendanceDailyTrendEntity(date: $date, total: $total, present: $present, absent: $absent, late: $late, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceDailyTrendEntityCopyWith<$Res> {
  factory $AttendanceDailyTrendEntityCopyWith(AttendanceDailyTrendEntity value,
          $Res Function(AttendanceDailyTrendEntity) _then) =
      _$AttendanceDailyTrendEntityCopyWithImpl;
  @useResult
  $Res call(
      {String date,
      int total,
      int present,
      int absent,
      int late,
      double attendanceRate});
}

/// @nodoc
class _$AttendanceDailyTrendEntityCopyWithImpl<$Res>
    implements $AttendanceDailyTrendEntityCopyWith<$Res> {
  _$AttendanceDailyTrendEntityCopyWithImpl(this._self, this._then);

  final AttendanceDailyTrendEntity _self;
  final $Res Function(AttendanceDailyTrendEntity) _then;

  /// Create a copy of AttendanceDailyTrendEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? total = null,
    Object? present = null,
    Object? absent = null,
    Object? late = null,
    Object? attendanceRate = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      present: null == present
          ? _self.present
          : present // ignore: cast_nullable_to_non_nullable
              as int,
      absent: null == absent
          ? _self.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as int,
      late: null == late
          ? _self.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _self.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttendanceDailyTrendEntity].
extension AttendanceDailyTrendEntityPatterns on AttendanceDailyTrendEntity {
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
    TResult Function(_AttendanceDailyTrendEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity() when $default != null:
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
    TResult Function(_AttendanceDailyTrendEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity():
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
    TResult? Function(_AttendanceDailyTrendEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity() when $default != null:
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
    TResult Function(String date, int total, int present, int absent, int late,
            double attendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity() when $default != null:
        return $default(_that.date, _that.total, _that.present, _that.absent,
            _that.late, _that.attendanceRate);
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
    TResult Function(String date, int total, int present, int absent, int late,
            double attendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity():
        return $default(_that.date, _that.total, _that.present, _that.absent,
            _that.late, _that.attendanceRate);
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
    TResult? Function(String date, int total, int present, int absent, int late,
            double attendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendEntity() when $default != null:
        return $default(_that.date, _that.total, _that.present, _that.absent,
            _that.late, _that.attendanceRate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceDailyTrendEntity implements AttendanceDailyTrendEntity {
  const _AttendanceDailyTrendEntity(
      {required this.date,
      required this.total,
      required this.present,
      required this.absent,
      required this.late,
      required this.attendanceRate});

  @override
  final String date;
  @override
  final int total;
  @override
  final int present;
  @override
  final int absent;
  @override
  final int late;
  @override
  final double attendanceRate;

  /// Create a copy of AttendanceDailyTrendEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceDailyTrendEntityCopyWith<_AttendanceDailyTrendEntity>
      get copyWith => __$AttendanceDailyTrendEntityCopyWithImpl<
          _AttendanceDailyTrendEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceDailyTrendEntity &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, total, present, absent, late, attendanceRate);

  @override
  String toString() {
    return 'AttendanceDailyTrendEntity(date: $date, total: $total, present: $present, absent: $absent, late: $late, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceDailyTrendEntityCopyWith<$Res>
    implements $AttendanceDailyTrendEntityCopyWith<$Res> {
  factory _$AttendanceDailyTrendEntityCopyWith(
          _AttendanceDailyTrendEntity value,
          $Res Function(_AttendanceDailyTrendEntity) _then) =
      __$AttendanceDailyTrendEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String date,
      int total,
      int present,
      int absent,
      int late,
      double attendanceRate});
}

/// @nodoc
class __$AttendanceDailyTrendEntityCopyWithImpl<$Res>
    implements _$AttendanceDailyTrendEntityCopyWith<$Res> {
  __$AttendanceDailyTrendEntityCopyWithImpl(this._self, this._then);

  final _AttendanceDailyTrendEntity _self;
  final $Res Function(_AttendanceDailyTrendEntity) _then;

  /// Create a copy of AttendanceDailyTrendEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? total = null,
    Object? present = null,
    Object? absent = null,
    Object? late = null,
    Object? attendanceRate = null,
  }) {
    return _then(_AttendanceDailyTrendEntity(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      present: null == present
          ? _self.present
          : present // ignore: cast_nullable_to_non_nullable
              as int,
      absent: null == absent
          ? _self.absent
          : absent // ignore: cast_nullable_to_non_nullable
              as int,
      late: null == late
          ? _self.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _self.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$AttendanceAssistantPerformanceEntity {
  String get assistantId;
  String get name;
  String get username;
  int get totalDuties;
  int get presentCount;
  int get absentCount;
  int get lateCount;
  double get attendanceRate;

  /// Create a copy of AttendanceAssistantPerformanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceAssistantPerformanceEntityCopyWith<
          AttendanceAssistantPerformanceEntity>
      get copyWith => _$AttendanceAssistantPerformanceEntityCopyWithImpl<
              AttendanceAssistantPerformanceEntity>(
          this as AttendanceAssistantPerformanceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceAssistantPerformanceEntity &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.presentCount, presentCount) ||
                other.presentCount == presentCount) &&
            (identical(other.absentCount, absentCount) ||
                other.absentCount == absentCount) &&
            (identical(other.lateCount, lateCount) ||
                other.lateCount == lateCount) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistantId, name, username,
      totalDuties, presentCount, absentCount, lateCount, attendanceRate);

  @override
  String toString() {
    return 'AttendanceAssistantPerformanceEntity(assistantId: $assistantId, name: $name, username: $username, totalDuties: $totalDuties, presentCount: $presentCount, absentCount: $absentCount, lateCount: $lateCount, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceAssistantPerformanceEntityCopyWith<$Res> {
  factory $AttendanceAssistantPerformanceEntityCopyWith(
          AttendanceAssistantPerformanceEntity value,
          $Res Function(AttendanceAssistantPerformanceEntity) _then) =
      _$AttendanceAssistantPerformanceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String assistantId,
      String name,
      String username,
      int totalDuties,
      int presentCount,
      int absentCount,
      int lateCount,
      double attendanceRate});
}

/// @nodoc
class _$AttendanceAssistantPerformanceEntityCopyWithImpl<$Res>
    implements $AttendanceAssistantPerformanceEntityCopyWith<$Res> {
  _$AttendanceAssistantPerformanceEntityCopyWithImpl(this._self, this._then);

  final AttendanceAssistantPerformanceEntity _self;
  final $Res Function(AttendanceAssistantPerformanceEntity) _then;

  /// Create a copy of AttendanceAssistantPerformanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistantId = null,
    Object? name = null,
    Object? username = null,
    Object? totalDuties = null,
    Object? presentCount = null,
    Object? absentCount = null,
    Object? lateCount = null,
    Object? attendanceRate = null,
  }) {
    return _then(_self.copyWith(
      assistantId: null == assistantId
          ? _self.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuties: null == totalDuties
          ? _self.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
      presentCount: null == presentCount
          ? _self.presentCount
          : presentCount // ignore: cast_nullable_to_non_nullable
              as int,
      absentCount: null == absentCount
          ? _self.absentCount
          : absentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lateCount: null == lateCount
          ? _self.lateCount
          : lateCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _self.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttendanceAssistantPerformanceEntity].
extension AttendanceAssistantPerformanceEntityPatterns
    on AttendanceAssistantPerformanceEntity {
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
    TResult Function(_AttendanceAssistantPerformanceEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity() when $default != null:
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
    TResult Function(_AttendanceAssistantPerformanceEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity():
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
    TResult? Function(_AttendanceAssistantPerformanceEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity() when $default != null:
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
            String assistantId,
            String name,
            String username,
            int totalDuties,
            int presentCount,
            int absentCount,
            int lateCount,
            double attendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity() when $default != null:
        return $default(
            _that.assistantId,
            _that.name,
            _that.username,
            _that.totalDuties,
            _that.presentCount,
            _that.absentCount,
            _that.lateCount,
            _that.attendanceRate);
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
            String assistantId,
            String name,
            String username,
            int totalDuties,
            int presentCount,
            int absentCount,
            int lateCount,
            double attendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity():
        return $default(
            _that.assistantId,
            _that.name,
            _that.username,
            _that.totalDuties,
            _that.presentCount,
            _that.absentCount,
            _that.lateCount,
            _that.attendanceRate);
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
            String assistantId,
            String name,
            String username,
            int totalDuties,
            int presentCount,
            int absentCount,
            int lateCount,
            double attendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceEntity() when $default != null:
        return $default(
            _that.assistantId,
            _that.name,
            _that.username,
            _that.totalDuties,
            _that.presentCount,
            _that.absentCount,
            _that.lateCount,
            _that.attendanceRate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceAssistantPerformanceEntity
    implements AttendanceAssistantPerformanceEntity {
  const _AttendanceAssistantPerformanceEntity(
      {required this.assistantId,
      required this.name,
      required this.username,
      required this.totalDuties,
      required this.presentCount,
      required this.absentCount,
      required this.lateCount,
      required this.attendanceRate});

  @override
  final String assistantId;
  @override
  final String name;
  @override
  final String username;
  @override
  final int totalDuties;
  @override
  final int presentCount;
  @override
  final int absentCount;
  @override
  final int lateCount;
  @override
  final double attendanceRate;

  /// Create a copy of AttendanceAssistantPerformanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceAssistantPerformanceEntityCopyWith<
          _AttendanceAssistantPerformanceEntity>
      get copyWith => __$AttendanceAssistantPerformanceEntityCopyWithImpl<
          _AttendanceAssistantPerformanceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceAssistantPerformanceEntity &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.presentCount, presentCount) ||
                other.presentCount == presentCount) &&
            (identical(other.absentCount, absentCount) ||
                other.absentCount == absentCount) &&
            (identical(other.lateCount, lateCount) ||
                other.lateCount == lateCount) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistantId, name, username,
      totalDuties, presentCount, absentCount, lateCount, attendanceRate);

  @override
  String toString() {
    return 'AttendanceAssistantPerformanceEntity(assistantId: $assistantId, name: $name, username: $username, totalDuties: $totalDuties, presentCount: $presentCount, absentCount: $absentCount, lateCount: $lateCount, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceAssistantPerformanceEntityCopyWith<$Res>
    implements $AttendanceAssistantPerformanceEntityCopyWith<$Res> {
  factory _$AttendanceAssistantPerformanceEntityCopyWith(
          _AttendanceAssistantPerformanceEntity value,
          $Res Function(_AttendanceAssistantPerformanceEntity) _then) =
      __$AttendanceAssistantPerformanceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String assistantId,
      String name,
      String username,
      int totalDuties,
      int presentCount,
      int absentCount,
      int lateCount,
      double attendanceRate});
}

/// @nodoc
class __$AttendanceAssistantPerformanceEntityCopyWithImpl<$Res>
    implements _$AttendanceAssistantPerformanceEntityCopyWith<$Res> {
  __$AttendanceAssistantPerformanceEntityCopyWithImpl(this._self, this._then);

  final _AttendanceAssistantPerformanceEntity _self;
  final $Res Function(_AttendanceAssistantPerformanceEntity) _then;

  /// Create a copy of AttendanceAssistantPerformanceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assistantId = null,
    Object? name = null,
    Object? username = null,
    Object? totalDuties = null,
    Object? presentCount = null,
    Object? absentCount = null,
    Object? lateCount = null,
    Object? attendanceRate = null,
  }) {
    return _then(_AttendanceAssistantPerformanceEntity(
      assistantId: null == assistantId
          ? _self.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuties: null == totalDuties
          ? _self.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
      presentCount: null == presentCount
          ? _self.presentCount
          : presentCount // ignore: cast_nullable_to_non_nullable
              as int,
      absentCount: null == absentCount
          ? _self.absentCount
          : absentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lateCount: null == lateCount
          ? _self.lateCount
          : lateCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _self.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$AttendanceStatisticsFiltersEntity {
  String get startDate;
  String get endDate;
  String? get assistantId;

  /// Create a copy of AttendanceStatisticsFiltersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersEntityCopyWith<AttendanceStatisticsFiltersEntity>
      get copyWith => _$AttendanceStatisticsFiltersEntityCopyWithImpl<
              AttendanceStatisticsFiltersEntity>(
          this as AttendanceStatisticsFiltersEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatisticsFiltersEntity &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, assistantId);

  @override
  String toString() {
    return 'AttendanceStatisticsFiltersEntity(startDate: $startDate, endDate: $endDate, assistantId: $assistantId)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatisticsFiltersEntityCopyWith<$Res> {
  factory $AttendanceStatisticsFiltersEntityCopyWith(
          AttendanceStatisticsFiltersEntity value,
          $Res Function(AttendanceStatisticsFiltersEntity) _then) =
      _$AttendanceStatisticsFiltersEntityCopyWithImpl;
  @useResult
  $Res call({String startDate, String endDate, String? assistantId});
}

/// @nodoc
class _$AttendanceStatisticsFiltersEntityCopyWithImpl<$Res>
    implements $AttendanceStatisticsFiltersEntityCopyWith<$Res> {
  _$AttendanceStatisticsFiltersEntityCopyWithImpl(this._self, this._then);

  final AttendanceStatisticsFiltersEntity _self;
  final $Res Function(AttendanceStatisticsFiltersEntity) _then;

  /// Create a copy of AttendanceStatisticsFiltersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? assistantId = freezed,
  }) {
    return _then(_self.copyWith(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      assistantId: freezed == assistantId
          ? _self.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AttendanceStatisticsFiltersEntity].
extension AttendanceStatisticsFiltersEntityPatterns
    on AttendanceStatisticsFiltersEntity {
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
    TResult Function(_AttendanceStatisticsFiltersEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity() when $default != null:
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
    TResult Function(_AttendanceStatisticsFiltersEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity():
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
    TResult? Function(_AttendanceStatisticsFiltersEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity() when $default != null:
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
    TResult Function(String startDate, String endDate, String? assistantId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.assistantId);
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
    TResult Function(String startDate, String endDate, String? assistantId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity():
        return $default(_that.startDate, _that.endDate, _that.assistantId);
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
    TResult? Function(String startDate, String endDate, String? assistantId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersEntity() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.assistantId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AttendanceStatisticsFiltersEntity
    implements AttendanceStatisticsFiltersEntity {
  const _AttendanceStatisticsFiltersEntity(
      {required this.startDate, required this.endDate, this.assistantId});

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String? assistantId;

  /// Create a copy of AttendanceStatisticsFiltersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatisticsFiltersEntityCopyWith<
          _AttendanceStatisticsFiltersEntity>
      get copyWith => __$AttendanceStatisticsFiltersEntityCopyWithImpl<
          _AttendanceStatisticsFiltersEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatisticsFiltersEntity &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, assistantId);

  @override
  String toString() {
    return 'AttendanceStatisticsFiltersEntity(startDate: $startDate, endDate: $endDate, assistantId: $assistantId)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatisticsFiltersEntityCopyWith<$Res>
    implements $AttendanceStatisticsFiltersEntityCopyWith<$Res> {
  factory _$AttendanceStatisticsFiltersEntityCopyWith(
          _AttendanceStatisticsFiltersEntity value,
          $Res Function(_AttendanceStatisticsFiltersEntity) _then) =
      __$AttendanceStatisticsFiltersEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String startDate, String endDate, String? assistantId});
}

/// @nodoc
class __$AttendanceStatisticsFiltersEntityCopyWithImpl<$Res>
    implements _$AttendanceStatisticsFiltersEntityCopyWith<$Res> {
  __$AttendanceStatisticsFiltersEntityCopyWithImpl(this._self, this._then);

  final _AttendanceStatisticsFiltersEntity _self;
  final $Res Function(_AttendanceStatisticsFiltersEntity) _then;

  /// Create a copy of AttendanceStatisticsFiltersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? assistantId = freezed,
  }) {
    return _then(_AttendanceStatisticsFiltersEntity(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      assistantId: freezed == assistantId
          ? _self.assistantId
          : assistantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
