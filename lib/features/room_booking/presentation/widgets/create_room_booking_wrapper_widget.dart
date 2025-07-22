import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_form_prefill_helper.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_room_booking_navigation_helper.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/custom_snackbar.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateRoomBookingWrapperWidget extends StatelessWidget {
  final RoomBookingFormController controller;

  const CreateRoomBookingWrapperWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    InternalFormPrefillHelper.prefillRoomBookingForm(controller);
    return SingleChildScrollView(
      child: CustomCardItemWidget(
        padding: const EdgeInsets.all(8),
        mainContent: Column(spacing: 8, children: [
          CreateRoomBookingPrefilledSection(controller: controller),
          _buildBookingForm(context),
          _buildButton(context),
          _buildStateHandler(context),
        ]),
      ),
    );
  }

  Widget _buildBookingForm(BuildContext context) {
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
    final arguments = Get.arguments as Map<String, dynamic>?;
    final userType = arguments?['userType'] ?? '';

    if (userType == 'student_assistant') {
      return Column(
        children: [
          ...roomBookingStudentSeminarForm(controller, context).map(
            (widget) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: widget,
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          roomBookingStaffGeneralForm(controller),
          const SizedBox(height: 16),
        ],
      );
    }
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.stateDescription;
      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() {
            if (context.mounted) _handleSuccessState(context);
          });
          break;
        case SubmitStateEnum.failure:
          Future.microtask(() {
            if (context.mounted) _handleFailureState(context, errorMessage);
          });
          break;
        default:
          break;
      }
      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context) {
    Future.microtask(() {
      showCustomSnackbar(
        message: 'roomBooking'.success('createRoomBooking'),
        type: SnackbarType.success,
      );

      if (controller.roomBooking != null) {
        RoomBookingNavigationHelper.handleBookingCreationSuccess(
            controller.roomBooking!);
      } else {
        RoomBookingNavigationHelper.handleSuccessNavigation();
      }

      Future.delayed(const Duration(milliseconds: 200), () {
        controller.clearForm();
        controller.resetState();

        if (Get.isRegistered<LabAvailabilityController>(
            tag: 'room_booking_availability')) {
          final timeSlotController = Get.find<LabAvailabilityController>(
              tag: 'room_booking_availability');
          timeSlotController.resetTimeSelection();
        }
      });
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
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
        textButton: 'roomBooking'.label('submitBooking'),
        onPressed: isFormValid ? () => controller.createRoomBooking() : null,
        isFormValid: isFormValid,
        state: controller.state,
      );
    });
  }
}
