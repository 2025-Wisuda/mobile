import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DeleteCourseSessionWrapperWidget {
  final String courseId;
  final String courseSessionId;

  const DeleteCourseSessionWrapperWidget({
    required this.courseId,
    required this.courseSessionId,
  });

  void handleDelete(BuildContext context) {
    final controller = Get.find<DeleteCourseSessionController>();

    CustomFullScreenLoadingWidget.show(
      context,
      message: 'course'.message('deletingCourseSession'),
      duration: const Duration(milliseconds: 1000),
    );

    controller.deleteCourseSession(
      courseId: courseId,
      courseSessionId: courseSessionId,
    );

    _showStateHandler(context, controller);
  }

  void _showStateHandler(
      BuildContext context, DeleteCourseSessionController controller) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => _DeleteStateHandlerDialog(
        controller: controller,
        courseId: courseId,
      ),
    );
  }
}

class _DeleteStateHandlerDialog extends StatelessWidget {
  final DeleteCourseSessionController controller;
  final String courseId;

  const _DeleteStateHandlerDialog({
    required this.controller,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.stateDescription;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context);
          return const SizedBox.shrink();
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage);
          return const SizedBox.shrink();
        default:
          return const SizedBox.shrink();
      }
    });
  }

  void _handleSuccessState(BuildContext context) {
    Future.microtask(() {
      if (context.mounted) {
        CustomFullScreenLoadingWidget.hide(context);
        Get.back();
        Get.back();
      }
    });

    context.showCustomSnackbar(
      message: 'course'.success('deleteCourseSession'),
      type: SnackbarType.success,
    );

    Future.microtask(() {
      controller.resetState();
      Get.find<DetailCourseController>().refreshDetail(courseId);
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
    Future.microtask(() {
      if (context.mounted) {
        CustomFullScreenLoadingWidget.hide(context);
        Get.back();
      }
    });

    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      controller.resetState();
    });
  }
}
