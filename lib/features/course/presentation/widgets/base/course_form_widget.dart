import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/form.dart';

Widget courseTitleFieldWidget(CourseFormController controller) {
  return CustomTitleFieldWidget(
    controller: controller.getController('title'),
    focusNode: controller.getFocusNode('title'),
    onChanged: (value) {
      controller.markFieldAsInteracted('title');
    },
    validator: (value) {
      controller.validateRequired(value, 'Title');
      return null;
    },
    onFieldSubmitted: (_) =>
        controller.getFocusNode('description').requestFocus(),
    feature: 'course',
  );
}

Widget courseDescriptionFieldWidget(CourseFormController controller) {
  return CustomDescriptionFieldWidget(
    controller: controller.getController('description'),
    focusNode: controller.getFocusNode('description'),
    onChanged: (value) {
      controller.markFieldAsInteracted('description');
    },
    feature: 'course',
  );
}

Widget courseStartDateFieldWidget({
  required CourseFormController controller,
  required VoidCallback? onTap,
  required bool enabled,
}) {
  return CustomDateFieldWidget(
    controller: controller.getController('startDate'),
    focusNode: controller.getFocusNode('startDate'),
    onChanged: (value) {
      controller.markFieldAsInteracted('startDate');
    },
    validator: (value) {
      controller.validateRequired(value, 'Start Date');
      return null;
    },
    onTap: enabled ? onTap : null,
    readOnly: !enabled,
    feature: 'course',
    fieldKey: 'startDate',
    enabled: enabled,
  );
}

Widget courseEndDateFieldWidget({
  required CourseFormController controller,
  required VoidCallback? onTap,
  required bool enabled,
}) {
  return CustomDateFieldWidget(
    controller: controller.getController('endDate'),
    focusNode: controller.getFocusNode('endDate'),
    onChanged: (value) {
      controller.markFieldAsInteracted('endDate');
    },
    validator: (value) {
      controller.validateRequired(value, 'End Date');
      return null;
    },
    onTap: enabled ? onTap : null,
    readOnly: !enabled,
    feature: 'course',
    fieldKey: 'endDate',
    enabled: enabled,
  );
}

Widget courseEnrollKeyFieldWidget(CourseFormController controller) {
  return CustomKeyFieldWidget(
    controller: controller.getController('enrollKey'),
    focusNode: controller.getFocusNode('enrollKey'),
    onChanged: (value) {
      controller.markFieldAsInteracted('enrollKey');
    },
    feature: 'course',
  );
}

Widget courseImageFieldWidget(CourseFormController controller) {
  return Obx(() => CustomImagePickerWidget(
        selectedImagePath: controller.selectedImagePath.value,
        networkImage: controller.course?.image,
        showNetworkImage: controller.course?.image != null &&
            controller.course!.image!.isNotEmpty,
        hasDeletedNetworkImage: controller.hasDeletedNetworkImage.value,
        onTap: () => controller.pickImage(),
        onDelete: () => controller.deleteImage(),
        feature: 'course',
      ));
}

Widget courseStudentsFieldWidget(CourseFormController controller) {
  return UserFormSelectionWidget(
    controller: controller.getController('students'),
    focusNode: controller.getFocusNode('students'),
    selectedIds: controller.studentsId,
    selectedUsers: controller.selectedStudentUsers,
    controllerKey: 'course_students_controller',
    hint: 'course'.hint('students'),
    allowedGroups: [
      GroupEnum.student.displayName,
      GroupEnum.laboratoryAssistant.displayName,
    ],
  );
}

Widget courseTeachingAssistantsFieldWidget(CourseFormController controller) {
  return UserFormSelectionWidget(
    controller: controller.getController('teachingAssistants'),
    focusNode: controller.getFocusNode('teachingAssistants'),
    selectedIds: controller.teachingAssistantsId,
    selectedUsers: controller.selectedTeachingAssistantUsers,
    controllerKey: 'course_teaching_assistants_controller',
    hint: 'course'.hint('teachingAssistants'),
    allowedGroups: [GroupEnum.laboratoryAssistant.displayName],
  );
}

List<Widget> courseInfoForm({
  required CourseFormController controller,
  required VoidCallback? onStartDateTap,
  required VoidCallback? onEndDateTap,
  required bool startDateEnabled,
  required bool endDateEnabled,
}) {
  return [
    courseTitleFieldWidget(controller),
    courseStartDateFieldWidget(
      controller: controller,
      onTap: onStartDateTap,
      enabled: startDateEnabled,
    ),
    courseEndDateFieldWidget(
        controller: controller, onTap: onEndDateTap, enabled: endDateEnabled),
    courseEnrollKeyFieldWidget(controller),
  ];
}

List<Widget> courseAdditionalInfo(CourseFormController controller) {
  return [
    courseDescriptionFieldWidget(controller),
    courseImageFieldWidget(controller),
  ];
}

Widget courseEnrollFormWidget(EnrollCourseController controller) {
  return CustomKeyFieldWidget(
    controller: controller.getController('enrollKey'),
    focusNode: controller.getFocusNode('enrollKey'),
    onChanged: (value) {
      controller.markFieldAsInteracted('enrollKey');
    },
    validator: (value) {
      controller.validateRequired(value, 'Enroll Key');
      return null;
    },
    onFieldSubmitted: (_) => controller.enrollCourse(),
    isRequired: true,
  );
}
