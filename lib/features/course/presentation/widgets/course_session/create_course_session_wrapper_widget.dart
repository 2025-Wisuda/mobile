import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course_session/course_session_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class CreateCourseSessionWrapperWidget extends StatefulWidget {
  final CourseSessionFormController c;
  final String courseId;
  const CreateCourseSessionWrapperWidget(
      {super.key, required this.c, required this.courseId});

  @override
  State<CreateCourseSessionWrapperWidget> createState() =>
      _CreateCourseSessionWrapperWidgetState();
}

class _CreateCourseSessionWrapperWidgetState
    extends State<CreateCourseSessionWrapperWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCourseInfo();
    });
  }

  void _loadCourseInfo() {
    final detailCourseC = Get.find<DetailCourseController>();
    if (detailCourseC.entity.value != null) {
      widget.c.setCourseInfo(detailCourseC.entity.value!);
      widget.c.setCourseId(widget.courseId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseSessionStepperWidget(
            c: widget.c,
            mode: CourseSessionFormMode.create,
            courseId: widget.courseId,
          ),
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

  void _handleSuccessState(BuildContext context) {
    Get.back();
    context.showCustomSnackbar(
      message: 'course'.success('createCourseSession'),
      type: SnackbarType.success,
    );
    widget.c.clearForm();
    widget.c.resetState();
    widget.c.resetStepper();

    // Refresh detail course to show new course session
    Get.find<DetailCourseController>().refreshDetail(widget.courseId);
  }

  void _handleFailureState(BuildContext context, String errorMessage,
      CourseSessionFormController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
    c.resetState();
    c.resetStepper();
    c.clearForm();
  }
}
