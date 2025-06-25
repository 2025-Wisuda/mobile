part of 'save_course_request_entity.dart';

extension SaveCourseRequestEntityExtension on SaveCourseRequestEntity {
  SaveCourseRequestModel toModel() {
    return SaveCourseRequestModel(
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
      students: students,
      teachingAssistants: teachingAssistants,
      enrollKey: enrollKey,
      image: image,
    );
  }
}
