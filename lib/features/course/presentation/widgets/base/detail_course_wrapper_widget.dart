import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseWrapperWidget extends StatelessWidget {
  final String courseId;
  final DetailCourseController controller;
  const DetailCourseWrapperWidget({
    super.key,
    required this.courseId,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchDetail(courseId);
    });
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Obx(() {
      final course = controller.entity.value;
      final state = controller.state;

      return customFetchStateHandler(
        context: context,
        state: state,
        feature: 'course',
        customErrorMessage: controller.errorMessage,
        customIcon: Icons.school_outlined,
        customSubtitle: 'course'.message('fetchCourseDetail.empty'),
        onSuccess: () => DetailCourseWidget(course: course ?? CourseEntity()),
      );
    });
  }
}
