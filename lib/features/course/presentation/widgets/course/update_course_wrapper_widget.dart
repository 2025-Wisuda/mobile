import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course/course_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateCourseWrapperWidget extends StatefulWidget {
  final CourseFormController c;
  final String courseId;
  const UpdateCourseWrapperWidget(
      {super.key, required this.c, required this.courseId});

  @override
  State<UpdateCourseWrapperWidget> createState() =>
      _UpdateCourseWrapperWidgetState();
}

class _UpdateCourseWrapperWidgetState extends State<UpdateCourseWrapperWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCourseData();
    });
  }

  void _loadCourseData() {
    final detailCourseC = Get.find<DetailCourseController>();
    detailCourseC.fetchDetail(widget.courseId).then((_) {
      if (detailCourseC.entity.value != null) {
        widget.c.loadCourseForUpdate(detailCourseC.entity.value!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseStepperWidget(c: widget.c, mode: CourseFormMode.update),
          _buildStateHandler(context, widget.c),
        ],
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context, CourseFormController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() {
            if (context.mounted) _handleSuccessState(context);
          });
        case SubmitStateEnum.failure:
          Future.microtask(() {
            if (context.mounted) _handleFailureState(context, errorMessage, c);
          });
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(
    BuildContext context,
  ) {
    context.showCustomSnackbar(
      message: 'course'.success('updateCourse'),
      type: SnackbarType.success,
    );

    Get.find<DetailCourseController>().refreshDetail(widget.courseId);
    Get.back();
    widget.c.resetState();
  }

  void _handleFailureState(
      BuildContext context, String errorMessage, CourseFormController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    c.resetState();
  }
}
