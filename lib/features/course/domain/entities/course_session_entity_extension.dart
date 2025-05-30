// Package imports:

// Project imports:
import 'package:mobile/features/course/domain/entities/course_session_entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

extension CourseSessionEntityExtension on CourseSessionEntity {
  String get idStr => id ?? '';
  String get titleStr => title ?? '';
  String get courseStr => course ?? '';
  String get sessionDateStr => sessionDate?.toIso8601String() ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr => endTime ?? '';
  String get statusStr => status ?? '';
  String get createdByStr =>
      '${createdBy?.firstName ?? ''} ${createdBy?.lastName ?? ''}';
  String get createdAtStr => DateHelper.formatFullDate(date: createdAt);
  String get updatedAtStr => DateHelper.formatFullDate(date: updatedAt);
  String get startTimeWibStr => DateHelper.formatTime(startTime);
  String get endTimeWibStr => DateHelper.formatTime(endTime);

  String get titleUpperStr {
    return titleStr.toUpperCase();
  }

  String get sessionDateFullDate {
    return DateHelper.formatFullDate(date: sessionDate);
  }
}
