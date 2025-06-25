part of 'meta_model.dart';

extension MetaModelExtension on MetaModel {
  MetaEntity toEntity() {
    return MetaEntity(pagination: pagination?.toEntity());
  }
}
