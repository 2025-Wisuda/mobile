part of 'save_course_session_request_entity.dart';

extension SaveCourseSessionRequestEntityExtension
    on SaveCourseSessionRequestEntity {
  SaveCourseSessionRequestModel toModel() {
    final model = SaveCourseSessionRequestModel(
      title: title,
      description: description,
      type: type,
      date: date,
      startTime: startTime,
      endTime: endTime,
      status: status,
      teachingAssistants: teachingAssistants,
    );

    return model;
  }
}
