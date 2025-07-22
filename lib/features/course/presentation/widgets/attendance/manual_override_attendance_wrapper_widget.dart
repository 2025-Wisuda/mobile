import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ManualOverrideAttendanceWrapperWidget extends StatelessWidget {
  final ManualOverrideCourseSessionAttendanceController controller;

  const ManualOverrideAttendanceWrapperWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildButton(context),
        _buildStateHandler(context),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() => CustomSubmitButtonWidget(
          textButton: 'course'.label('manualOverride'),
          onPressed: () => controller.submitForm(),
          isFormValid: controller.isFormValid.value,
          state: controller.state,
        ));
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context);
        case SubmitStateEnum.failure:
          _handleFailureState(
            context,
          );
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    Future.microtask(() {
      final result = {
        'shouldRefresh': true,
        'successMessage': 'course'.message(
          'manualOverrideSuccess',
        ),
      };
      Get.back(result: result);
    });
  }

  void _handleFailureState(BuildContext context) {
    context.showCustomSnackbar(
      message: controller.stateDescription,
      type: SnackbarType.error,
    );
  }
}
