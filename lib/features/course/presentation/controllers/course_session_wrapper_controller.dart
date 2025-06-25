import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/group_enum.dart';

class CourseSessionWrapperController extends GetxController {
  late final ScrollController scrollController;

  UserProfileController get _profileC => Get.find<UserProfileController>();

  DetailCourseSessionController get _detailCourseSessionC =>
      Get.find<DetailCourseSessionController>();
  CourseSessionFormController get _courseSessionFormC =>
      Get.find<CourseSessionFormController>();

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  bool get canShowActionsMenu {
    final userGroup = _profileC.userGroup;
    return userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();
  }

  bool get isTeachingAssistant {
    final courseSession = _detailCourseSessionC.entity.value;
    return courseSession?.teachingAssistants?.any(
          (ta) => ta.id == _profileC.userProfile?.id,
        ) ??
        false;
  }

  bool get isCourseSessionOwner {
    final courseId = Get.parameters['courseId'] ?? '';

    if (courseId.isNotEmpty) {
      try {
        final detailCourseC = Get.find<DetailCourseController>();
        final course = detailCourseC.entity.value;
        return course?.createdBy?.id == _profileC.userProfile?.id;
      } catch (e) {
        return false;
      }
    }

    return false;
  }

  String get courseId {
    return Get.parameters['courseId'] ?? '';
  }

  String get courseSessionId => _detailCourseSessionC.entity.value?.id ?? '';

  String get courseSessionTitle =>
      _detailCourseSessionC.entity.value?.title ?? '';

  bool canUpdateCourseSession() {
    return _detailCourseSessionC.entity.value != null;
  }

  void prepareUpdateCourseSession() {
    if (_detailCourseSessionC.entity.value != null) {
      _courseSessionFormC
          .loadCourseSessionForUpdate(_detailCourseSessionC.entity.value!);
    }
  }
}
