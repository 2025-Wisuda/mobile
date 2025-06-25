import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionWrapperWidget extends StatelessWidget {
  final String courseSessionId;
  final String courseId;
  final DetailCourseSessionController c;

  const DetailCourseSessionWrapperWidget({
    super.key,
    required this.courseSessionId,
    required this.courseId,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    final c = Get.find<DetailCourseSessionController>();

    return _buildContent(context, c);
  }

  Widget _buildContent(BuildContext context, DetailCourseSessionController c) {
    return Obx(() {
      final state = c.state;
      final courseSession = c.entity.value;

      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: 'courseSession',
        customErrorMessage: c.errorMessage,
        customIcon: Icons.video_camera_front_outlined,
        customSubtitle: 'courseSession'.message('fetchCourseDetail.empty'),
        onSuccess: () =>
            DetailCourseSessionWidget(courseSession: courseSession),
      );
    });
  }
}
