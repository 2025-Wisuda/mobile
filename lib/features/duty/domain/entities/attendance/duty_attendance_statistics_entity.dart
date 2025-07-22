import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_attendance_statistics_entity.freezed.dart';

@freezed
abstract class DutyAttendanceStatisticsEntity
    with _$DutyAttendanceStatisticsEntity {
  const factory DutyAttendanceStatisticsEntity({
    required AttendanceStatisticsSummaryEntity summary,
    required List<AttendanceStatusBreakdownEntity> statusBreakdown,
    required List<AttendanceDailyTrendEntity> dailyTrends,
    required List<AttendanceAssistantPerformanceEntity> assistantPerformance,
    required AttendanceStatisticsFiltersEntity filters,
  }) = _DutyAttendanceStatisticsEntity;
}

@freezed
abstract class AttendanceStatisticsSummaryEntity
    with _$AttendanceStatisticsSummaryEntity {
  const factory AttendanceStatisticsSummaryEntity({
    required int totalDuties,
    required AttendanceDateRangeEntity dateRange,
    required double overallAttendanceRate,
  }) = _AttendanceStatisticsSummaryEntity;
}

@freezed
abstract class AttendanceDateRangeEntity with _$AttendanceDateRangeEntity {
  const factory AttendanceDateRangeEntity({
    required String startDate,
    required String endDate,
    required int daysCount,
  }) = _AttendanceDateRangeEntity;
}

@freezed
abstract class AttendanceStatusBreakdownEntity
    with _$AttendanceStatusBreakdownEntity {
  const factory AttendanceStatusBreakdownEntity({
    required String status,
    required int count,
    required double percentage,
  }) = _AttendanceStatusBreakdownEntity;
}

@freezed
abstract class AttendanceDailyTrendEntity with _$AttendanceDailyTrendEntity {
  const factory AttendanceDailyTrendEntity({
    required String date,
    required int total,
    required int present,
    required int absent,
    required int late,
    required double attendanceRate,
  }) = _AttendanceDailyTrendEntity;
}

@freezed
abstract class AttendanceAssistantPerformanceEntity
    with _$AttendanceAssistantPerformanceEntity {
  const factory AttendanceAssistantPerformanceEntity({
    required String assistantId,
    required String name,
    required String username,
    required int totalDuties,
    required int presentCount,
    required int absentCount,
    required int lateCount,
    required double attendanceRate,
  }) = _AttendanceAssistantPerformanceEntity;
}

@freezed
abstract class AttendanceStatisticsFiltersEntity
    with _$AttendanceStatisticsFiltersEntity {
  const factory AttendanceStatisticsFiltersEntity({
    required String startDate,
    required String endDate,
    String? assistantId,
  }) = _AttendanceStatisticsFiltersEntity;
}
