import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ManualOverrideWrapperWidget extends StatelessWidget {
  final ManualOverrideAttendanceController controller;

  const ManualOverrideWrapperWidget({
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
        Form(
          key: controller.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: manualOverrideActionTypeFieldWidget(controller),
        ),
        const SizedBox(height: 24),
        _buildButton(context),
        _buildStateHandler(context),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() => CustomSubmitButtonWidget(
          textButton: 'dutySchedule'.label('manualOverride'),
          onPressed: () => controller.submitForm(),
          isFormValid: true,
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
    await Future.delayed(const Duration(seconds: 3));

    Future.microtask(() {
      Get.offAllNamed(AppRoute.myAttendanceRecords, arguments: {
        'shouldRefresh': true,
        'successMessage': 'dutySchedule'.message('manualOverrideSuccess'),
      });
    });
  }

  void _handleFailureState(BuildContext context) {
    context.showCustomSnackbar(
      message: controller.stateDescription,
      type: SnackbarType.error,
    );
  }
}
