import 'package:mobile/core/models/pagination_model_extension.dart';
import 'package:mobile/features/schedule/data/models/model.dart';
import 'package:mobile/features/schedule/domain/entities/entity.dart';

extension ListLabScheduleModelExtension on ListLabScheduleModel {
  ListLabScheduleEntity toEntity() {
    return ListLabScheduleEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      pagination: pagination?.toEntity(),
    );
  }
}
