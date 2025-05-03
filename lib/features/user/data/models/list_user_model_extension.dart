import 'package:mobile/core/models/pagination_model_extension.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

extension ListUserModelExtension on ListUserModel {
  ListUserEntity toEntity() {
    return ListUserEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      pagination: pagination?.toEntity(),
    );
  }
}
