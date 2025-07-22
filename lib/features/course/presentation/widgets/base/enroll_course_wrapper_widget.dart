import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/app_route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class EnrollCourseWrapperWidget extends StatelessWidget {
  final String courseId;

  const EnrollCourseWrapperWidget({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EnrollCourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.setCourseId(courseId);
    });

    return _buildContent(
      context,
      controller: controller,
      courseId: courseId,
    );
  }

  Widget _buildContent(
    BuildContext context, {
    required EnrollCourseController controller,
    required String courseId,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: context.onSurface.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          _buildForm(
            context,
            controller,
          ),
          _buildStateHandler(
            context,
            controller..setCourseId(courseId),
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context, EnrollCourseController controller) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Form(
              key: controller.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: courseEnrollFormWidget(controller)),
          Text(
            'course'.message('enrollKeyHelp'),
            style: context.bodySmallW(400).copyWith(
                  color: context.onSurface.withValues(alpha: 0.6),
                ),
          ),
          _buildSubmitButton(controller),
        ],
      ),
    );
  }

  Widget _buildSubmitButton(EnrollCourseController controller) {
    return Obx(() {
      final isFormValid = controller.reactiveFormValid.value;

      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        state: controller.state,
        onPressed: isFormValid ? () => controller.enrollCourse() : null,
        textButton: 'course'.message('enroll'),
      );
    });
  }

  Widget _buildStateHandler(
      BuildContext context, EnrollCourseController controller) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, controller);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage, controller);
        default:
      }
      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(
      BuildContext context, EnrollCourseController controller) {
    final courseId = controller.courseId;

    context.showCustomSnackbar(
      message: 'course'.success('enrollCourse'),
      type: SnackbarType.success,
    );

    Future.microtask(() {
      Get.offNamed(
        AppRoute.detailCourse,
        parameters: {'courseId': courseId ?? ''},
      );
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage,
      EnrollCourseController controller) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      controller.resetState();
    });
  }
}
