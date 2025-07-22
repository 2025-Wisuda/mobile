import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/form.dart';

Widget otpFormFieldWidget(
    BuildContext context, ValidateOtpController controller) {
  final inputTheme = Theme.of(context).inputDecorationTheme;
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: context.titleLargeW(600),
    decoration: BoxDecoration(
      color: inputTheme.fillColor,
      borderRadius: BorderRadius.circular(8),
    ),
  );

  return Column(
    children: [
      Pinput(
        autofocus: true,
        length: 6,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyDecorationWith(
          border: Border.all(color: context.onSurfaceVariant),
        ),
        submittedPinTheme: defaultPinTheme,
        errorPinTheme: defaultPinTheme.copyDecorationWith(
          border: Border.all(color: context.error),
        ),
        controller: controller.getController('otpCode'),
        focusNode: controller.getFocusNode('otpCode'),
        onChanged: (value) => controller.markFieldAsInteracted('otpCode'),
        validator: (value) => controller.shouldShowValidationError('otpCode')
            ? controller.validateRequired(value, 'OTP Code')
            : null,
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: false,
        onCompleted: (pin) => FocusScope.of(context).unfocus(),
      ),
      const SizedBox(height: 16),
      Text(
        'dutySchedule'.hint('otpCode'),
        textAlign: TextAlign.center,
        style: context.labelMedium().copyWith(color: context.onSurfaceVariant),
      ),
    ],
  );
}

Widget manualOverrideActionTypeFieldWidget(
    ManualOverrideAttendanceController controller) {
  return Obx(() {
    final actionType = controller.actionType ?? 'clock_in';

    String displayLabel;
    switch (actionType) {
      case 'clock_in':
        displayLabel = 'dutySchedule'.label('action.clockIn');
        break;
      case 'clock_out':
        displayLabel = 'dutySchedule'.label('action.clockOut');
        break;
      default:
        displayLabel = actionType;
    }

    return CustomTextFormFieldWidget(
      controller: TextEditingController(text: displayLabel),
      focusNode: controller.getFocusNode('actionType'),
      hintText: 'dutySchedule'.hint('actionType.$actionType'),
      keyboardType: TextInputType.text,
      readOnly: true,
      enabled: false,
    );
  });
}
