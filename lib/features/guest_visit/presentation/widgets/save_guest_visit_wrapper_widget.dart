import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/custom_snackbar.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SaveGuestVisitWrapperWidget extends StatelessWidget {
  final GuestVisitFormController controller;
  const SaveGuestVisitWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomCardItemWidget(
        padding: const EdgeInsets.all(8),
        mainContent: Column(children: [
          _buildVisitorTypeRadio(context),
          _buildGuestVisitForm(context),
          _buildButton(context),
          _buildStateHandler(context),
        ]),
      ),
    );
  }

  Widget _buildVisitorTypeRadio(BuildContext context) {
    return Obx(() {
      return Row(
        children: [
          Expanded(
            child: RadioListTile<bool>(
              value: false,
              groupValue: controller.isRegisteredVisitor.value,
              onChanged: (val) => controller.isRegisteredVisitor.value = val!,
              title: Text(
                'guestVisit'.message('unregisteredVisitor'),
                style: context.bodyMediumW(500),
              ),
            ),
          ),
          Expanded(
            child: RadioListTile<bool>(
              value: true,
              groupValue: controller.isRegisteredVisitor.value,
              onChanged: (val) => controller.isRegisteredVisitor.value = val!,
              title: Text(
                'guestVisit'.message('registeredVisitor'),
                style: context.bodyMediumW(500),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _buildGuestVisitForm(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      mainContent: Form(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFormContent(BuildContext context) {
    return Obx(() {
      if (controller.isRegisteredVisitor.value) {
        return Column(children: [
          ...registeredGuestVisitForm(context, controller).map(
            (widget) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: widget,
            ),
          ),
        ]);
      } else {
        return Column(children: [
          ...unRegisteredGuestVisitForm(context, controller).map(
            (widget) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: widget,
            ),
          ),
        ]);
      }
    });
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.stateDescription;
      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() => _handleSuccessState());
          break;
        case SubmitStateEnum.failure:
          Future.microtask(() => _handleFailureState(errorMessage));
          break;
        default:
          break;
      }
      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState() {
    Future.microtask(() {
      showCustomSnackbar(
        message: controller.mode == FormMode.create
            ? 'guestVisit'.success('createGuestVisit')
            : 'guestVisit'.success('updateGuestVisit'),
        type: SnackbarType.success,
      );
      Get.back(result: {'shouldRefresh': true});
    });
  }

  void _handleFailureState(String errorMessage) {
    showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
    controller.resetState();
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() {
      final isFormValid = controller.isFormValid.value;
      return CustomSubmitButtonWidget(
        textButton: controller.mode == FormMode.create
            ? 'guestVisit'.message('createGuestVisit')
            : 'guestVisit'.message('updateGuestVisit'),
        onPressed: isFormValid ? () => controller.submitForm() : null,
        isFormValid: isFormValid,
        state: controller.state,
      );
    });
  }
}
