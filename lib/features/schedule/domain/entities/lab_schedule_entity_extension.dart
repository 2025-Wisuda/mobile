import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/features/schedule/domain/entities/lab_schedule_entity.dart';

extension LabScheduleEntityExtension on LabScheduleEntity {
  String get idStr => id ?? '';
  String get activityTypeStr =>
      activityType ?? 'features.schedule.lab.form.label.startTime'.tr();
  String get activityTypeDisplayStr =>
      activityTypeDisplay ??
      'features.schedule.lab.form.label.activityType'.tr();
  String get activityDescriptionStr => activityDescription ?? '-';
  String get scheduleDateStr => scheduleDate?.toIso8601String() ?? '';
  String get startTimeStr =>
      startTime ?? 'features.schedule.lab.form.label.startTime'.tr();
  String get endTimeStr =>
      endTime ?? 'features.schedule.lab.form.label.endTime'.tr();
  String get createdByFirstName => createdBy?.firstName ?? '-';
  String get createdByLastName => createdBy?.lastName ?? '-';
  String get createdByStr => '$createdByFirstName $createdByLastName';
  String get isActiveStr =>
      isActive == true ? 'general.active'.tr() : 'general.inactive'.tr();
  String get approvalStatusStr => approvalStatus ?? '-';
  String get approvedByFirstName => approvedBy?.firstName ?? '-';
  String get approvedByLastName => approvedBy?.lastName ?? '-';
  String get approvedByStr => '$approvedByFirstName $approvedByLastName';
  String get approvalTimeStr => approvalTime?.toIso8601String() ?? '-';
  String get createdAtStr => createdAt?.toIso8601String() ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';

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
}
