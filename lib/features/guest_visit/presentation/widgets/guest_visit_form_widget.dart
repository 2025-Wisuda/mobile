import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/guest_visit_form_controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/extensions/text_helper_extensions.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';
import 'package:table_calendar/table_calendar.dart';

List<Widget> unRegisteredGuestVisitForm(
    BuildContext context, GuestVisitFormController controller) {
  return [
    guestVisitNameFieldWidget(controller),
    guestVisitIdentityTypeFieldWidget(controller),
    guestVisitIdentityNumberFieldWidget(controller),
    guestVisitDateFieldWidget(
        controller: controller,
        onTap: () => _selectDate(context, controller),
        text: controller.getControllerValue('date')),
    guestVisitStartTimeFieldWidget(
        controller: controller,
        onTap: () => _selectStartTime(context, controller),
        text: controller.getControllerValue('startTime'),
        enabled: controller.getControllerValue('date').isNotEmpty),
    guestVisitEndTimeFieldWidget(
        controller: controller,
        onTap: () => _selectEndTime(context, controller),
        text: controller.getControllerValue('endTime'),
        enabled: controller.getControllerValue('startTime').isNotEmpty),
    guestVisitPurposeFieldWidget(controller),
  ];
}

List<Widget> registeredGuestVisitForm(
    BuildContext context, GuestVisitFormController controller) {
  return [
    _registeredVisitorField(context, controller),
    guestVisitDateFieldWidget(
        controller: controller,
        onTap: () => _selectDate(context, controller),
        text: controller.getControllerValue('date')),
    guestVisitStartTimeFieldWidget(
        controller: controller,
        onTap: () => _selectStartTime(context, controller),
        text: controller.getControllerValue('startTime'),
        enabled: controller.getControllerValue('date').isNotEmpty),
    guestVisitEndTimeFieldWidget(
        controller: controller,
        onTap: () => _selectEndTime(context, controller),
        text: controller.getControllerValue('endTime'),
        enabled: controller.getControllerValue('startTime').isNotEmpty),
    guestVisitPurposeFieldWidget(controller),
  ];
}

Future<void> _selectDate(
    BuildContext context, GuestVisitFormController controller) async {
  final now = DateTime.now();
  final initialDate = controller.selectedDate.value ?? now;
  final firstDate = now;
  final lastDate = now.add(const Duration(days: 365));

  DateTime? picked;
  await showDialog(
    context: context,
    builder: (context) {
      final Rx<DateTime> tempSelected = initialDate.obs;
      return AlertDialog(
        title: Text('selectDate'.note()),
        content: SizedBox(
          width: 350,
          height: 400,
          child: Obx(() => CustomCalendarSelectionWidget(
                calendarFormat: CalendarFormat.month,
                selectedDate: tempSelected.value,
                focusedDate: tempSelected.value,
                onFormatChanged: (_) {},
                firstDay: firstDate,
                lastDay: lastDate,
                onDaySelected: (date, _) {
                  tempSelected.value = date;
                },
                isDateAvailable: (date) =>
                    !date.isBefore(firstDate) && !date.isAfter(lastDate),
                formatButtonVisible: true,
                disableFormatButton: true,
              )),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('cancel'.note()),
          ),
          TextButton(
            onPressed: () {
              picked = tempSelected.value;
              Navigator.of(context).pop();
            },
            child: Text('selectDate'.note()),
          ),
        ],
      );
    },
  );
  if (picked != null) {
    controller.getController('date').text =
        DateHelper.formatDayMonthYear(date: picked!);
    controller.selectedDate.value = picked!;
    controller.markFieldAsInteracted('date');
  }
}

Future<void> _selectStartTime(
    BuildContext context, GuestVisitFormController controller) async {
  final selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (selectedTime != null) {
    controller.getController('startTime').text =
        '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    controller.selectedStartTime.value =
        '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    controller.markFieldAsInteracted('startTime');
  }
}

Future<void> _selectEndTime(
    BuildContext context, GuestVisitFormController controller) async {
  final selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (selectedTime != null) {
    controller.getController('endTime').text =
        '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    controller.selectedEndTime.value =
        '${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}';
    controller.markFieldAsInteracted('endTime');
  }
}

Widget _registeredVisitorField(
    BuildContext context, GuestVisitFormController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      UserFormSelectionWidget(
        controller: controller.getController('visitor'),
        focusNode: controller.getFocusNode('visitor'),
        selectedIds: controller.selectedVisitorIds,
        selectedUsers: controller.selectedVisitorUsers,
        controllerKey: 'guest_visit_visitor_controller',
        hint: 'guestVisit'.hint('visitor'),
        allowedGroups: [],
      ),
    ],
  );
}

Widget guestVisitNameFieldWidget(GuestVisitFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('name'),
    focusNode: controller.getFocusNode('name'),
    labelText: 'guestVisit'.label('name'),
    hintText: 'guestVisit'.hint('name'),
    requiredField: true,
    keyboardType: TextInputType.name,
  );
}

Widget guestVisitIdentityTypeFieldWidget(
  GuestVisitFormController controller,
) {
  return Obx(() => CustomDropdownFieldWidget<String>(
        value: controller.selectedIdentityType.value?.isEmpty == true
            ? null
            : controller.selectedIdentityType.value,
        items: IdentityTypeEnum.values
            .map((type) => DropdownMenuItem(
                  value: type.value,
                  child: Text(type.getLabel()),
                ))
            .toList(),
        labelText: 'guestVisit'.label('identityType'),
        hintText: 'guestVisit'.hint('identityType'),
        onChanged: (value) {
          controller.selectIdentityType(value ?? '');
          controller.markFieldAsInteracted('seminarType');
        },
      ));
}

Widget guestVisitIdentityNumberFieldWidget(
  GuestVisitFormController controller,
) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('identityNumber'),
    focusNode: controller.getFocusNode('identityNumber'),
    labelText: 'guestVisit'.label('identityNumber'),
    hintText: 'guestVisit'.hint('identityNumber'),
    requiredField: true,
    keyboardType: TextInputType.number,
  );
}

Widget guestVisitDateFieldWidget({
  required GuestVisitFormController controller,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomDateFieldWidget(
    controller: controller.getController('date')..text = text ?? '',
    focusNode: controller.getFocusNode('date'),
    onChanged: (value) => controller.markFieldAsInteracted('date'),
    // validator: (value) => controller.shouldShowValidationError('date')
    //     ? controller.validateRequired(value, 'Date')
    //     : null,
    onTap: onTap,
    feature: 'guestVisit',
    fieldKey: 'date',
  );
}

Widget guestVisitStartTimeFieldWidget({
  required GuestVisitFormController controller,
  required VoidCallback onTap,
  required String? text,
  required bool enabled,
}) {
  return CustomTimeFieldWidget(
    controller: controller.getController('startTime')..text = text ?? '',
    focusNode: controller.getFocusNode('startTime'),
    onChanged: (value) => controller.markFieldAsInteracted('startTime'),
    // validator: (value) => controller.shouldShowValidationError('startTime')
    //     ? controller.validateRequired(value, 'Start Time')
    //     : null,
    onTap: onTap,
    readOnly: false,
    feature: 'guestVisit',
    fieldKey: 'startTime',
    enable: enabled,
  );
}

Widget guestVisitEndTimeFieldWidget({
  required GuestVisitFormController controller,
  required VoidCallback onTap,
  required String? text,
  required bool enabled,
}) {
  return CustomTimeFieldWidget(
    controller: controller.getController('endTime')..text = text ?? '',
    focusNode: controller.getFocusNode('endTime'),
    onChanged: (value) => controller.markFieldAsInteracted('endTime'),
    // validator: (value) => controller.shouldShowValidationError('endTime')
    //     ? controller.validateRequired(value, 'End Time')
    //     : null,
    onTap: onTap,
    readOnly: false,
    feature: 'guestVisit',
    fieldKey: 'endTime',
    enable: enabled,
  );
}

Widget guestVisitPurposeFieldWidget(
  GuestVisitFormController controller,
) {
  return CustomMultilineTextFormFieldWidget(
    controller: controller.getController('purpose'),
    focusNode: controller.getFocusNode('purpose'),
    labelText: 'guestVisit'.label('purpose'),
    hintText: 'guestVisit'.hint('purpose'),
    requiredField: true,
    keyboardType: TextInputType.multiline,
    maxLines: 3,
    onChanged: (value) => controller.markFieldAsInteracted('purpose'),
    validator: (value) => controller.shouldShowValidationError('purpose')
        ? controller.validateRequired(value, 'Purpose')
        : null,
  );
}
