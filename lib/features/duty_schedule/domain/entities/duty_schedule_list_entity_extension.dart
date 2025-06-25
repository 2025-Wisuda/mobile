part of 'duty_schedule_list_entity.dart';

extension DutyScheduleListEntityExtension on DutyScheduleListEntity {
  String get daysStr => days ?? '';

  List<DutyScheduleEntity> get assistants => laboratoryAssistant ?? [];

  bool get hasAssistants => assistants.isNotEmpty;

  int get assistantCount => assistants.length;
}
