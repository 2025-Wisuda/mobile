// Project imports:
import 'package:mobile/core/models/model.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';

extension ListDutyScheduleModelExtension on ListDutyScheduleModel {
  ListDutyScheduleEntity toEntity() {
    return ListDutyScheduleEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      meta: meta?.toEntity(),
    );
  }
}
