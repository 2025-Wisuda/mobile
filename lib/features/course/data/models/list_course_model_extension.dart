// Project imports:
import 'package:mobile/core/models/meta_model_extension.dart';
import 'package:mobile/features/course/data/models/course_model_extension.dart';
import 'package:mobile/features/course/data/models/list_course_model.dart';
import 'package:mobile/features/course/domain/entities/list_course_entity.dart';

extension ListCourseModelExtension on ListCourseModel {
  ListCourseEntity toEntity() {
    return ListCourseEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      meta: meta?.toEntity(),
    );
  }
}
