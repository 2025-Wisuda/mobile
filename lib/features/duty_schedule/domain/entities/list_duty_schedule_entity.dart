// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/entities/entity.dart';
import 'duty_schedule_entity.dart';

part 'list_duty_schedule_entity.freezed.dart';

@freezed
abstract class ListDutyScheduleEntity with _$ListDutyScheduleEntity {
  const factory ListDutyScheduleEntity({
    required List<DutyScheduleEntity>? data,
    required MetaEntity? meta,
  }) = _ListDutyScheduleEntity;
}
