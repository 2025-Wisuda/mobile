import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/user/data/models/model.dart';

extension CourseModelExtension on CourseModel {
  CourseEntity toEntity() {
    return CourseEntity(
      id: id,
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
      students: students?.map((e) => e.toEntity()).toList(),
      teachingAssistants: teachingAssistants?.map((e) => e.toEntity()).toList(),
      enrollKey: enrollKey,
      totalStudents: totalStudents,
      totalTeachingAssistants: totalTeachingAssistants,
      totalSessions: totalSessions,
      hasEnrollment: hasEnrollment,
      isEnrollmentOpen: isEnrollmentOpen,
      image: image,
      recentSessions: recentSessions?.map((e) => e.toEntity()).toList(),
      isParticipant: isParticipant,
      createdBy: createdBy?.toEntity(),
    );
  }
}
