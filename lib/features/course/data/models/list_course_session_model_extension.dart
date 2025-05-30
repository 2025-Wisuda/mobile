// Project imports:
import 'package:mobile/core/models/meta_model_extension.dart';
import 'package:mobile/features/course/data/models/course_session_model_extension.dart';
import 'package:mobile/features/course/data/models/list_course_session_model.dart';
import 'package:mobile/features/course/domain/entities/list_course_session_entity.dart';

extension ListCourseSessionModelExtension on ListCourseSessionModel {
  ListCourseSessionEntity toEntity() {
    return ListCourseSessionEntity(
      data: data?.map((e) => e.toEntity()).toList(),
      meta: meta?.toEntity(),
    );
  }
}
