import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/models/pagination_model.dart';
import 'lab_schedule_model.dart';

part 'list_lab_schedule_model.freezed.dart';
part 'list_lab_schedule_model.g.dart';

@freezed
abstract class ListLabScheduleModel with _$ListLabScheduleModel {
  const factory ListLabScheduleModel({
    @JsonKey(name: 'data') List<LabScheduleModel>? data,
    @JsonKey(name: 'meta') PaginationModel? pagination,
  }) = _ListLabScheduleModel;

  factory ListLabScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ListLabScheduleModelFromJson(json);
}
