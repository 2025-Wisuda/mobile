// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/duty_schedule/domain/entities/duty_schedule_entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

extension DutyScheduleEntityExtension on DutyScheduleEntity {
  String get idStr => id ?? '';
  String get daysStr => days ?? '';
  String get startDateStr => startDate?.toIso8601String() ?? '';
  String get endDateStr => endDate?.toIso8601String() ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr =>
      endTime ?? i18n.tr('features.schedule.duty.form.label.endTime');
  String get isActiveStr =>
      isActive == true
          ? i18n.tr('general.active')
          : i18n.tr('general.inactive');
  String get createdAtStr => DateHelper.formatFullDate(date: createdAt);
  String get updatedAtStr => DateHelper.formatFullDate(date: updatedAt);
  String get startTimeWibStr => DateHelper.formatTime(startTime);
  String get endTimeWibStr => DateHelper.formatTime(endTime);
  // TODO 2: Make this dynamic
  String get teachingAssistantNameStr {
    return teachingAssistants
            ?.map((e) => '${e.firstName ?? ''} ${e.lastName ?? ''}'.trim())
            .join(', ') ??
        '';
  }

  String get teachingAssistantAvatarStr {
    return teachingAssistants?.map((e) => e.avatar ?? '').join(', ') ?? '';
  }
}
