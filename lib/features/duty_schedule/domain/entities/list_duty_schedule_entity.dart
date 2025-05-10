import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/entities/pagination_entity.dart';
import 'duty_schedule_entity.dart';

part 'list_duty_schedule_entity.freezed.dart';

@freezed
abstract class ListDutyScheduleEntity with _$ListDutyScheduleEntity {
  const factory ListDutyScheduleEntity({
    required List<DutyScheduleEntity>? data,
    required PaginationEntity? pagination,
  }) = _ListDutyScheduleEntity;
}
