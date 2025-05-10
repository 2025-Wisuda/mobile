import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/features/duty_schedule/domain/entities/duty_schedule_entity.dart';

extension DutyScheduleEntityExtension on DutyScheduleEntity {
  String get idStr => id ?? '';
  String get daysStr => days ?? '-';
  String get startDateStr => startDate?.toIso8601String() ?? '-';
  String get endDateStr => endDate?.toIso8601String() ?? '-';
  String get startTimeStr =>
      startTime ?? 'features.schedule.duty.form.label.startTime'.tr();
  String get endTimeStr =>
      endTime ?? 'features.schedule.duty.form.label.endTime'.tr();
  String get isActiveStr =>
      isActive == true ? 'general.active'.tr() : 'general.inactive'.tr();
  String get createdAtStr => createdAt?.toIso8601String() ?? '-';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '-';

  String get startTimeWibStr {
    try {
      final time = DateFormat("HH:mm:ss").parse(startTime ?? '');
      return DateFormat.Hm().format(time);
    } catch (_) {
      return '-';
    }
  }

  String get endTimeWibStr {
    try {
      final time = DateFormat("HH:mm:ss").parse(endTime ?? '');
      return DateFormat.Hm().format(time);
    } catch (_) {
      return '-';
    }
  }

  // TODO 2: Make this dynamic
  String get teachingAssistantNameStr {
    return teachingAssistants
            ?.map((e) => '${e.firstName ?? ''} ${e.lastName ?? ''}'.trim())
            .join(', ') ??
        '-';
  }

  String get teachingAssistantAvatarStr {
    return teachingAssistants?.map((e) => e.avatar ?? '').join(', ') ?? '';
  }
}
