import 'package:mobile/features/course/data/models/base/enroll_course_model.dart';
import 'package:mobile/features/course/domain/entities/base/enroll_course_entity.dart';

extension EnrollCourseEntityExtension on EnrollCourseEntity {
  EnrollCourseModel toModel() {
    return EnrollCourseModel(enrollKey: enrollKey);
  }
}
