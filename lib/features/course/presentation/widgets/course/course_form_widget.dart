import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/form.dart';

Widget courseTitleFieldWidget(CourseFormController c) {
  return CustomTitleFieldWidget(
    controller: c.getController('title'),
    focusNode: c.getFocusNode('title'),
    onChanged: (value) {
      c.markFieldAsInteracted('title');
    },
    validator: (value) {
      c.validateRequired(value, 'Title');
      return null;
    },
    onFieldSubmitted: (_) => c.getFocusNode('description').requestFocus(),
    feature: 'course',
  );
}

Widget courseDescriptionFieldWidget(CourseFormController c) {
  return CustomDescriptionFieldWidget(
    controller: c.getController('description'),
    focusNode: c.getFocusNode('description'),
    onChanged: (value) {
      c.markFieldAsInteracted('description');
    },
    feature: 'course',
  );
}

Widget courseStartDateFieldWidget({
  required CourseFormController c,
  required VoidCallback? onTap,
  required String? text,
  required bool enabled,
}) {
  return CustomDateFieldWidget(
    controller: c.getController('startDate')..text = text ?? '',
    focusNode: c.getFocusNode('startDate'),
    onChanged: (value) {
      c.markFieldAsInteracted('startDate');
    },
    validator: (value) {
      c.validateRequired(value, 'Start Date');
      return null;
    },
    onTap: enabled ? onTap : null,
    readOnly: !enabled,
    feature: 'course',
    fieldKey: 'startDate',
  );
}

Widget courseEndDateFieldWidget({
  required CourseFormController c,
  required VoidCallback? onTap,
  required String? text,
  required bool enabled,
}) {
  return CustomDateFieldWidget(
    controller: c.getController('endDate')..text = text ?? '',
    focusNode: c.getFocusNode('endDate'),
    onChanged: (value) {
      c.markFieldAsInteracted('endDate');
    },
    validator: (value) {
      c.validateRequired(value, 'End Date');
      return null;
    },
    onTap: enabled ? onTap : null,
    readOnly: !enabled,
    feature: 'course',
    fieldKey: 'endDate',
  );
}

Widget courseEnrollKeyFieldWidget(CourseFormController c) {
  return CustomKeyFieldWidget(
    controller: c.getController('enrollKey'),
    focusNode: c.getFocusNode('enrollKey'),
    onChanged: (value) {
      c.markFieldAsInteracted('enrollKey');
    },
    feature: 'course',
  );
}

Widget courseImageFieldWidget(CourseFormController c) {
  return Obx(() => CustomImagePickerWidget(
        selectedImagePath: c.selectedImagePath.value,
        networkImage: c.course?.image,
        showNetworkImage:
            c.course?.image != null && c.course!.image!.isNotEmpty,
        hasDeletedNetworkImage: c.hasDeletedNetworkImage.value,
        onTap: () => c.pickImage(),
        onDelete: () => c.deleteImage(),
        feature: 'course',
      ));
}

Widget courseStudentsFieldWidget(CourseFormController c) {
  return UserFormSelectionWidget(
    controller: c.getController('students'),
    focusNode: c.getFocusNode('students'),
    selectedIds: c.studentsId,
    selectedUsers: c.selectedStudentUsers,
    controllerKey: 'course_students_controller',
    hint: 'course'.hint('students'),
    allowedGroups: [
      GroupEnum.student.displayName,
      GroupEnum.laboratoryAssistant.displayName,
    ],
  );
}

Widget courseTeachingAssistantsFieldWidget(CourseFormController c) {
  return UserFormSelectionWidget(
    controller: c.getController('teachingAssistants'),
    focusNode: c.getFocusNode('teachingAssistants'),
    selectedIds: c.teachingAssistantsId,
    selectedUsers: c.selectedTeachingAssistantUsers,
    controllerKey: 'course_teaching_assistants_controller',
    hint: 'course'.hint('teachingAssistants'),
    allowedGroups: [GroupEnum.laboratoryAssistant.displayName],
  );
}

List<Widget> courseInfoForm({
  required CourseFormController c,
  required VoidCallback? onStartDateTap,
  required VoidCallback? onEndDateTap,
  required String? startDateText,
  required String? endDateText,
  required bool startDateEnabled,
  required bool endDateEnabled,
}) {
  return [
    courseTitleFieldWidget(c),
    courseStartDateFieldWidget(
        c: c,
        onTap: onStartDateTap,
        text: startDateText,
        enabled: startDateEnabled),
    courseEndDateFieldWidget(
        c: c, onTap: onEndDateTap, text: endDateText, enabled: endDateEnabled),
    courseEnrollKeyFieldWidget(c),
  ];
}

List<Widget> courseAdditionalInfo(CourseFormController c) {
  return [
    courseDescriptionFieldWidget(c),
    courseImageFieldWidget(c),
  ];
}

Widget courseEnrollFormWidget(EnrollCourseController c) {
  return CustomKeyFieldWidget(
    controller: c.getController('enrollKey'),
    focusNode: c.getFocusNode('enrollKey'),
    onChanged: (value) {
      c.markFieldAsInteracted('enrollKey');
    },
    validator: (value) {
      c.validateRequired(value, 'Enroll Key');
      return null;
    },
    onFieldSubmitted: (_) => c.enrollCourse(),
    isRequired: true,
  );
}
