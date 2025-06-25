import 'package:flutter/material.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

Widget guestVisitVisitorFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  return CustomTextFormFieldWidget(
    controller: c.getController('visitor'),
    focusNode: c.getFocusNode('visitor'),
    labelText: 'Visitor ID',
    hintText: 'Enter visitor ID (optional)',
    errorText: errorText,
    requiredField: false,
    keyboardType: TextInputType.text,
  );
}

Widget guestVisitNameFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  return CustomTextFormFieldWidget(
    controller: c.getController('name'),
    focusNode: c.getFocusNode('name'),
    labelText: 'Visitor Name',
    hintText: 'Enter visitor name',
    errorText: errorText,
    requiredField: false,
    keyboardType: TextInputType.name,
  );
}

Widget guestVisitIdentityTypeFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  final items = [
    DropdownMenuItem(value: 'KTP', child: Text('KTP')),
    DropdownMenuItem(value: 'SIM', child: Text('SIM')),
    DropdownMenuItem(value: 'PASSPORT', child: Text('Passport')),
    DropdownMenuItem(value: 'STUDENT_ID', child: Text('Student ID')),
    DropdownMenuItem(value: 'OTHER', child: Text('Other')),
  ];
  return CustomDropdownFieldWidget<String>(
    labelText: 'Identity Type',
    hintText: 'Select identity type',
    value: c.getControllerValue('identityType'),
    items: items,
    onChanged: (v) => c.getController('identityType').text = v ?? '',
    errorText: errorText,
    requiredField: false,
    prefixIcon: Icon(Icons.credit_card_outlined),
  );
}

Widget guestVisitIdentityNumberFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  return CustomTextFormFieldWidget(
    controller: c.getController('identityNumber'),
    focusNode: c.getFocusNode('identityNumber'),
    labelText: 'Identity Number',
    hintText: 'Enter identity number',
    errorText: errorText,
    requiredField: false,
    keyboardType: TextInputType.text,
  );
}

Widget guestVisitDateFieldWidget({
  required GuestVisitFormController c,
  required VoidCallback onTap,
  required String? text,
  String? errorText,
}) {
  return CustomDateFieldWidget(
    controller: c.getController('date')..text = text ?? '',
    focusNode: c.getFocusNode('date'),
    onChanged: (value) => c.markFieldAsInteracted('date'),
    validator: (value) => c.validateRequired(value, 'Date'),
    onTap: onTap,
    readOnly: false,
    feature: 'guest_visit',
    fieldKey: 'date',
    isRequired: true,
  );
}

Widget guestVisitStartTimeFieldWidget({
  required GuestVisitFormController c,
  required VoidCallback onTap,
  required String? text,
  String? errorText,
}) {
  return CustomTimeFieldWidget(
    controller: c.getController('startTime')..text = text ?? '',
    focusNode: c.getFocusNode('startTime'),
    onChanged: (value) => c.markFieldAsInteracted('startTime'),
    validator: (value) => c.validateRequired(value, 'Start Time'),
    onTap: onTap,
    readOnly: false,
    feature: 'guest_visit',
    fieldKey: 'startTime',
    errorText: errorText,
    isRequired: true,
  );
}

Widget guestVisitEndTimeFieldWidget({
  required GuestVisitFormController c,
  required VoidCallback onTap,
  required String? text,
  required bool enabled,
  String? errorText,
}) {
  return CustomTimeFieldWidget(
    controller: c.getController('endTime')..text = text ?? '',
    focusNode: c.getFocusNode('endTime'),
    onChanged: (value) => c.markFieldAsInteracted('endTime'),
    onTap: onTap,
    readOnly: !enabled,
    feature: 'guest_visit',
    fieldKey: 'endTime',
    errorText: errorText,
    enable: enabled,
  );
}

Widget guestVisitPurposeFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  return CustomMultilineTextFormFieldWidget(
    controller: c.getController('purpose'),
    focusNode: c.getFocusNode('purpose'),
    labelText: 'Purpose',
    hintText: 'Enter visit purpose',
    errorText: errorText,
    requiredField: true,
    keyboardType: TextInputType.multiline,
    maxLines: 3,
  );
}

Widget guestVisitParafFieldWidget(GuestVisitFormController c,
    {String? errorText}) {
  return CustomTextFormFieldWidget(
    controller: c.getController('paraf'),
    focusNode: c.getFocusNode('paraf'),
    labelText: 'Paraf',
    hintText: 'Enter paraf (optional)',
    errorText: errorText,
    requiredField: false,
    keyboardType: TextInputType.text,
  );
}
