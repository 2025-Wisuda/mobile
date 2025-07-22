// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duty_attendance_statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DutyAttendanceStatisticsModel {
  AttendanceStatisticsSummaryModel get summary;
  @JsonKey(name: 'status_breakdown')
  List<AttendanceStatusBreakdownModel> get statusBreakdown;
  @JsonKey(name: 'daily_trends')
  List<AttendanceDailyTrendModel> get dailyTrends;
  @JsonKey(name: 'assistant_performance')
  List<AttendanceAssistantPerformanceModel> get assistantPerformance;
  AttendanceStatisticsFiltersModel get filters;

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DutyAttendanceStatisticsModelCopyWith<DutyAttendanceStatisticsModel>
      get copyWith => _$DutyAttendanceStatisticsModelCopyWithImpl<
              DutyAttendanceStatisticsModel>(
          this as DutyAttendanceStatisticsModel, _$identity);

  /// Serializes this DutyAttendanceStatisticsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DutyAttendanceStatisticsModel &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other.statusBreakdown, statusBreakdown) &&
            const DeepCollectionEquality()
                .equals(other.dailyTrends, dailyTrends) &&
            const DeepCollectionEquality()
                .equals(other.assistantPerformance, assistantPerformance) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'DutyAttendanceStatisticsModel(summary: $summary, statusBreakdown: $statusBreakdown, dailyTrends: $dailyTrends, assistantPerformance: $assistantPerformance, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class $DutyAttendanceStatisticsModelCopyWith<$Res> {
  factory $DutyAttendanceStatisticsModelCopyWith(
          DutyAttendanceStatisticsModel value,
          $Res Function(DutyAttendanceStatisticsModel) _then) =
      _$DutyAttendanceStatisticsModelCopyWithImpl;
  @useResult
  $Res call(
      {AttendanceStatisticsSummaryModel summary,
      @JsonKey(name: 'status_breakdown')
      List<AttendanceStatusBreakdownModel> statusBreakdown,
      @JsonKey(name: 'daily_trends')
      List<AttendanceDailyTrendModel> dailyTrends,
      @JsonKey(name: 'assistant_performance')
      List<AttendanceAssistantPerformanceModel> assistantPerformance,
      AttendanceStatisticsFiltersModel filters});

  $AttendanceStatisticsSummaryModelCopyWith<$Res> get summary;
  $AttendanceStatisticsFiltersModelCopyWith<$Res> get filters;
}

/// @nodoc
class _$DutyAttendanceStatisticsModelCopyWithImpl<$Res>
    implements $DutyAttendanceStatisticsModelCopyWith<$Res> {
  _$DutyAttendanceStatisticsModelCopyWithImpl(this._self, this._then);

  final DutyAttendanceStatisticsModel _self;
  final $Res Function(DutyAttendanceStatisticsModel) _then;

  /// Create a copy of DutyAttendanceStatisticsModel
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
              as AttendanceStatisticsSummaryModel,
      statusBreakdown: null == statusBreakdown
          ? _self.statusBreakdown
          : statusBreakdown // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusBreakdownModel>,
      dailyTrends: null == dailyTrends
          ? _self.dailyTrends
          : dailyTrends // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDailyTrendModel>,
      assistantPerformance: null == assistantPerformance
          ? _self.assistantPerformance
          : assistantPerformance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceAssistantPerformanceModel>,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsFiltersModel,
    ));
  }

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryModelCopyWith<$Res> get summary {
    return $AttendanceStatisticsSummaryModelCopyWith<$Res>(_self.summary,
        (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersModelCopyWith<$Res> get filters {
    return $AttendanceStatisticsFiltersModelCopyWith<$Res>(_self.filters,
        (value) {
      return _then(_self.copyWith(filters: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DutyAttendanceStatisticsModel].
extension DutyAttendanceStatisticsModelPatterns
    on DutyAttendanceStatisticsModel {
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
    TResult Function(_DutyAttendanceStatisticsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel() when $default != null:
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
    TResult Function(_DutyAttendanceStatisticsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel():
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
    TResult? Function(_DutyAttendanceStatisticsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel() when $default != null:
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
            AttendanceStatisticsSummaryModel summary,
            @JsonKey(name: 'status_breakdown')
            List<AttendanceStatusBreakdownModel> statusBreakdown,
            @JsonKey(name: 'daily_trends')
            List<AttendanceDailyTrendModel> dailyTrends,
            @JsonKey(name: 'assistant_performance')
            List<AttendanceAssistantPerformanceModel> assistantPerformance,
            AttendanceStatisticsFiltersModel filters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel() when $default != null:
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
            AttendanceStatisticsSummaryModel summary,
            @JsonKey(name: 'status_breakdown')
            List<AttendanceStatusBreakdownModel> statusBreakdown,
            @JsonKey(name: 'daily_trends')
            List<AttendanceDailyTrendModel> dailyTrends,
            @JsonKey(name: 'assistant_performance')
            List<AttendanceAssistantPerformanceModel> assistantPerformance,
            AttendanceStatisticsFiltersModel filters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel():
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
            AttendanceStatisticsSummaryModel summary,
            @JsonKey(name: 'status_breakdown')
            List<AttendanceStatusBreakdownModel> statusBreakdown,
            @JsonKey(name: 'daily_trends')
            List<AttendanceDailyTrendModel> dailyTrends,
            @JsonKey(name: 'assistant_performance')
            List<AttendanceAssistantPerformanceModel> assistantPerformance,
            AttendanceStatisticsFiltersModel filters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DutyAttendanceStatisticsModel() when $default != null:
        return $default(_that.summary, _that.statusBreakdown, _that.dailyTrends,
            _that.assistantPerformance, _that.filters);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DutyAttendanceStatisticsModel implements DutyAttendanceStatisticsModel {
  const _DutyAttendanceStatisticsModel(
      {required this.summary,
      @JsonKey(name: 'status_breakdown')
      required final List<AttendanceStatusBreakdownModel> statusBreakdown,
      @JsonKey(name: 'daily_trends')
      required final List<AttendanceDailyTrendModel> dailyTrends,
      @JsonKey(name: 'assistant_performance')
      required final List<AttendanceAssistantPerformanceModel>
          assistantPerformance,
      required this.filters})
      : _statusBreakdown = statusBreakdown,
        _dailyTrends = dailyTrends,
        _assistantPerformance = assistantPerformance;
  factory _DutyAttendanceStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$DutyAttendanceStatisticsModelFromJson(json);

  @override
  final AttendanceStatisticsSummaryModel summary;
  final List<AttendanceStatusBreakdownModel> _statusBreakdown;
  @override
  @JsonKey(name: 'status_breakdown')
  List<AttendanceStatusBreakdownModel> get statusBreakdown {
    if (_statusBreakdown is EqualUnmodifiableListView) return _statusBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusBreakdown);
  }

  final List<AttendanceDailyTrendModel> _dailyTrends;
  @override
  @JsonKey(name: 'daily_trends')
  List<AttendanceDailyTrendModel> get dailyTrends {
    if (_dailyTrends is EqualUnmodifiableListView) return _dailyTrends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTrends);
  }

  final List<AttendanceAssistantPerformanceModel> _assistantPerformance;
  @override
  @JsonKey(name: 'assistant_performance')
  List<AttendanceAssistantPerformanceModel> get assistantPerformance {
    if (_assistantPerformance is EqualUnmodifiableListView)
      return _assistantPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assistantPerformance);
  }

  @override
  final AttendanceStatisticsFiltersModel filters;

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DutyAttendanceStatisticsModelCopyWith<_DutyAttendanceStatisticsModel>
      get copyWith => __$DutyAttendanceStatisticsModelCopyWithImpl<
          _DutyAttendanceStatisticsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DutyAttendanceStatisticsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyAttendanceStatisticsModel &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._statusBreakdown, _statusBreakdown) &&
            const DeepCollectionEquality()
                .equals(other._dailyTrends, _dailyTrends) &&
            const DeepCollectionEquality()
                .equals(other._assistantPerformance, _assistantPerformance) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'DutyAttendanceStatisticsModel(summary: $summary, statusBreakdown: $statusBreakdown, dailyTrends: $dailyTrends, assistantPerformance: $assistantPerformance, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class _$DutyAttendanceStatisticsModelCopyWith<$Res>
    implements $DutyAttendanceStatisticsModelCopyWith<$Res> {
  factory _$DutyAttendanceStatisticsModelCopyWith(
          _DutyAttendanceStatisticsModel value,
          $Res Function(_DutyAttendanceStatisticsModel) _then) =
      __$DutyAttendanceStatisticsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AttendanceStatisticsSummaryModel summary,
      @JsonKey(name: 'status_breakdown')
      List<AttendanceStatusBreakdownModel> statusBreakdown,
      @JsonKey(name: 'daily_trends')
      List<AttendanceDailyTrendModel> dailyTrends,
      @JsonKey(name: 'assistant_performance')
      List<AttendanceAssistantPerformanceModel> assistantPerformance,
      AttendanceStatisticsFiltersModel filters});

  @override
  $AttendanceStatisticsSummaryModelCopyWith<$Res> get summary;
  @override
  $AttendanceStatisticsFiltersModelCopyWith<$Res> get filters;
}

/// @nodoc
class __$DutyAttendanceStatisticsModelCopyWithImpl<$Res>
    implements _$DutyAttendanceStatisticsModelCopyWith<$Res> {
  __$DutyAttendanceStatisticsModelCopyWithImpl(this._self, this._then);

  final _DutyAttendanceStatisticsModel _self;
  final $Res Function(_DutyAttendanceStatisticsModel) _then;

  /// Create a copy of DutyAttendanceStatisticsModel
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
    return _then(_DutyAttendanceStatisticsModel(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsSummaryModel,
      statusBreakdown: null == statusBreakdown
          ? _self._statusBreakdown
          : statusBreakdown // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusBreakdownModel>,
      dailyTrends: null == dailyTrends
          ? _self._dailyTrends
          : dailyTrends // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDailyTrendModel>,
      assistantPerformance: null == assistantPerformance
          ? _self._assistantPerformance
          : assistantPerformance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceAssistantPerformanceModel>,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as AttendanceStatisticsFiltersModel,
    ));
  }

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryModelCopyWith<$Res> get summary {
    return $AttendanceStatisticsSummaryModelCopyWith<$Res>(_self.summary,
        (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of DutyAttendanceStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersModelCopyWith<$Res> get filters {
    return $AttendanceStatisticsFiltersModelCopyWith<$Res>(_self.filters,
        (value) {
      return _then(_self.copyWith(filters: value));
    });
  }
}

/// @nodoc
mixin _$AttendanceStatisticsSummaryModel {
  @JsonKey(name: 'total_duties')
  int get totalDuties;
  @JsonKey(name: 'date_range')
  AttendanceDateRangeModel get dateRange;
  @JsonKey(name: 'overall_attendance_rate')
  double get overallAttendanceRate;

  /// Create a copy of AttendanceStatisticsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsSummaryModelCopyWith<AttendanceStatisticsSummaryModel>
      get copyWith => _$AttendanceStatisticsSummaryModelCopyWithImpl<
              AttendanceStatisticsSummaryModel>(
          this as AttendanceStatisticsSummaryModel, _$identity);

  /// Serializes this AttendanceStatisticsSummaryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatisticsSummaryModel &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.overallAttendanceRate, overallAttendanceRate) ||
                other.overallAttendanceRate == overallAttendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalDuties, dateRange, overallAttendanceRate);

  @override
  String toString() {
    return 'AttendanceStatisticsSummaryModel(totalDuties: $totalDuties, dateRange: $dateRange, overallAttendanceRate: $overallAttendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatisticsSummaryModelCopyWith<$Res> {
  factory $AttendanceStatisticsSummaryModelCopyWith(
          AttendanceStatisticsSummaryModel value,
          $Res Function(AttendanceStatisticsSummaryModel) _then) =
      _$AttendanceStatisticsSummaryModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_duties') int totalDuties,
      @JsonKey(name: 'date_range') AttendanceDateRangeModel dateRange,
      @JsonKey(name: 'overall_attendance_rate') double overallAttendanceRate});

  $AttendanceDateRangeModelCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$AttendanceStatisticsSummaryModelCopyWithImpl<$Res>
    implements $AttendanceStatisticsSummaryModelCopyWith<$Res> {
  _$AttendanceStatisticsSummaryModelCopyWithImpl(this._self, this._then);

  final AttendanceStatisticsSummaryModel _self;
  final $Res Function(AttendanceStatisticsSummaryModel) _then;

  /// Create a copy of AttendanceStatisticsSummaryModel
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
              as AttendanceDateRangeModel,
      overallAttendanceRate: null == overallAttendanceRate
          ? _self.overallAttendanceRate
          : overallAttendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of AttendanceStatisticsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeModelCopyWith<$Res> get dateRange {
    return $AttendanceDateRangeModelCopyWith<$Res>(_self.dateRange, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AttendanceStatisticsSummaryModel].
extension AttendanceStatisticsSummaryModelPatterns
    on AttendanceStatisticsSummaryModel {
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
    TResult Function(_AttendanceStatisticsSummaryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel() when $default != null:
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
    TResult Function(_AttendanceStatisticsSummaryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel():
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
    TResult? Function(_AttendanceStatisticsSummaryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel() when $default != null:
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
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'date_range') AttendanceDateRangeModel dateRange,
            @JsonKey(name: 'overall_attendance_rate')
            double overallAttendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'date_range') AttendanceDateRangeModel dateRange,
            @JsonKey(name: 'overall_attendance_rate')
            double overallAttendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel():
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
    TResult? Function(
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'date_range') AttendanceDateRangeModel dateRange,
            @JsonKey(name: 'overall_attendance_rate')
            double overallAttendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsSummaryModel() when $default != null:
        return $default(
            _that.totalDuties, _that.dateRange, _that.overallAttendanceRate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttendanceStatisticsSummaryModel
    implements AttendanceStatisticsSummaryModel {
  const _AttendanceStatisticsSummaryModel(
      {@JsonKey(name: 'total_duties') required this.totalDuties,
      @JsonKey(name: 'date_range') required this.dateRange,
      @JsonKey(name: 'overall_attendance_rate')
      required this.overallAttendanceRate});
  factory _AttendanceStatisticsSummaryModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceStatisticsSummaryModelFromJson(json);

  @override
  @JsonKey(name: 'total_duties')
  final int totalDuties;
  @override
  @JsonKey(name: 'date_range')
  final AttendanceDateRangeModel dateRange;
  @override
  @JsonKey(name: 'overall_attendance_rate')
  final double overallAttendanceRate;

  /// Create a copy of AttendanceStatisticsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatisticsSummaryModelCopyWith<_AttendanceStatisticsSummaryModel>
      get copyWith => __$AttendanceStatisticsSummaryModelCopyWithImpl<
          _AttendanceStatisticsSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceStatisticsSummaryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatisticsSummaryModel &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.overallAttendanceRate, overallAttendanceRate) ||
                other.overallAttendanceRate == overallAttendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalDuties, dateRange, overallAttendanceRate);

  @override
  String toString() {
    return 'AttendanceStatisticsSummaryModel(totalDuties: $totalDuties, dateRange: $dateRange, overallAttendanceRate: $overallAttendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatisticsSummaryModelCopyWith<$Res>
    implements $AttendanceStatisticsSummaryModelCopyWith<$Res> {
  factory _$AttendanceStatisticsSummaryModelCopyWith(
          _AttendanceStatisticsSummaryModel value,
          $Res Function(_AttendanceStatisticsSummaryModel) _then) =
      __$AttendanceStatisticsSummaryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_duties') int totalDuties,
      @JsonKey(name: 'date_range') AttendanceDateRangeModel dateRange,
      @JsonKey(name: 'overall_attendance_rate') double overallAttendanceRate});

  @override
  $AttendanceDateRangeModelCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$AttendanceStatisticsSummaryModelCopyWithImpl<$Res>
    implements _$AttendanceStatisticsSummaryModelCopyWith<$Res> {
  __$AttendanceStatisticsSummaryModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatisticsSummaryModel _self;
  final $Res Function(_AttendanceStatisticsSummaryModel) _then;

  /// Create a copy of AttendanceStatisticsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalDuties = null,
    Object? dateRange = null,
    Object? overallAttendanceRate = null,
  }) {
    return _then(_AttendanceStatisticsSummaryModel(
      totalDuties: null == totalDuties
          ? _self.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
      dateRange: null == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as AttendanceDateRangeModel,
      overallAttendanceRate: null == overallAttendanceRate
          ? _self.overallAttendanceRate
          : overallAttendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of AttendanceStatisticsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeModelCopyWith<$Res> get dateRange {
    return $AttendanceDateRangeModelCopyWith<$Res>(_self.dateRange, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}

/// @nodoc
mixin _$AttendanceDateRangeModel {
  @JsonKey(name: 'start_date')
  String get startDate;
  @JsonKey(name: 'end_date')
  String get endDate;
  @JsonKey(name: 'days_count')
  int get daysCount;

  /// Create a copy of AttendanceDateRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceDateRangeModelCopyWith<AttendanceDateRangeModel> get copyWith =>
      _$AttendanceDateRangeModelCopyWithImpl<AttendanceDateRangeModel>(
          this as AttendanceDateRangeModel, _$identity);

  /// Serializes this AttendanceDateRangeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceDateRangeModel &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, daysCount);

  @override
  String toString() {
    return 'AttendanceDateRangeModel(startDate: $startDate, endDate: $endDate, daysCount: $daysCount)';
  }
}

/// @nodoc
abstract mixin class $AttendanceDateRangeModelCopyWith<$Res> {
  factory $AttendanceDateRangeModelCopyWith(AttendanceDateRangeModel value,
          $Res Function(AttendanceDateRangeModel) _then) =
      _$AttendanceDateRangeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'days_count') int daysCount});
}

/// @nodoc
class _$AttendanceDateRangeModelCopyWithImpl<$Res>
    implements $AttendanceDateRangeModelCopyWith<$Res> {
  _$AttendanceDateRangeModelCopyWithImpl(this._self, this._then);

  final AttendanceDateRangeModel _self;
  final $Res Function(AttendanceDateRangeModel) _then;

  /// Create a copy of AttendanceDateRangeModel
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

/// Adds pattern-matching-related methods to [AttendanceDateRangeModel].
extension AttendanceDateRangeModelPatterns on AttendanceDateRangeModel {
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
    TResult Function(_AttendanceDateRangeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel() when $default != null:
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
    TResult Function(_AttendanceDateRangeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel():
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
    TResult? Function(_AttendanceDateRangeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel() when $default != null:
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
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'days_count') int daysCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'days_count') int daysCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel():
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
    TResult? Function(
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'days_count') int daysCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDateRangeModel() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.daysCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttendanceDateRangeModel implements AttendanceDateRangeModel {
  const _AttendanceDateRangeModel(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'days_count') required this.daysCount});
  factory _AttendanceDateRangeModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDateRangeModelFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'days_count')
  final int daysCount;

  /// Create a copy of AttendanceDateRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceDateRangeModelCopyWith<_AttendanceDateRangeModel> get copyWith =>
      __$AttendanceDateRangeModelCopyWithImpl<_AttendanceDateRangeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceDateRangeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceDateRangeModel &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, daysCount);

  @override
  String toString() {
    return 'AttendanceDateRangeModel(startDate: $startDate, endDate: $endDate, daysCount: $daysCount)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceDateRangeModelCopyWith<$Res>
    implements $AttendanceDateRangeModelCopyWith<$Res> {
  factory _$AttendanceDateRangeModelCopyWith(_AttendanceDateRangeModel value,
          $Res Function(_AttendanceDateRangeModel) _then) =
      __$AttendanceDateRangeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'days_count') int daysCount});
}

/// @nodoc
class __$AttendanceDateRangeModelCopyWithImpl<$Res>
    implements _$AttendanceDateRangeModelCopyWith<$Res> {
  __$AttendanceDateRangeModelCopyWithImpl(this._self, this._then);

  final _AttendanceDateRangeModel _self;
  final $Res Function(_AttendanceDateRangeModel) _then;

  /// Create a copy of AttendanceDateRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? daysCount = null,
  }) {
    return _then(_AttendanceDateRangeModel(
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
mixin _$AttendanceStatusBreakdownModel {
  String get status;
  int get count;
  double get percentage;

  /// Create a copy of AttendanceStatusBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatusBreakdownModelCopyWith<AttendanceStatusBreakdownModel>
      get copyWith => _$AttendanceStatusBreakdownModelCopyWithImpl<
              AttendanceStatusBreakdownModel>(
          this as AttendanceStatusBreakdownModel, _$identity);

  /// Serializes this AttendanceStatusBreakdownModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatusBreakdownModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, count, percentage);

  @override
  String toString() {
    return 'AttendanceStatusBreakdownModel(status: $status, count: $count, percentage: $percentage)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatusBreakdownModelCopyWith<$Res> {
  factory $AttendanceStatusBreakdownModelCopyWith(
          AttendanceStatusBreakdownModel value,
          $Res Function(AttendanceStatusBreakdownModel) _then) =
      _$AttendanceStatusBreakdownModelCopyWithImpl;
  @useResult
  $Res call({String status, int count, double percentage});
}

/// @nodoc
class _$AttendanceStatusBreakdownModelCopyWithImpl<$Res>
    implements $AttendanceStatusBreakdownModelCopyWith<$Res> {
  _$AttendanceStatusBreakdownModelCopyWithImpl(this._self, this._then);

  final AttendanceStatusBreakdownModel _self;
  final $Res Function(AttendanceStatusBreakdownModel) _then;

  /// Create a copy of AttendanceStatusBreakdownModel
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

/// Adds pattern-matching-related methods to [AttendanceStatusBreakdownModel].
extension AttendanceStatusBreakdownModelPatterns
    on AttendanceStatusBreakdownModel {
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
    TResult Function(_AttendanceStatusBreakdownModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownModel() when $default != null:
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
    TResult Function(_AttendanceStatusBreakdownModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownModel():
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
    TResult? Function(_AttendanceStatusBreakdownModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatusBreakdownModel() when $default != null:
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
      case _AttendanceStatusBreakdownModel() when $default != null:
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
      case _AttendanceStatusBreakdownModel():
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
      case _AttendanceStatusBreakdownModel() when $default != null:
        return $default(_that.status, _that.count, _that.percentage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttendanceStatusBreakdownModel
    implements AttendanceStatusBreakdownModel {
  const _AttendanceStatusBreakdownModel(
      {required this.status, required this.count, required this.percentage});
  factory _AttendanceStatusBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusBreakdownModelFromJson(json);

  @override
  final String status;
  @override
  final int count;
  @override
  final double percentage;

  /// Create a copy of AttendanceStatusBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatusBreakdownModelCopyWith<_AttendanceStatusBreakdownModel>
      get copyWith => __$AttendanceStatusBreakdownModelCopyWithImpl<
          _AttendanceStatusBreakdownModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceStatusBreakdownModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatusBreakdownModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, count, percentage);

  @override
  String toString() {
    return 'AttendanceStatusBreakdownModel(status: $status, count: $count, percentage: $percentage)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatusBreakdownModelCopyWith<$Res>
    implements $AttendanceStatusBreakdownModelCopyWith<$Res> {
  factory _$AttendanceStatusBreakdownModelCopyWith(
          _AttendanceStatusBreakdownModel value,
          $Res Function(_AttendanceStatusBreakdownModel) _then) =
      __$AttendanceStatusBreakdownModelCopyWithImpl;
  @override
  @useResult
  $Res call({String status, int count, double percentage});
}

/// @nodoc
class __$AttendanceStatusBreakdownModelCopyWithImpl<$Res>
    implements _$AttendanceStatusBreakdownModelCopyWith<$Res> {
  __$AttendanceStatusBreakdownModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatusBreakdownModel _self;
  final $Res Function(_AttendanceStatusBreakdownModel) _then;

  /// Create a copy of AttendanceStatusBreakdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? count = null,
    Object? percentage = null,
  }) {
    return _then(_AttendanceStatusBreakdownModel(
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
mixin _$AttendanceDailyTrendModel {
  String get date;
  int get total;
  int get present;
  int get absent;
  int get late;
  @JsonKey(name: 'attendance_rate')
  double get attendanceRate;

  /// Create a copy of AttendanceDailyTrendModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceDailyTrendModelCopyWith<AttendanceDailyTrendModel> get copyWith =>
      _$AttendanceDailyTrendModelCopyWithImpl<AttendanceDailyTrendModel>(
          this as AttendanceDailyTrendModel, _$identity);

  /// Serializes this AttendanceDailyTrendModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceDailyTrendModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, total, present, absent, late, attendanceRate);

  @override
  String toString() {
    return 'AttendanceDailyTrendModel(date: $date, total: $total, present: $present, absent: $absent, late: $late, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceDailyTrendModelCopyWith<$Res> {
  factory $AttendanceDailyTrendModelCopyWith(AttendanceDailyTrendModel value,
          $Res Function(AttendanceDailyTrendModel) _then) =
      _$AttendanceDailyTrendModelCopyWithImpl;
  @useResult
  $Res call(
      {String date,
      int total,
      int present,
      int absent,
      int late,
      @JsonKey(name: 'attendance_rate') double attendanceRate});
}

/// @nodoc
class _$AttendanceDailyTrendModelCopyWithImpl<$Res>
    implements $AttendanceDailyTrendModelCopyWith<$Res> {
  _$AttendanceDailyTrendModelCopyWithImpl(this._self, this._then);

  final AttendanceDailyTrendModel _self;
  final $Res Function(AttendanceDailyTrendModel) _then;

  /// Create a copy of AttendanceDailyTrendModel
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

/// Adds pattern-matching-related methods to [AttendanceDailyTrendModel].
extension AttendanceDailyTrendModelPatterns on AttendanceDailyTrendModel {
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
    TResult Function(_AttendanceDailyTrendModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel() when $default != null:
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
    TResult Function(_AttendanceDailyTrendModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel():
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
    TResult? Function(_AttendanceDailyTrendModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel() when $default != null:
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
            @JsonKey(name: 'attendance_rate') double attendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel() when $default != null:
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
            @JsonKey(name: 'attendance_rate') double attendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel():
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
            @JsonKey(name: 'attendance_rate') double attendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceDailyTrendModel() when $default != null:
        return $default(_that.date, _that.total, _that.present, _that.absent,
            _that.late, _that.attendanceRate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttendanceDailyTrendModel implements AttendanceDailyTrendModel {
  const _AttendanceDailyTrendModel(
      {required this.date,
      required this.total,
      required this.present,
      required this.absent,
      required this.late,
      @JsonKey(name: 'attendance_rate') required this.attendanceRate});
  factory _AttendanceDailyTrendModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDailyTrendModelFromJson(json);

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
  @JsonKey(name: 'attendance_rate')
  final double attendanceRate;

  /// Create a copy of AttendanceDailyTrendModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceDailyTrendModelCopyWith<_AttendanceDailyTrendModel>
      get copyWith =>
          __$AttendanceDailyTrendModelCopyWithImpl<_AttendanceDailyTrendModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceDailyTrendModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceDailyTrendModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absent, absent) || other.absent == absent) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, total, present, absent, late, attendanceRate);

  @override
  String toString() {
    return 'AttendanceDailyTrendModel(date: $date, total: $total, present: $present, absent: $absent, late: $late, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceDailyTrendModelCopyWith<$Res>
    implements $AttendanceDailyTrendModelCopyWith<$Res> {
  factory _$AttendanceDailyTrendModelCopyWith(_AttendanceDailyTrendModel value,
          $Res Function(_AttendanceDailyTrendModel) _then) =
      __$AttendanceDailyTrendModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String date,
      int total,
      int present,
      int absent,
      int late,
      @JsonKey(name: 'attendance_rate') double attendanceRate});
}

/// @nodoc
class __$AttendanceDailyTrendModelCopyWithImpl<$Res>
    implements _$AttendanceDailyTrendModelCopyWith<$Res> {
  __$AttendanceDailyTrendModelCopyWithImpl(this._self, this._then);

  final _AttendanceDailyTrendModel _self;
  final $Res Function(_AttendanceDailyTrendModel) _then;

  /// Create a copy of AttendanceDailyTrendModel
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
    return _then(_AttendanceDailyTrendModel(
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
mixin _$AttendanceAssistantPerformanceModel {
  @JsonKey(name: 'assistant_id')
  String get assistantId;
  String get name;
  String get username;
  @JsonKey(name: 'total_duties')
  int get totalDuties;
  @JsonKey(name: 'present_count')
  int get presentCount;
  @JsonKey(name: 'absent_count')
  int get absentCount;
  @JsonKey(name: 'late_count')
  int get lateCount;
  @JsonKey(name: 'attendance_rate')
  double get attendanceRate;

  /// Create a copy of AttendanceAssistantPerformanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceAssistantPerformanceModelCopyWith<
          AttendanceAssistantPerformanceModel>
      get copyWith => _$AttendanceAssistantPerformanceModelCopyWithImpl<
              AttendanceAssistantPerformanceModel>(
          this as AttendanceAssistantPerformanceModel, _$identity);

  /// Serializes this AttendanceAssistantPerformanceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceAssistantPerformanceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assistantId, name, username,
      totalDuties, presentCount, absentCount, lateCount, attendanceRate);

  @override
  String toString() {
    return 'AttendanceAssistantPerformanceModel(assistantId: $assistantId, name: $name, username: $username, totalDuties: $totalDuties, presentCount: $presentCount, absentCount: $absentCount, lateCount: $lateCount, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class $AttendanceAssistantPerformanceModelCopyWith<$Res> {
  factory $AttendanceAssistantPerformanceModelCopyWith(
          AttendanceAssistantPerformanceModel value,
          $Res Function(AttendanceAssistantPerformanceModel) _then) =
      _$AttendanceAssistantPerformanceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'assistant_id') String assistantId,
      String name,
      String username,
      @JsonKey(name: 'total_duties') int totalDuties,
      @JsonKey(name: 'present_count') int presentCount,
      @JsonKey(name: 'absent_count') int absentCount,
      @JsonKey(name: 'late_count') int lateCount,
      @JsonKey(name: 'attendance_rate') double attendanceRate});
}

/// @nodoc
class _$AttendanceAssistantPerformanceModelCopyWithImpl<$Res>
    implements $AttendanceAssistantPerformanceModelCopyWith<$Res> {
  _$AttendanceAssistantPerformanceModelCopyWithImpl(this._self, this._then);

  final AttendanceAssistantPerformanceModel _self;
  final $Res Function(AttendanceAssistantPerformanceModel) _then;

  /// Create a copy of AttendanceAssistantPerformanceModel
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

/// Adds pattern-matching-related methods to [AttendanceAssistantPerformanceModel].
extension AttendanceAssistantPerformanceModelPatterns
    on AttendanceAssistantPerformanceModel {
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
    TResult Function(_AttendanceAssistantPerformanceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel() when $default != null:
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
    TResult Function(_AttendanceAssistantPerformanceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel():
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
    TResult? Function(_AttendanceAssistantPerformanceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel() when $default != null:
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
            @JsonKey(name: 'assistant_id') String assistantId,
            String name,
            String username,
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'present_count') int presentCount,
            @JsonKey(name: 'absent_count') int absentCount,
            @JsonKey(name: 'late_count') int lateCount,
            @JsonKey(name: 'attendance_rate') double attendanceRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel() when $default != null:
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
            @JsonKey(name: 'assistant_id') String assistantId,
            String name,
            String username,
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'present_count') int presentCount,
            @JsonKey(name: 'absent_count') int absentCount,
            @JsonKey(name: 'late_count') int lateCount,
            @JsonKey(name: 'attendance_rate') double attendanceRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel():
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
            @JsonKey(name: 'assistant_id') String assistantId,
            String name,
            String username,
            @JsonKey(name: 'total_duties') int totalDuties,
            @JsonKey(name: 'present_count') int presentCount,
            @JsonKey(name: 'absent_count') int absentCount,
            @JsonKey(name: 'late_count') int lateCount,
            @JsonKey(name: 'attendance_rate') double attendanceRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceAssistantPerformanceModel() when $default != null:
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
@JsonSerializable()
class _AttendanceAssistantPerformanceModel
    implements AttendanceAssistantPerformanceModel {
  const _AttendanceAssistantPerformanceModel(
      {@JsonKey(name: 'assistant_id') required this.assistantId,
      required this.name,
      required this.username,
      @JsonKey(name: 'total_duties') required this.totalDuties,
      @JsonKey(name: 'present_count') required this.presentCount,
      @JsonKey(name: 'absent_count') required this.absentCount,
      @JsonKey(name: 'late_count') required this.lateCount,
      @JsonKey(name: 'attendance_rate') required this.attendanceRate});
  factory _AttendanceAssistantPerformanceModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceAssistantPerformanceModelFromJson(json);

  @override
  @JsonKey(name: 'assistant_id')
  final String assistantId;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'total_duties')
  final int totalDuties;
  @override
  @JsonKey(name: 'present_count')
  final int presentCount;
  @override
  @JsonKey(name: 'absent_count')
  final int absentCount;
  @override
  @JsonKey(name: 'late_count')
  final int lateCount;
  @override
  @JsonKey(name: 'attendance_rate')
  final double attendanceRate;

  /// Create a copy of AttendanceAssistantPerformanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceAssistantPerformanceModelCopyWith<
          _AttendanceAssistantPerformanceModel>
      get copyWith => __$AttendanceAssistantPerformanceModelCopyWithImpl<
          _AttendanceAssistantPerformanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceAssistantPerformanceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceAssistantPerformanceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assistantId, name, username,
      totalDuties, presentCount, absentCount, lateCount, attendanceRate);

  @override
  String toString() {
    return 'AttendanceAssistantPerformanceModel(assistantId: $assistantId, name: $name, username: $username, totalDuties: $totalDuties, presentCount: $presentCount, absentCount: $absentCount, lateCount: $lateCount, attendanceRate: $attendanceRate)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceAssistantPerformanceModelCopyWith<$Res>
    implements $AttendanceAssistantPerformanceModelCopyWith<$Res> {
  factory _$AttendanceAssistantPerformanceModelCopyWith(
          _AttendanceAssistantPerformanceModel value,
          $Res Function(_AttendanceAssistantPerformanceModel) _then) =
      __$AttendanceAssistantPerformanceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'assistant_id') String assistantId,
      String name,
      String username,
      @JsonKey(name: 'total_duties') int totalDuties,
      @JsonKey(name: 'present_count') int presentCount,
      @JsonKey(name: 'absent_count') int absentCount,
      @JsonKey(name: 'late_count') int lateCount,
      @JsonKey(name: 'attendance_rate') double attendanceRate});
}

/// @nodoc
class __$AttendanceAssistantPerformanceModelCopyWithImpl<$Res>
    implements _$AttendanceAssistantPerformanceModelCopyWith<$Res> {
  __$AttendanceAssistantPerformanceModelCopyWithImpl(this._self, this._then);

  final _AttendanceAssistantPerformanceModel _self;
  final $Res Function(_AttendanceAssistantPerformanceModel) _then;

  /// Create a copy of AttendanceAssistantPerformanceModel
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
    return _then(_AttendanceAssistantPerformanceModel(
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
mixin _$AttendanceStatisticsFiltersModel {
  @JsonKey(name: 'start_date')
  String get startDate;
  @JsonKey(name: 'end_date')
  String get endDate;
  @JsonKey(name: 'assistant_id')
  String? get assistantId;

  /// Create a copy of AttendanceStatisticsFiltersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AttendanceStatisticsFiltersModelCopyWith<AttendanceStatisticsFiltersModel>
      get copyWith => _$AttendanceStatisticsFiltersModelCopyWithImpl<
              AttendanceStatisticsFiltersModel>(
          this as AttendanceStatisticsFiltersModel, _$identity);

  /// Serializes this AttendanceStatisticsFiltersModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AttendanceStatisticsFiltersModel &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, assistantId);

  @override
  String toString() {
    return 'AttendanceStatisticsFiltersModel(startDate: $startDate, endDate: $endDate, assistantId: $assistantId)';
  }
}

/// @nodoc
abstract mixin class $AttendanceStatisticsFiltersModelCopyWith<$Res> {
  factory $AttendanceStatisticsFiltersModelCopyWith(
          AttendanceStatisticsFiltersModel value,
          $Res Function(AttendanceStatisticsFiltersModel) _then) =
      _$AttendanceStatisticsFiltersModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'assistant_id') String? assistantId});
}

/// @nodoc
class _$AttendanceStatisticsFiltersModelCopyWithImpl<$Res>
    implements $AttendanceStatisticsFiltersModelCopyWith<$Res> {
  _$AttendanceStatisticsFiltersModelCopyWithImpl(this._self, this._then);

  final AttendanceStatisticsFiltersModel _self;
  final $Res Function(AttendanceStatisticsFiltersModel) _then;

  /// Create a copy of AttendanceStatisticsFiltersModel
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

/// Adds pattern-matching-related methods to [AttendanceStatisticsFiltersModel].
extension AttendanceStatisticsFiltersModelPatterns
    on AttendanceStatisticsFiltersModel {
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
    TResult Function(_AttendanceStatisticsFiltersModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel() when $default != null:
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
    TResult Function(_AttendanceStatisticsFiltersModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel():
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
    TResult? Function(_AttendanceStatisticsFiltersModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel() when $default != null:
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
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'assistant_id') String? assistantId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'assistant_id') String? assistantId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel():
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
    TResult? Function(
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'assistant_id') String? assistantId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AttendanceStatisticsFiltersModel() when $default != null:
        return $default(_that.startDate, _that.endDate, _that.assistantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AttendanceStatisticsFiltersModel
    implements AttendanceStatisticsFiltersModel {
  const _AttendanceStatisticsFiltersModel(
      {@JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'assistant_id') this.assistantId});
  factory _AttendanceStatisticsFiltersModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceStatisticsFiltersModelFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'assistant_id')
  final String? assistantId;

  /// Create a copy of AttendanceStatisticsFiltersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AttendanceStatisticsFiltersModelCopyWith<_AttendanceStatisticsFiltersModel>
      get copyWith => __$AttendanceStatisticsFiltersModelCopyWithImpl<
          _AttendanceStatisticsFiltersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AttendanceStatisticsFiltersModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttendanceStatisticsFiltersModel &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.assistantId, assistantId) ||
                other.assistantId == assistantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, assistantId);

  @override
  String toString() {
    return 'AttendanceStatisticsFiltersModel(startDate: $startDate, endDate: $endDate, assistantId: $assistantId)';
  }
}

/// @nodoc
abstract mixin class _$AttendanceStatisticsFiltersModelCopyWith<$Res>
    implements $AttendanceStatisticsFiltersModelCopyWith<$Res> {
  factory _$AttendanceStatisticsFiltersModelCopyWith(
          _AttendanceStatisticsFiltersModel value,
          $Res Function(_AttendanceStatisticsFiltersModel) _then) =
      __$AttendanceStatisticsFiltersModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'assistant_id') String? assistantId});
}

/// @nodoc
class __$AttendanceStatisticsFiltersModelCopyWithImpl<$Res>
    implements _$AttendanceStatisticsFiltersModelCopyWith<$Res> {
  __$AttendanceStatisticsFiltersModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatisticsFiltersModel _self;
  final $Res Function(_AttendanceStatisticsFiltersModel) _then;

  /// Create a copy of AttendanceStatisticsFiltersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? assistantId = freezed,
  }) {
    return _then(_AttendanceStatisticsFiltersModel(
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
