// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/screens/screen.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final courseRoutes = [
  GetPage(
    name: AppRoute.allCourse,
    page: () => AllCourseScreen(),
    binding: courseBinding(),
  ),
  GetPage(
    name: AppRoute.course,
    page: () => const ListCourseScreen(),
    binding: courseBinding(),
  ),
  GetPage(
    name: AppRoute.courseDetail,
    page: () {
      final courseId = (Get.parameters['id'] ?? '0');
      return DetailCourseScreen(courseId: courseId);
    },
    binding: courseBinding(),
  ),
  GetPage(
    name: AppRoute.createCourse,
    page: () => const CreateCourseScreen(),
    binding: courseBinding(),
  ),
  GetPage(
    name: AppRoute.editCourse,
    page: () {
      final courseId = (Get.parameters['id'] ?? '0');
      return EditCourseScreen(courseId: courseId);
    },
    binding: courseBinding(),
  ),
];
