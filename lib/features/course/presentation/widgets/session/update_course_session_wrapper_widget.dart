import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/session/course_session_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateCourseSessionWrapperWidget extends StatefulWidget {
  final CourseSessionFormController controller;
  final String courseId;
  final String courseSessionId;
  const UpdateCourseSessionWrapperWidget({
    super.key,
    required this.controller,
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
        widget.controller
            .loadCourseSessionForUpdate(detailCourseSessionC.entity.value!);
      }

      detailCourseC.fetchDetail(widget.courseId).then((_) {
        if (detailCourseC.entity.value != null) {
          widget.controller.setCourseInfo(detailCourseC.entity.value!);
        }
      });

      widget.controller.setCourseId(widget.courseId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseSessionStepperWidget(
              controller: widget.controller,
              mode: CourseSessionFormMode.update),
          _buildStateHandler(context),
        ],
      ),
    );
  }

  Widget _buildStateHandler(
    BuildContext context,
  ) {
    return Obx(() {
      final state = widget.controller.state;
      final errorMessage = widget.controller.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() {
            if (context.mounted) _handleSuccessState(context);
          });
        case SubmitStateEnum.failure:
          Future.microtask(() {
            if (context.mounted) _handleFailureState(context, errorMessage);
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
    Get.find<DetailCourseController>().refreshDetail(widget.courseId);
    Get.back();
    widget.controller.resetState();
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    widget.controller.resetState();
  }
}
