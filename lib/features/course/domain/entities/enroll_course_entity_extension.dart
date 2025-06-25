import 'package:mobile/features/course/data/models/enroll_course_model.dart';
import 'package:mobile/features/course/domain/entities/enroll_course_entity.dart';

extension EnrollCourseEntityExtension on EnrollCourseEntity {
  EnrollCourseModel toModel() {
    return EnrollCourseModel(enrollKey: enrollKey);
  }
}
