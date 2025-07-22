import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/session/course_session_entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

extension CourseSessionEntityExtension on CourseSessionEntity {
  CourseSessionModel toModel() {
    return CourseSessionModel(
      id: id,
      title: title,
      description: description,
      type: type,
      date: date,
      startTime: startTime,
      endTime: endTime,
      status: status,
      teachingAssistants: teachingAssistants?.map((e) => e.toModel()).toList(),
      teachingAssistantIds: teachingAssistantIds,
    );
  }

  String get idStr => id ?? '';
  String get titleStr => title ?? '';
  String get descriptionStr => description ?? '';
  String get typeStr => type ?? '';
  String get dateStr => date?.toIso8601String() ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr => endTime ?? '';
  String get statusStr => status ?? '';
  String get teachingAssistantIdsStr => (teachingAssistantIds ?? []).join(', ');

  String get titleUpperStr {
    return titleStr.toUpperCase();
  }

  String get dateFullDate {
    return DateHelper.formatFullDate(date: date);
  }

  String get startTimeFormatted {
    return DateHelper.formatTime(startTime);
  }

  String get endTimeFormatted {
    return DateHelper.formatTime(endTime);
  }
}
