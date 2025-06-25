import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DeleteCourseWrapperWidget {
  final String courseId;
  final String courseTitle;

  const DeleteCourseWrapperWidget({
    required this.courseId,
    required this.courseTitle,
  });

  void handleDelete(BuildContext context) {
    final deleteCourseController = Get.find<DeleteCourseController>();

    deleteCourseController.deleteCourse(courseId);

    _showStateHandler(context, deleteCourseController);
  }

  void _showStateHandler(
      BuildContext context, DeleteCourseController controller) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => _DeleteStateHandlerDialog(
        controller: controller,
        courseTitle: courseTitle,
      ),
    );
  }
}

class _DeleteStateHandlerDialog extends StatelessWidget {
  final DeleteCourseController controller;
  final String courseTitle;

  const _DeleteStateHandlerDialog({
    required this.controller,
    required this.courseTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.stateDescription;

      switch (state) {
        case SubmitStateEnum.submitting:
          return _buildLoadingDialog();
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

  Widget _buildLoadingDialog() {
    return const AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Deleting course...'),
        ],
      ),
    );
  }

  void _handleSuccessState(BuildContext context) {
    Future.microtask(() {
      Get.back();
      Get.back();
    });

    context.showCustomSnackbar(
      message: 'course'.success('deleteCourse'),
      type: SnackbarType.success,
    );

    Future.microtask(() {
      controller.resetState();
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
    Future.microtask(() {
      Get.back();
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
