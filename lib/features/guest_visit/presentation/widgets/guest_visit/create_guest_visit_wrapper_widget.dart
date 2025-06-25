import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';
import 'guest_visit_form_widget.dart';

class CreateGuestVisitWrapperWidget extends StatelessWidget {
  final GuestVisitFormController c;
  const CreateGuestVisitWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        _buildBasicInfoSection(context),
        const SizedBox(height: 24),
        _buildVisitDetailsSection(context),
        const SizedBox(height: 24),
        _buildSubmitButton(context),
        _buildStateHandler(context),
      ]),
    );
  }

  Widget _buildBasicInfoSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Visitor Information', style: context.headlineSmallW(600)),
        const SizedBox(height: 16),
        Obx(() {
          final errors = c.validateAllFields();
          return Column(children: [
            guestVisitVisitorFieldWidget(c, errorText: errors['visitor']),
            const SizedBox(height: 16),
            guestVisitNameFieldWidget(c, errorText: errors['name']),
            const SizedBox(height: 16),
            guestVisitIdentityTypeFieldWidget(c,
                errorText: errors['identityType']),
            const SizedBox(height: 16),
            guestVisitIdentityNumberFieldWidget(c,
                errorText: errors['identityNumber']),
          ]);
        }),
      ]),
    );
  }

  Widget _buildVisitDetailsSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Visit Details', style: context.headlineSmallW(600)),
        const SizedBox(height: 16),
        Obx(() {
          final errors = c.validateAllFields();
          return Column(children: [
            guestVisitDateFieldWidget(
              c: c,
              onTap: () => _selectDate(context),
              text: c.getControllerValue('date'),
              errorText: errors['date'],
            ),
            const SizedBox(height: 16),
            guestVisitStartTimeFieldWidget(
              c: c,
              onTap: () => _selectStartTime(context),
              text: c.getControllerValue('startTime'),
              errorText: errors['startTime'],
            ),
            const SizedBox(height: 16),
            guestVisitEndTimeFieldWidget(
              c: c,
              onTap: () => _selectEndTime(context),
              text: c.getControllerValue('endTime'),
              enabled: c.getControllerValue('startTime').isNotEmpty,
              errorText: errors['endTime'],
            ),
            const SizedBox(height: 16),
            guestVisitPurposeFieldWidget(c, errorText: errors['purpose']),
            const SizedBox(height: 16),
            guestVisitParafFieldWidget(c, errorText: errors['paraf']),
          ]);
        }),
      ]),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return Obx(() => CustomSubmitButtonWidget(
          textButton: c.mode == FormMode.create
              ? 'Create Guest Visit'
              : 'Update Guest Visit',
          onPressed: c.isFormValid ? () => c.submitForm() : null,
          isFormValid: c.isFormValid,
          state: c.state,
        ));
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';
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

  Future<void> _selectDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (selectedDate != null) {
      c.getController('date').text =
          DateHelper.formatDayMonthYear(date: selectedDate);
    }
  }

  Future<void> _selectStartTime(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      c.getController('startTime').text =
          '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      c.getController('endTime').text =
          '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    }
  }

  void _handleSuccessState() {
    final message = c.mode == FormMode.create
        ? 'Guest visit created successfully'
        : 'Guest visit updated successfully';
    Get.snackbar('Success', message);
    Get.back(result: true);
  }

  void _handleFailureState(String errorMessage) {
    Get.snackbar('Error', errorMessage);
  }
}
