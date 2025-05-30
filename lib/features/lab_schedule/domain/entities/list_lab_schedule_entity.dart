// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/entities/entity.dart';
import 'lab_schedule_entity.dart';

part 'list_lab_schedule_entity.freezed.dart';

@freezed
abstract class ListLabScheduleEntity with _$ListLabScheduleEntity {
  const factory ListLabScheduleEntity({
    required List<LabScheduleEntity>? data,
    required MetaEntity? meta,
  }) = _ListLabScheduleEntity;
}
