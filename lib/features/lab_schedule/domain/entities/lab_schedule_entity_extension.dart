part of 'lab_schedule_entity.dart';

extension LabScheduleEntityExtension on LabScheduleEntity {
  String get idStr => id ?? '';
  String get dateStr => date?.toIso8601String() ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr => endTime ?? '';
  String get typeStr => type ?? '';
  String get detailStr => detail ?? '';
  String get createdByStr => createdBy ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';

  String get dateFullDate => DateHelper.formatFullDate(date: date);

  String get startTimeFormatted {
    return DateHelper.formatTime(startTime);
  }

  String get endTimeFormatted {
    return DateHelper.formatTime(endTime);
  }

  String get startToEndTimeFormatted {
    return '$startTimeFormatted - $endTimeFormatted';
  }

  String get updatedAtFullDate {
    return DateHelper.formatFullDate(date: updatedAt);
  }
}
