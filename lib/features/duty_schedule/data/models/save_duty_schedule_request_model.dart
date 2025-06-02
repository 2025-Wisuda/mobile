import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_duty_schedule_request_model.freezed.dart';
part 'save_duty_schedule_request_model.g.dart';

@freezed
abstract class SaveDutyScheduleRequestModel
    with _$SaveDutyScheduleRequestModel {
  const factory SaveDutyScheduleRequestModel({
    @JsonKey(name: 'teaching_assistants', includeIfNull: false)
    List<String>? teachingAssistantIds,
    @JsonKey(name: 'days', includeIfNull: false) String? days,
    @JsonKey(name: 'start_date', includeIfNull: false) DateTime? startDate,
    @JsonKey(name: 'end_date', includeIfNull: false) DateTime? endDate,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
  }) = _SaveDutyScheduleRequestModel;

  factory SaveDutyScheduleRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveDutyScheduleRequestModelFromJson(json);
}
