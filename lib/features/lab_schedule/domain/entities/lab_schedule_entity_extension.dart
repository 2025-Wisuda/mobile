// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

extension LabScheduleEntityExtension on LabScheduleEntity {
  String get idStr => id ?? '';
  String get activityTypeStr =>
      activityType ?? i18n.tr('features.schedule.lab.form.label.startTime');
  String get activityTypeDisplayStr =>
      activityTypeDisplay ??
      i18n.tr('features.schedule.lab.form.label.activityType');
  String get activityDescriptionStr => activityDescription ?? '';
  String get scheduleDateStr => scheduleDate?.toIso8601String() ?? '';
  String get startTimeStr =>
      DateHelper.formatTime(startTime).isNotEmpty
          ? DateHelper.formatTime(startTime)
          : i18n.tr('features.schedule.lab.form.label.startTime');
  String get endTimeStr =>
      DateHelper.formatTime(endTime).isNotEmpty
          ? DateHelper.formatTime(endTime)
          : i18n.tr('features.schedule.lab.form.label.endTime');
  String get createdByFirstName => createdBy?.firstName ?? '';
  String get createdByLastName => createdBy?.lastName ?? '';
  String get createdByStr => '$createdByFirstName $createdByLastName';
  String get isActiveStr =>
      isActive == true
          ? i18n.tr('general.active')
          : i18n.tr('general.inactive');
  String get approvalStatusStr => approvalStatus ?? '';
  String get approvedByFirstName => approvedBy?.firstName ?? '';
  String get approvedByLastName => approvedBy?.lastName ?? '';
  String get approvedByStr => '$approvedByFirstName $approvedByLastName';
  String get approvalTimeStr => approvalTime?.toIso8601String() ?? '';
  String get createdAtStr => DateHelper.formatFullDate(date: createdAt);
  String get updatedAtStr => DateHelper.formatFullDate(date: updatedAt);
  String get startTimeWibStr => DateHelper.formatTime(startTime);
  String get endTimeWibStr => DateHelper.formatTime(endTime);

  String get createdAtWithTime => DateHelper.formatCompactWithTime(updatedAt);
  String get scheduleDateFullDate =>
      DateHelper.formatFullDate(date: scheduleDate);
}
