// Project imports:
import 'package:mobile/features/course/data/models/save_course_request_model.dart';
import 'package:mobile/features/course/domain/entities/save_course_request_entity.dart';

extension SaveCourseRequestEntityExtension on SaveCourseRequestEntity {
  SaveCourseRequestModel toModel() {
    return SaveCourseRequestModel(
      image: image,
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
      students: students,
      teachingAssistants: teachingAssistants,
      enrollKey: enrollKey,
    );
  }
}
