import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';

part 'duty_schedule_list_model.freezed.dart';
part 'duty_schedule_list_model.g.dart';
part 'duty_schedule_list_model_extension.dart';

@freezed
abstract class DutyScheduleListModel with _$DutyScheduleListModel {
  const factory DutyScheduleListModel({
    String? days,
    @JsonKey(name: 'laboratory_assistant')
    List<DutyScheduleModel>? laboratoryAssistant,
  }) = _DutyScheduleListModel;

  factory DutyScheduleListModel.fromJson(Map<String, dynamic> json) =>
      _$DutyScheduleListModelFromJson(json);
}
