// Project imports:
import 'package:mobile/features/course/data/models/save_course_session_request_model.dart';
import 'package:mobile/features/course/domain/entities/save_course_session_request_entity.dart';

extension SaveCourseSessionRequestEntityExtension
    on SaveCourseSessionRequestEntity {
  SaveCourseSessionRequestModel toModel() {
    return SaveCourseSessionRequestModel(
      title: title,
      course: course,
      sessionDate: sessionDate,
      startTime: startTime,
      endTime: endTime,
      status: status,
      teachingAssistants: teachingAssistants,
    );
  }
}
