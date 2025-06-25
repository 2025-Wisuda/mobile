import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';

part 'duty_schedule_model.freezed.dart';
part 'duty_schedule_model.g.dart';
part 'duty_schedule_model_extension.dart';

@freezed
abstract class DutyScheduleModel with _$DutyScheduleModel {
  const factory DutyScheduleModel({
    @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
    @JsonKey(name: 'name', includeIfNull: false) String? name,
    @JsonKey(name: 'student_number', includeIfNull: false)
    String? studentNumber,
    @JsonKey(name: 'status', includeIfNull: false) String? status,
  }) = _DutyScheduleModel;

  factory DutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleModelFromJson(json);
}
