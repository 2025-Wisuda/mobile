import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/group_enum.dart';

class CourseSessionWrapperController extends GetxController {
  late final ScrollController scrollController;

  UserProfileController get _profileController =>
      Get.find<UserProfileController>();

  DetailCourseSessionController get _detailController =>
      Get.find<DetailCourseSessionController>();
  CourseSessionFormController get _formController =>
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
    final userGroup = _profileController.userGroup;
    return userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();
  }

  bool get isTeachingAssistant {
    final courseSession = _detailController.entity.value;
    return courseSession?.teachingAssistants?.any(
          (ta) => ta.id == _profileController.userProfile?.id,
        ) ??
        false;
  }

  bool get isCourseSessionOwner {
    final courseId = Get.parameters['courseId'] ?? '';

    if (courseId.isNotEmpty) {
      try {
        final detailCourseC = Get.find<DetailCourseController>();
        final course = detailCourseC.entity.value;
        return course?.createdBy?.id == _profileController.userProfile?.id;
      } catch (e) {
        return false;
      }
    }

    return false;
  }

  String get courseId {
    return Get.parameters['courseId'] ?? '';
  }

  String get courseSessionId => _detailController.entity.value?.id ?? '';

  String get courseSessionTitle => _detailController.entity.value?.title ?? '';

  bool canUpdateCourseSession() {
    return _detailController.entity.value != null;
  }

  void prepareUpdateCourseSession() {
    if (_detailController.entity.value != null) {
      _formController
          .loadCourseSessionForUpdate(_detailController.entity.value!);
    }
  }
}
