import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/models/pagination_model.dart';
import 'duty_schedule_model.dart';

part 'list_duty_schedule_model.freezed.dart';
part 'list_duty_schedule_model.g.dart';

@freezed
abstract class ListDutyScheduleModel with _$ListDutyScheduleModel {
  const factory ListDutyScheduleModel({
    @JsonKey(name: 'data') List<DutyScheduleModel>? data,
    @JsonKey(name: 'meta') PaginationModel? pagination,
  }) = _ListDutyScheduleModel;

  factory ListDutyScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ListDutyScheduleModelFromJson(json);
}
