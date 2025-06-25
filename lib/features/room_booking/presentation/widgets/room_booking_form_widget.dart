import 'dart:io' as io;

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/shared.dart';

Widget roomBookingResearchTitleFieldWidget(RoomBookingFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('researchTitle'),
    focusNode: c.getFocusNode('researchTitle'),
    labelText: 'roomBooking'.label('researchTitle'),
    hintText: 'roomBooking'.hint('researchTitle'),
    keyboardType: TextInputType.text,
    validator: (value) =>
        c.validateRequired(value, 'roomBooking'.message('researchTitle')),
    onChanged: (_) => c.markFieldAsInteracted('researchTitle'),
  );
}

Widget roomBookingSeminarTypeFieldWidget(RoomBookingFormController c) {
  return Obx(() => CustomDropdownFieldWidget<String>(
        value: c.selectedSeminarType.value.isEmpty
            ? null
            : c.selectedSeminarType.value,
        items: SeminarTypeEnum.values
            .map((type) => DropdownMenuItem(
                  value: type.value,
                  child: Text(type.getLabel()),
                ))
            .toList(),
        labelText: 'roomBooking'.label('seminarType'),
        hintText: 'roomBooking'.hint('seminarType'),
        onChanged: (value) {
          c.selectSeminarType(value ?? '');
          c.markFieldAsInteracted('seminarType');
        },
      ));
}

Widget roomBookingMainSupervisorFieldWidget(RoomBookingFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('supervisorMain'),
    focusNode: c.getFocusNode('supervisorMain'),
    labelText: 'roomBooking'.label('mainSupervisor'),
    hintText: 'roomBooking'.hint('mainSupervisor'),
    keyboardType: TextInputType.text,
    validator: (value) =>
        c.validateRequired(value, 'roomBooking'.message('mainSupervisor')),
    onChanged: (_) => c.markFieldAsInteracted('supervisorMain'),
  );
}

Widget roomBookingSecondarySupervisorFieldWidget(RoomBookingFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('supervisorSecondary'),
    focusNode: c.getFocusNode('supervisorSecondary'),
    labelText: 'roomBooking'.label('secondarySupervisor'),
    hintText: 'roomBooking'.hint('secondarySupervisor'),
    keyboardType: TextInputType.text,
    requiredField: false,
    validator: null,
    onChanged: (_) => c.markFieldAsInteracted('supervisorSecondary'),
  );
}

Widget roomBookingExaminerFieldWidget(RoomBookingFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('examiner'),
    focusNode: c.getFocusNode('examiner'),
    labelText: 'roomBooking'.label('examiner'),
    hintText: 'roomBooking'.hint('examiner'),
    keyboardType: TextInputType.text,
    validator: (value) =>
        c.validateRequired(value, 'roomBooking'.message('examiner')),
    onChanged: (_) => c.markFieldAsInteracted('examiner'),
  );
}

Widget roomBookingPurposeFieldWidget(RoomBookingFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('purpose'),
    focusNode: c.getFocusNode('purpose'),
    labelText: 'roomBooking'.label('purpose'),
    hintText: 'roomBooking'.hint('purpose'),
    keyboardType: TextInputType.multiline,
    requiredField: false,
    validator: null,
    onChanged: (_) => c.markFieldAsInteracted('purpose'),
  );
}

Widget roomBookingDocumentUploadFieldWidget(
    RoomBookingFormController c, BuildContext context) {
  return Obx(() => CustomFilePickerWidget(
        selectedFile: c.selectedDocumentFile.value,
        onTap: () async {
          await _handleDocumentFilePicker(c, context);
          c.markFieldAsInteracted('documentProof');
        },
        onDelete: () {
          c.removeDocumentFile();
          c.markFieldAsInteracted('documentProof');
        },
        feature: 'roomBooking',
        fieldKey: 'documentProof',
        allowedExtensions: const ['pdf'],
      ));
}

Future<void> _handleDocumentFilePicker(
    RoomBookingFormController c, BuildContext context) async {
  try {
    final result = await c.pickDocumentFile();

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

      final validationError = c.validateDocumentFile(file);
      if (validationError != null) {
        if (context.mounted) {
          context.showCustomSnackbar(
            message: validationError,
            type: SnackbarType.error,
          );
        }
        return;
      }

      final isValidPdf = await c.validatePdfHeader(file);
      if (!isValidPdf) {
        if (context.mounted) {
          context.showCustomSnackbar(
            message: 'roomBooking'.message('invalidPdfDocument'),
            type: SnackbarType.error,
          );
        }
        return;
      }

      c.setDocumentFile(file);

      final metadata = await PdfHelper.getPdfMetadata(file);
      if (context.mounted) {
        context.showCustomSnackbar(
          message:
              '${'roomBooking'.message('pdfSelected')}: ${metadata.fileName} (${metadata.formattedSize})',
          type: SnackbarType.success,
        );
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
    RoomBookingFormController c, BuildContext context) {
  return [
    roomBookingResearchTitleFieldWidget(c),
    roomBookingSeminarTypeFieldWidget(c),
    roomBookingMainSupervisorFieldWidget(c),
    roomBookingSecondarySupervisorFieldWidget(c),
    roomBookingExaminerFieldWidget(c),
    roomBookingDocumentUploadFieldWidget(c, context),
  ];
}

Widget roomBookingApprovalNotesFieldWidget(BaseFormController c) {
  return CustomMultilineTextFormFieldWidget(
    controller: c.getController('approvalNotes'),
    focusNode: c.getFocusNode('approvalNotes'),
    labelText: 'roomBooking'.message('approvalNotes'),
    hintText: 'roomBooking'.message('approvalNotesHint'),
    keyboardType: TextInputType.multiline,
    requiredField: false,
    validator: null,
    onChanged: (_) => c.markFieldAsInteracted('approvalNotes'),
  );
}

Widget roomBookingStaffGeneralForm(RoomBookingFormController c) {
  return roomBookingPurposeFieldWidget(c);
}
