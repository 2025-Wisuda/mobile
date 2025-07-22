// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_attendance_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DutyAttendanceStatisticsModel _$DutyAttendanceStatisticsModelFromJson(
        Map<String, dynamic> json) =>
    _DutyAttendanceStatisticsModel(
      summary: AttendanceStatisticsSummaryModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      statusBreakdown: (json['status_breakdown'] as List<dynamic>)
          .map((e) => AttendanceStatusBreakdownModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      dailyTrends: (json['daily_trends'] as List<dynamic>)
          .map((e) =>
              AttendanceDailyTrendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assistantPerformance: (json['assistant_performance'] as List<dynamic>)
          .map((e) => AttendanceAssistantPerformanceModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      filters: AttendanceStatisticsFiltersModel.fromJson(
          json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DutyAttendanceStatisticsModelToJson(
        _DutyAttendanceStatisticsModel instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'status_breakdown': instance.statusBreakdown,
      'daily_trends': instance.dailyTrends,
      'assistant_performance': instance.assistantPerformance,
      'filters': instance.filters,
    };

_AttendanceStatisticsSummaryModel _$AttendanceStatisticsSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _AttendanceStatisticsSummaryModel(
      totalDuties: (json['total_duties'] as num).toInt(),
      dateRange: AttendanceDateRangeModel.fromJson(
          json['date_range'] as Map<String, dynamic>),
      overallAttendanceRate:
          (json['overall_attendance_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$AttendanceStatisticsSummaryModelToJson(
        _AttendanceStatisticsSummaryModel instance) =>
    <String, dynamic>{
      'total_duties': instance.totalDuties,
      'date_range': instance.dateRange,
      'overall_attendance_rate': instance.overallAttendanceRate,
    };

_AttendanceDateRangeModel _$AttendanceDateRangeModelFromJson(
        Map<String, dynamic> json) =>
    _AttendanceDateRangeModel(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      daysCount: (json['days_count'] as num).toInt(),
    );

Map<String, dynamic> _$AttendanceDateRangeModelToJson(
        _AttendanceDateRangeModel instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'days_count': instance.daysCount,
    };

_AttendanceStatusBreakdownModel _$AttendanceStatusBreakdownModelFromJson(
        Map<String, dynamic> json) =>
    _AttendanceStatusBreakdownModel(
      status: json['status'] as String,
      count: (json['count'] as num).toInt(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$AttendanceStatusBreakdownModelToJson(
        _AttendanceStatusBreakdownModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
      'percentage': instance.percentage,
    };

_AttendanceDailyTrendModel _$AttendanceDailyTrendModelFromJson(
        Map<String, dynamic> json) =>
    _AttendanceDailyTrendModel(
      date: json['date'] as String,
      total: (json['total'] as num).toInt(),
      present: (json['present'] as num).toInt(),
      absent: (json['absent'] as num).toInt(),
      late: (json['late'] as num).toInt(),
      attendanceRate: (json['attendance_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$AttendanceDailyTrendModelToJson(
        _AttendanceDailyTrendModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'total': instance.total,
      'present': instance.present,
      'absent': instance.absent,
      'late': instance.late,
      'attendance_rate': instance.attendanceRate,
    };

_AttendanceAssistantPerformanceModel
    _$AttendanceAssistantPerformanceModelFromJson(Map<String, dynamic> json) =>
        _AttendanceAssistantPerformanceModel(
          assistantId: json['assistant_id'] as String,
          name: json['name'] as String,
          username: json['username'] as String,
          totalDuties: (json['total_duties'] as num).toInt(),
          presentCount: (json['present_count'] as num).toInt(),
          absentCount: (json['absent_count'] as num).toInt(),
          lateCount: (json['late_count'] as num).toInt(),
          attendanceRate: (json['attendance_rate'] as num).toDouble(),
        );

Map<String, dynamic> _$AttendanceAssistantPerformanceModelToJson(
        _AttendanceAssistantPerformanceModel instance) =>
    <String, dynamic>{
      'assistant_id': instance.assistantId,
      'name': instance.name,
      'username': instance.username,
      'total_duties': instance.totalDuties,
      'present_count': instance.presentCount,
      'absent_count': instance.absentCount,
      'late_count': instance.lateCount,
      'attendance_rate': instance.attendanceRate,
    };

_AttendanceStatisticsFiltersModel _$AttendanceStatisticsFiltersModelFromJson(
        Map<String, dynamic> json) =>
    _AttendanceStatisticsFiltersModel(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      assistantId: json['assistant_id'] as String?,
    );

Map<String, dynamic> _$AttendanceStatisticsFiltersModelToJson(
        _AttendanceStatisticsFiltersModel instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'assistant_id': instance.assistantId,
    };
