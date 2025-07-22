part of 'duty_schedule_entity.dart';

extension DutyScheduleEntityExtension on DutyScheduleEntity {
  String get avatarStr => avatar ?? '';
  String get nameStr => name ?? '';
  String get studentNumberStr => studentNumber ?? '';
  String get statusStr => status ?? '';
}
