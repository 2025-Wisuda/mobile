import '../../../domain/entities/attendance/duty_attendance_statistics_entity.dart';
import 'duty_attendance_statistics_model.dart';

extension DutyAttendanceStatisticsModelExtension
    on DutyAttendanceStatisticsModel {
  DutyAttendanceStatisticsEntity toEntity() {
    return DutyAttendanceStatisticsEntity(
      summary: summary.toEntity(),
      statusBreakdown: statusBreakdown.map((e) => e.toEntity()).toList(),
      dailyTrends: dailyTrends.map((e) => e.toEntity()).toList(),
      assistantPerformance:
          assistantPerformance.map((e) => e.toEntity()).toList(),
      filters: filters.toEntity(),
    );
  }
}

extension AttendanceStatisticsSummaryModelExtension
    on AttendanceStatisticsSummaryModel {
  AttendanceStatisticsSummaryEntity toEntity() {
    return AttendanceStatisticsSummaryEntity(
      totalDuties: totalDuties,
      dateRange: dateRange.toEntity(),
      overallAttendanceRate: overallAttendanceRate,
    );
  }
}

extension AttendanceDateRangeModelExtension on AttendanceDateRangeModel {
  AttendanceDateRangeEntity toEntity() {
    return AttendanceDateRangeEntity(
      startDate: startDate,
      endDate: endDate,
      daysCount: daysCount,
    );
  }
}

extension AttendanceStatusBreakdownModelExtension
    on AttendanceStatusBreakdownModel {
  AttendanceStatusBreakdownEntity toEntity() {
    return AttendanceStatusBreakdownEntity(
      status: status,
      count: count,
      percentage: percentage,
    );
  }
}

extension AttendanceDailyTrendModelExtension on AttendanceDailyTrendModel {
  AttendanceDailyTrendEntity toEntity() {
    return AttendanceDailyTrendEntity(
      date: date,
      total: total,
      present: present,
      absent: absent,
      late: late,
      attendanceRate: attendanceRate,
    );
  }
}

extension AttendanceAssistantPerformanceModelExtension
    on AttendanceAssistantPerformanceModel {
  AttendanceAssistantPerformanceEntity toEntity() {
    return AttendanceAssistantPerformanceEntity(
      assistantId: assistantId,
      name: name,
      username: username,
      totalDuties: totalDuties,
      presentCount: presentCount,
      absentCount: absentCount,
      lateCount: lateCount,
      attendanceRate: attendanceRate,
    );
  }
}

extension AttendanceStatisticsFiltersModelExtension
    on AttendanceStatisticsFiltersModel {
  AttendanceStatisticsFiltersEntity toEntity() {
    return AttendanceStatisticsFiltersEntity(
      startDate: startDate,
      endDate: endDate,
      assistantId: assistantId,
    );
  }
}
