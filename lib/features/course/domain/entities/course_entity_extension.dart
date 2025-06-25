import 'package:mobile/features/course/domain/entities/course_entity.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

extension CourseEntityExtension on CourseEntity {
  String get idStr => id ?? '';
  String get imageStr => image ?? '';
  String get titleStr => title ?? '';
  String get descriptionStr => description ?? '';
  String get startDateStr => startDate?.toIso8601String() ?? '';
  String get endDateStr => endDate?.toIso8601String() ?? '';
  String get enrollKeyStr => enrollKey ?? '';
  String get totalStudentsStr => totalStudents?.toString() ?? '0';
  String get totalTeachingAssistantsStr =>
      totalTeachingAssistants?.toString() ?? '0';
  String get startDateFormatted =>
      DateHelper.formatDayMonthYear(date: startDate);
  String get endDateFormatted => DateHelper.formatDayMonthYear(date: endDate);
  String get titleUpperStr => title?.toUpperCase() ?? '';

  int get totalStudent => totalStudents?.toInt() ?? 0;
  int get totalTeachingAssistant => totalTeachingAssistants?.toInt() ?? 0;
  int get totalParticipantsStr => totalStudent + totalTeachingAssistant;
}
