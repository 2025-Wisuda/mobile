import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/screens/screen.dart';

final courseRoutes = [
  GetPage(
    name: AppRoute.createCourse,
    page: () => const CreateCourseScreen(),
    binding: MultiCourseBinding(
      controllers: [CourseControllerType.courseForm],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.updateCourse,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      return UpdateCourseScreen(courseId: courseId);
    },
    binding: MultiCourseBinding(
      controllers: [CourseControllerType.courseForm],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.detailCourse,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      return DetailCourseScreen(courseId: courseId);
    },
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.courseForm,
        CourseControllerType.fetchCourseDetail,
        CourseControllerType.courseWrapper,
        CourseControllerType.enrollCourse,
        CourseControllerType.deleteCourse,
      ],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.enrollCourse,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      final courseEntity =
          Get.arguments != null ? Get.arguments['courseEntity'] : null;
      return EnrollCourseScreen(courseId: courseId, courseEntity: courseEntity);
    },
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.fetchCourseDetail,
        CourseControllerType.courseWrapper,
        CourseControllerType.enrollCourse
      ],
    ),
  ),
  GetPage(
    name: AppRoute.myCourses,
    page: () => const MyCourseScreen(),
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.fetchMyCourse,
        CourseControllerType.courseWrapper,
        CourseControllerType.fetchListCourse,
        CourseControllerType.fetchCourseDetail,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.course,
    page: () => const CourseScreen(),
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.fetchMyCourse,
        CourseControllerType.courseWrapper,
        CourseControllerType.fetchListCourse,
        CourseControllerType.fetchCourseDetail,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.detailCourseSession,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      final courseSessionId = Get.parameters['courseSessionId'] ?? '';
      return DetailCourseSessionScreen(
        courseId: courseId,
        courseSessionId: courseSessionId,
      );
    },
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.fetchCourseSessionDetail,
        CourseControllerType.courseSessionWrapper,
        CourseControllerType.courseSessionForm,
        CourseControllerType.partialUpdateCourseSession,
        CourseControllerType.deleteCourseSession,
        CourseControllerType.fetchMyCourseSessionAttendance,
      ],
      userControllers: [
        UserControllerType.fetchUserProfile,
        UserControllerType.fetchListUser,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.createCourseSession,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      return CreateCourseSessionScreen(courseId: courseId);
    },
    binding: MultiCourseBinding(
      controllers: [CourseControllerType.courseSessionForm],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.updateCourseSession,
    page: () {
      final courseId = Get.parameters['courseId'] ?? '';
      final courseSessionId = Get.parameters['courseSessionId'] ?? '';
      return UpdateCourseSessionScreen(
        courseId: courseId,
        courseSessionId: courseSessionId,
      );
    },
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.courseSessionForm,
        CourseControllerType.partialUpdateCourseSession,
        CourseControllerType.fetchCourseSessionDetail,
      ],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.courseSessionAttendanceList,
    page: () {
      return CourseSessionAttendanceScreen();
    },
    binding: MultiCourseBinding(
      controllers: [
        CourseControllerType.fetchListCourseSessionAttendance,
        CourseControllerType.fetchCourseSessionAttendanceDetail,
      ],
    ),
  ),

  // GetPage(
  //   name: AppRoute.manualOverrideCourseSessionAttendance,
  //   page: () {
  //     final courseId = Get.parameters['courseId'] ?? '';
  //     final courseSessionId = Get.parameters['courseSessionId'] ?? '';
  //     final attendanceId = Get.parameters['attendanceId'] ?? '';
  //     return ManualOverrideCourseSessionAttendanceScreen(
  //       courseId: courseId,
  //       courseSessionId: courseSessionId,
  //       attendanceId: attendanceId,
  //     );
  //   },
  //   binding: MultiCourseBinding(
  //     controllers: [
  //       CourseControllerType.manualOverrideAttendance,
  //       CourseControllerType.fetchCourseSessionAttendanceDetail,
  //     ],
  //   ),
  // ),
];
