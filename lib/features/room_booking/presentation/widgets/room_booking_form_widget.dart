import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/shared.dart';

Widget roomBookingResearchTitleFieldWidget(
    RoomBookingFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('researchTitle'),
    focusNode: controller.getFocusNode('researchTitle'),
    labelText: 'roomBooking'.label('researchTitle'),
    hintText: 'roomBooking'.hint('researchTitle'),
    keyboardType: TextInputType.text,
    validator: (value) => controller.shouldShowValidationError('researchTitle')
        ? controller.validateRequired(
            value, 'roomBooking'.label('researchTitle'))
        : null,
    onChanged: (_) => controller.markFieldAsInteracted('researchTitle'),
    requiredField: true,
  );
}

Widget roomBookingSeminarTypeFieldWidget(RoomBookingFormController controller) {
  return Obx(() => CustomDropdownFieldWidget<String>(
        value: controller.selectedSeminarType.value.isEmpty
            ? null
            : controller.selectedSeminarType.value,
        items: SeminarTypeEnum.values
            .map((type) => DropdownMenuItem(
                  value: type.value,
                  child: Text(type.getLabel()),
                ))
            .toList(),
        labelText: 'roomBooking'.label('seminarType'),
        hintText: 'roomBooking'.hint('seminarType'),
        onChanged: (value) {
          controller.selectSeminarType(value ?? '');
          controller.markFieldAsInteracted('seminarType');
        },
      ));
}

Widget roomBookingMainSupervisorFieldWidget(
    RoomBookingFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('supervisorMain'),
    focusNode: controller.getFocusNode('supervisorMain'),
    labelText: 'roomBooking'.label('mainSupervisor'),
    hintText: 'roomBooking'.hint('mainSupervisor'),
    keyboardType: TextInputType.text,
    validator: (value) => controller.shouldShowValidationError('supervisorMain')
        ? controller.validateRequired(
            value, 'roomBooking'.label('mainSupervisor'))
        : null,
    onChanged: (_) => controller.markFieldAsInteracted('supervisorMain'),
    requiredField: true,
  );
}

Widget roomBookingSecondarySupervisorFieldWidget(
    RoomBookingFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('supervisorSecondary'),
    focusNode: controller.getFocusNode('supervisorSecondary'),
    labelText: 'roomBooking'.label('secondarySupervisor'),
    hintText: 'roomBooking'.hint('secondarySupervisor'),
    keyboardType: TextInputType.text,
    requiredField: false,
    validator: null,
    onChanged: (_) => controller.markFieldAsInteracted('supervisorSecondary'),
    optional: true,
  );
}

Widget roomBookingExaminerFieldWidget(RoomBookingFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('examiner'),
    focusNode: controller.getFocusNode('examiner'),
    labelText: 'roomBooking'.label('examiner'),
    hintText: 'roomBooking'.hint('examiner'),
    keyboardType: TextInputType.text,
    validator: (value) => controller.shouldShowValidationError('examiner')
        ? controller.validateRequired(value, 'roomBooking'.label('examiner'))
        : null,
    onChanged: (_) => controller.markFieldAsInteracted('examiner'),
    requiredField: true,
  );
}

Widget roomBookingPurposeFieldWidget(RoomBookingFormController controller) {
  return CustomMultilineTextFormFieldWidget(
    controller: controller.getController('purpose'),
    focusNode: controller.getFocusNode('purpose'),
    labelText: 'roomBooking'.label('purpose'),
    hintText: 'roomBooking'.hint('purpose'),
    keyboardType: TextInputType.multiline,
    requiredField: false,
    validator: null,
    onChanged: (_) => controller.markFieldAsInteracted('purpose'),
    optional: true,
    maxLines: 3,
  );
}

Widget roomBookingDocumentUploadFieldWidget(
    RoomBookingFormController controller, BuildContext context) {
  return Obx(() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFilePickerWidget(
            requiredField: true,
            selectedFile: controller.selectedDocumentFile.value,
            onTap: () async {
              await _handleDocumentFilePicker(controller, context);
              controller.markFieldAsInteracted('documentProof');
            },
            onDelete: () {
              controller.removeDocumentFile();
              controller.markFieldAsInteracted('documentProof');
            },
            feature: 'roomBooking',
            fieldKey: 'documentProof',
            allowedExtensions: const ['pdf'],
          ),
          if (controller.shouldShowValidationError('documentProof') &&
              controller.selectedDocumentFile.value == null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Document proof is required',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
            ),
        ],
      ));
}

Future<void> _handleDocumentFilePicker(
    RoomBookingFormController controller, BuildContext context) async {
  try {
    final result = await controller.pickDocumentFile();

    if (result != null && result.files.isNotEmpty) {
      final platformFile = result.files.first;

      if (platformFile.path == null) {
        if (context.mounted) {
          context.showCustomSnackbar(
            message: 'roomBooking'.message('unableToAccessFile'),
            type: SnackbarType.error,
          );
        }
        return;
      }

      final file = io.File(platformFile.path!);

      final validationError = controller.validateDocumentFile(file);
      if (validationError != null) {
        if (context.mounted) {
          context.showCustomSnackbar(
            message: validationError,
            type: SnackbarType.error,
          );
        }
        return;
      }

      final isValidPdf = await controller.validatePdfHeader(file);
      if (!isValidPdf) {
        if (context.mounted) {
          context.showCustomSnackbar(
            message: 'roomBooking'.message('invalidPdfDocument'),
            type: SnackbarType.error,
          );
        }
        return;
      }

      controller.setDocumentFile(file);

      // final metadata = await PdfHelper.getPdfMetadata(file);
      if (context.mounted) {
        // context.showCustomSnackbar(
        //   message:
        //       '${'roomBooking'.message('pdfSelected')}: ${metadata.fileName} (${metadata.formattedSize})',
        //   type: SnackbarType.success,
        // );
      }
    }
  } catch (e) {
    if (context.mounted) {
      context.showCustomSnackbar(
        message:
            '${'roomBooking'.message('failedToSelectFile')}: ${e.toString()}',
        type: SnackbarType.error,
      );
    }
  }
}

List<Widget> roomBookingStudentSeminarForm(
    RoomBookingFormController controller, BuildContext context) {
  return [
    roomBookingResearchTitleFieldWidget(controller),
    roomBookingSeminarTypeFieldWidget(controller),
    roomBookingMainSupervisorFieldWidget(controller),
    roomBookingSecondarySupervisorFieldWidget(controller),
    roomBookingExaminerFieldWidget(controller),
    roomBookingDocumentUploadFieldWidget(controller, context),
  ];
}

Widget roomBookingApprovalNotesFieldWidget(
    ApproveRoomBookingController controller) {
  return CustomMultilineTextFormFieldWidget(
    controller: controller.getController('approvalNotes'),
    focusNode: controller.getFocusNode('approvalNotes'),
    labelText: 'roomBooking'.message('approvalNotes'),
    hintText: 'roomBooking'.message('approvalNotesHint'),
    keyboardType: TextInputType.multiline,
    requiredField: false,
    validator: null,
    onChanged: (_) => controller.markFieldAsInteracted('approvalNotes'),
    maxLines: 3,
  );
}

Widget roomBookingStaffGeneralForm(RoomBookingFormController controller) {
  return roomBookingPurposeFieldWidget(controller);
}
