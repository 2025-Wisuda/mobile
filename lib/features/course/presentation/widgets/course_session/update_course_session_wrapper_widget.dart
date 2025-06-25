import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course_session/course_session_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateCourseSessionWrapperWidget extends StatefulWidget {
  final CourseSessionFormController c;
  final String courseId;
  final String courseSessionId;
  const UpdateCourseSessionWrapperWidget({
    super.key,
    required this.c,
    required this.courseId,
    required this.courseSessionId,
  });

  @override
  State<UpdateCourseSessionWrapperWidget> createState() =>
      _UpdateCourseSessionWrapperWidgetState();
}

class _UpdateCourseSessionWrapperWidgetState
    extends State<UpdateCourseSessionWrapperWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCourseSessionData();
    });
  }

  void _loadCourseSessionData() {
    final detailCourseSessionC = Get.find<DetailCourseSessionController>();
    final detailCourseC = Get.find<DetailCourseController>();

    detailCourseSessionC
        .fetchDetail([widget.courseId, widget.courseSessionId]).then((_) {
      if (detailCourseSessionC.entity.value != null) {
        widget.c.loadCourseSessionForUpdate(detailCourseSessionC.entity.value!);
      }

      if (detailCourseC.entity.value != null) {
        widget.c.setCourseInfo(detailCourseC.entity.value!);
      }

      widget.c.setCourseId(widget.courseId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseSessionStepperWidget(
              c: widget.c, mode: CourseSessionFormMode.update),
          _buildStateHandler(context, widget.c),
        ],
      ),
    );
  }

  Widget _buildStateHandler(
      BuildContext context, CourseSessionFormController c) {
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
      message: 'course'.success('updateCourseSession'),
      type: SnackbarType.success,
    );

    Get.find<DetailCourseSessionController>()
        .refreshDetail([widget.courseId, widget.courseSessionId]);
    // Also refresh detail course to show updated course session
    Get.find<DetailCourseController>().refreshDetail(widget.courseId);
    Get.back();
    widget.c.resetState();
  }

  void _handleFailureState(BuildContext context, String errorMessage,
      CourseSessionFormController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    c.resetState();
  }
}
