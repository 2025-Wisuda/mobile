import 'package:mobile/core/models/pagination_model_extension.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/list_duty_schedule_entity.dart';

extension ListDutyScheduleModelExtension on ListDutyScheduleModel {
  ListDutyScheduleEntity toEntity() {
    return ListDutyScheduleEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      pagination: pagination?.toEntity(),
    );
  }
}
