import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/entities/pagination_entity.dart';

import 'lab_schedule_entity.dart';

part 'list_lab_schedule_entity.freezed.dart';

@freezed
abstract class ListLabScheduleEntity with _$ListLabScheduleEntity {
  const factory ListLabScheduleEntity({
    required List<LabScheduleEntity>? data,
    required PaginationEntity? pagination,
  }) = _ListLabScheduleEntity;
}
