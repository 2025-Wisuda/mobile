import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_lab_schedule_request_model.freezed.dart';
part 'update_lab_schedule_request_model.g.dart';

@freezed
abstract class UpdateLabScheduleRequestModel
    with _$UpdateLabScheduleRequestModel {
  const factory UpdateLabScheduleRequestModel({
    @JsonKey(name: 'activity_type', includeIfNull: false) String? activityType,
    @JsonKey(name: 'activity_description', includeIfNull: false)
    String? activityDescription,
    @JsonKey(name: 'schedule_date', includeIfNull: false)
    DateTime? scheduleDate,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
  }) = _UpdateLabScheduleRequestModel;

  factory UpdateLabScheduleRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateLabScheduleRequestModelFromJson(json);
}
