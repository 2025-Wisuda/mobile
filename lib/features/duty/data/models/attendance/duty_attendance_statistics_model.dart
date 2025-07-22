import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_attendance_statistics_model.freezed.dart';
part 'duty_attendance_statistics_model.g.dart';

@freezed
abstract class DutyAttendanceStatisticsModel
    with _$DutyAttendanceStatisticsModel {
  const factory DutyAttendanceStatisticsModel({
    required AttendanceStatisticsSummaryModel summary,
    @JsonKey(name: 'status_breakdown')
    required List<AttendanceStatusBreakdownModel> statusBreakdown,
    @JsonKey(name: 'daily_trends')
    required List<AttendanceDailyTrendModel> dailyTrends,
    @JsonKey(name: 'assistant_performance')
    required List<AttendanceAssistantPerformanceModel> assistantPerformance,
    required AttendanceStatisticsFiltersModel filters,
  }) = _DutyAttendanceStatisticsModel;

  factory DutyAttendanceStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$DutyAttendanceStatisticsModelFromJson(json);
}

@freezed
abstract class AttendanceStatisticsSummaryModel
    with _$AttendanceStatisticsSummaryModel {
  const factory AttendanceStatisticsSummaryModel({
    @JsonKey(name: 'total_duties') required int totalDuties,
    @JsonKey(name: 'date_range') required AttendanceDateRangeModel dateRange,
    @JsonKey(name: 'overall_attendance_rate')
    required double overallAttendanceRate,
  }) = _AttendanceStatisticsSummaryModel;

  factory AttendanceStatisticsSummaryModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceStatisticsSummaryModelFromJson(json);
}

@freezed
abstract class AttendanceDateRangeModel with _$AttendanceDateRangeModel {
  const factory AttendanceDateRangeModel({
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'days_count') required int daysCount,
  }) = _AttendanceDateRangeModel;

  factory AttendanceDateRangeModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDateRangeModelFromJson(json);
}

@freezed
abstract class AttendanceStatusBreakdownModel
    with _$AttendanceStatusBreakdownModel {
  const factory AttendanceStatusBreakdownModel({
    required String status,
    required int count,
    required double percentage,
  }) = _AttendanceStatusBreakdownModel;

  factory AttendanceStatusBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusBreakdownModelFromJson(json);
}

@freezed
abstract class AttendanceDailyTrendModel with _$AttendanceDailyTrendModel {
  const factory AttendanceDailyTrendModel({
    required String date,
    required int total,
    required int present,
    required int absent,
    required int late,
    @JsonKey(name: 'attendance_rate') required double attendanceRate,
  }) = _AttendanceDailyTrendModel;

  factory AttendanceDailyTrendModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDailyTrendModelFromJson(json);
}

@freezed
abstract class AttendanceAssistantPerformanceModel
    with _$AttendanceAssistantPerformanceModel {
  const factory AttendanceAssistantPerformanceModel({
    @JsonKey(name: 'assistant_id') required String assistantId,
    required String name,
    required String username,
    @JsonKey(name: 'total_duties') required int totalDuties,
    @JsonKey(name: 'present_count') required int presentCount,
    @JsonKey(name: 'absent_count') required int absentCount,
    @JsonKey(name: 'late_count') required int lateCount,
    @JsonKey(name: 'attendance_rate') required double attendanceRate,
  }) = _AttendanceAssistantPerformanceModel;

  factory AttendanceAssistantPerformanceModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceAssistantPerformanceModelFromJson(json);
}

@freezed
abstract class AttendanceStatisticsFiltersModel
    with _$AttendanceStatisticsFiltersModel {
  const factory AttendanceStatisticsFiltersModel({
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'assistant_id') String? assistantId,
  }) = _AttendanceStatisticsFiltersModel;

  factory AttendanceStatisticsFiltersModel.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceStatisticsFiltersModelFromJson(json);
}
