// Project imports:
import 'package:mobile/core/entities/meta_entity.dart';
import 'package:mobile/core/models/meta_model.dart';
import 'package:mobile/core/models/pagination_model_extension.dart';

extension MetaModelExtension on MetaModel {
  MetaEntity toEntity() {
    return MetaEntity(pagination: pagination?.toEntity());
  }
}
