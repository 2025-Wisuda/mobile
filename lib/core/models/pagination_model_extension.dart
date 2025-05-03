import 'package:mobile/core/models/pagination_model.dart';
import 'package:mobile/core/entities/pagination_entity.dart';

extension PaginationModelExtension on PaginationModel {
  PaginationEntity toEntity() {
    return PaginationEntity(
      next: next,
      previous: previous,
      totalItems: totalItems ?? 0,
      totalPages: totalPages ?? 0,
      currentPage: currentPage ?? 0,
      pageSize: pageSize ?? 0,
    );
  }
}
