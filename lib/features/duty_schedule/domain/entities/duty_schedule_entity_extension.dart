part of 'duty_schedule_entity.dart';


extension DutyScheduleEntityExtension on DutyScheduleEntity {
  String get idStr => id ?? '';
  String get daysStr => days ?? '';
  String get startDateStr => startDate?.toIso8601String() ?? '';
  String get endDateStr => endDate?.toIso8601String() ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr =>
      endTime ?? '';
  String get isActiveStr =>
      isActive == true
          ? ''
          : '';
  String get createdAtStr => DateHelper.formatFullDate(date: createdAt);
  String get updatedAtStr => DateHelper.formatFullDate(date: updatedAt);
  String get startTimeWibStr => DateHelper.formatTime(startTime);
  String get endTimeWibStr => DateHelper.formatTime(endTime);
  String get teachingAssistantNameStr {
    return teachingAssistants
            ?.map((e) => '${e.firstName ?? ''} ${e.lastName ?? ''}'.trim())
            .join(', ') ??
        '';
  }

  String get teachingAssistantAvatarStr {
    return teachingAssistants?.map((e) => e.avatarUrl ?? '').join(', ') ?? '';
  }
}
