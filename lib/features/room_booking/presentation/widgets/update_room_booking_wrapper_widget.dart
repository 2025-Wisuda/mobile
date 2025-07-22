import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_room_booking_navigation_helper.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_form_widget.dart';
import 'package:mobile/features/room_booking/presentation/widgets/sections/section.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/custom_snackbar.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateRoomBookingWrapperWidget extends StatelessWidget {
  final RoomBookingEntity booking;
  final RoomBookingFormController controller;

  const UpdateRoomBookingWrapperWidget({
    super.key,
    required this.booking,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
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
        autovalidateMode: AutovalidateMode.disabled,
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
    final isStudentSeminarBooking =
        booking.bookingType == RoomBookingTypeEnum.seminar.value;

    if (isStudentSeminarBooking) {
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
        message: 'roomBooking'.success('updateRoomBooking'),
        type: SnackbarType.success,
      );

      RoomBookingNavigationHelper.handleUpdateSuccessNavigation(
          booking.approvalStatus);

      Future.delayed(const Duration(milliseconds: 100), () {
        controller.resetState();
        controller.clearForm();

        if (Get.isRegistered<LabAvailabilityController>(
            tag: 'room_booking_time_slot')) {
          final timeSlotController = Get.find<LabAvailabilityController>(
              tag: 'room_booking_time_slot');
          timeSlotController.clearAll();
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
        textButton: 'roomBooking'.message('updateBooking'),
        onPressed: isFormValid ? () => controller.submitForm() : null,
        isFormValid: isFormValid,
        state: controller.state,
      );
    });
  }
}
