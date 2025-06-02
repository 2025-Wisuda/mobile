// Project imports:
import 'package:mobile/core/models/model.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';

extension ListLabScheduleModelExtension on ListLabScheduleModel {
  ListLabScheduleEntity toEntity() {
    return ListLabScheduleEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      meta: meta?.toEntity(),
    );
  }
}
