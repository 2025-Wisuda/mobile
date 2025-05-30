// Project imports:
import 'package:mobile/features/course/data/models/course_session_model.dart';
import 'package:mobile/features/course/domain/entities/course_session_entity.dart';
import 'package:mobile/features/user/data/models/user_model_extension.dart';

extension CourseSessionModelExtension on CourseSessionModel {
  CourseSessionEntity toEntity() {
    return CourseSessionEntity(
      id: id,
      title: title,
      course: course,
      sessionDate: sessionDate,
      startTime: startTime,
      endTime: endTime,
      status: status,
      teachingAssistants: teachingAssistants?.map((e) => e.toEntity()).toList(),
      createdBy: createdBy?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
