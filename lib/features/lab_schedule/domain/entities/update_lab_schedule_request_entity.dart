import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_lab_schedule_request_entity.freezed.dart';

@freezed
abstract class UpdateLabScheduleRequestEntity
    with _$UpdateLabScheduleRequestEntity {
  const factory UpdateLabScheduleRequestEntity({
    String? activityType,
    String? activityDescription,
    DateTime? scheduleDate,
    String? startTime,
    String? endTime,
  }) = _UpdateLabScheduleRequestEntity;
}
