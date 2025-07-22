import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/user/data/models/model.dart';

extension CourseSessionModelExtension on CourseSessionModel {
  CourseSessionEntity toEntity() {
    return CourseSessionEntity(
      id: id,
      title: title,
      description: description,
      type: type,
      date: date,
      startTime: startTime,
      endTime: endTime,
      status: status,
      teachingAssistants: teachingAssistants?.map((e) => e.toEntity()).toList(),
      teachingAssistantIds: teachingAssistantIds,
    );
  }
}
