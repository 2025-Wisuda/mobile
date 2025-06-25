import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/helpers/room_booking_navigation_helper.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_form_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateRoomBookingWrapperWidget extends StatelessWidget {
  final RoomBookingFormController c;
  const CreateRoomBookingWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    _prefillFormData();
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(spacing: 8, children: [
        _buildSelectedTimeSection(context),
        _buildBookingForm(context),
        _buildStateHandler(context),
      ]),
    );
  }

  void _prefillFormData() {
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      if (arguments['selectedDate'] != null) {
        c.selectedDate.value = DateTime.parse(arguments['selectedDate']);
      }
      if (arguments['startTime'] != null) {
        c.selectedStartTime.value = arguments['startTime'];
      }
      if (arguments['endTime'] != null) {
        c.selectedEndTime.value = arguments['endTime'];
      }
      if (arguments['bookingType'] != null) {
        c.selectBookingType(arguments['bookingType']);
      }
    }
  }

  Widget _buildSelectedTimeSection(BuildContext context) {
    final notSelected = 'roomBooking'.message('notSelected');
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      mainContent: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Obx(() => Column(children: [
                  _buildInfoRow(
                      context,
                      'roomBooking'.label('date'),
                      c.selectedDate.value?.toString().split(' ')[0] ??
                          notSelected),
                  _buildInfoRow(
                      context,
                      'roomBooking'.label('startTime'),
                      c.selectedStartTime.value?.isEmpty != false
                          ? notSelected
                          : c.selectedStartTime.value!),
                  _buildInfoRow(
                      context,
                      'roomBooking'.label('endTime'),
                      c.selectedEndTime.value?.isEmpty != false
                          ? notSelected
                          : c.selectedEndTime.value!),
                ])),
          ]),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    final textStyle = context.bodyMediumW(500);
    return Row(children: [
      SizedBox(
          width: 100,
          child:
              Text(label, style: textStyle.copyWith(color: context.onSurface))),
      Text(' : ', style: textStyle),
      Expanded(child: Text(value, style: textStyle)),
    ]);
  }

  Widget _buildBookingForm(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      mainContent: Form(
        key: c.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormContent(context),
            Obx(() => CustomSubmitButtonWidget(
                  textButton: 'roomBooking'.label('submitBooking'),
                  onPressed: () => c.submitForm(),
                  isFormValid: c.reactiveFormValid.value,
                  state: c.state,
                )),
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
          ...roomBookingStudentSeminarForm(c, context).map(
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
          roomBookingStaffGeneralForm(c),
          const SizedBox(height: 16),
        ],
      );
    }
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';
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
      // Show success message
      context.showCustomSnackbar(
        message: 'roomBooking'.success('createRoomBooking'),
        type: SnackbarType.success,
      );

      // Reset form controller
      c.clearForm();
      c.resetState();

      // Reset time slot selection controller with specific tag
      if (Get.isRegistered<LabTimeSlotSelectionController>(
          tag: 'room_booking_time_slot')) {
        final timeSlotController = Get.find<LabTimeSlotSelectionController>(
            tag: 'room_booking_time_slot');
        print('DEBUG: Resetting time slot controller');
        print(
            'DEBUG: Before reset - Start: ${timeSlotController.selectedStartTime.value}, End: ${timeSlotController.selectedEndTime.value}');
        timeSlotController.reset();
        print(
            'DEBUG: After reset - Start: ${timeSlotController.selectedStartTime.value}, End: ${timeSlotController.selectedEndTime.value}');
      } else {
        print(
            'DEBUG: LabTimeSlotSelectionController with tag room_booking_time_slot not found');
      }

      // Navigate back to previous screen
      RoomBookingNavigationHelper.handleSuccessNavigation();
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
    c.resetState();
  }
}
