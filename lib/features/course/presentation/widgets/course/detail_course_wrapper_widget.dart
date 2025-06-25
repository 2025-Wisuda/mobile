import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseWrapperWidget extends StatelessWidget {
  final String courseId;
  final DetailCourseController c;
  const DetailCourseWrapperWidget({
    super.key,
    required this.courseId,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    final c = Get.find<DetailCourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      c.fetchDetail(courseId);
    });

    return _buildContent(context, c);
  }

  Widget _buildContent(BuildContext context, DetailCourseController c) {
    return Obx(() {
      final course = c.entity.value;
      final state = c.state;

      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: 'course',
        customErrorMessage: c.errorMessage,
        customIcon: Icons.school_outlined,
        customSubtitle: 'course'.message('fetchCourseDetail.empty'),
        onSuccess: () => DetailCourseWidget(course: course ?? CourseEntity()),
      );
    });
  }
}
