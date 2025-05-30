// Project imports:
import 'package:mobile/features/course/data/models/course_model.dart';
import 'package:mobile/features/course/data/models/course_session_model_extension.dart';
import 'package:mobile/features/course/domain/entities/course_entity.dart';
import 'package:mobile/features/user/data/models/user_model_extension.dart';

extension CourseModelExtension on CourseModel {
  CourseEntity toEntity() {
    return CourseEntity(
      id: id,
      image: image,
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
      students: students?.map((e) => e.toEntity()).toList(),
      teachingAssistants: teachingAssistants?.map((e) => e.toEntity()).toList(),
      sessions: sessions?.map((e) => e.toEntity()).toList(),
      createdBy: createdBy?.toEntity(),
      enrollKey: enrollKey,
      totalStudents: totalStudents,
      totalTeachingAssistants: totalTeachingAssistants,
      totalParticipants: totalParticipants,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
