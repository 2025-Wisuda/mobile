import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_time_range_widget.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/form.dart';

Widget courseSessionTitleFieldWidget(CourseSessionFormController controller) {
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

Widget courseSessionDescriptionFieldWidget(
    CourseSessionFormController controller) {
  return CustomDescriptionFieldWidget(
    controller: controller.getController('description'),
    focusNode: controller.getFocusNode('description'),
    onChanged: (value) {
      controller.markFieldAsInteracted('description');
    },
    feature: 'course',
  );
}

Widget courseSessionDateFieldWidget({
  required CourseSessionFormController controller,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomDateFieldWidget(
    controller: controller.getController('date')..text = text ?? '',
    focusNode: controller.getFocusNode('date'),
    onChanged: (value) {
      controller.markFieldAsInteracted('date');
      controller.getController('startTime').clear();
      controller.getController('endTime').clear();
      controller.startTimeReactive.value = '';
      controller.endTimeReactive.value = '';
      controller.reactiveFormValid.refresh();
    },
    validator: (value) {
      controller.validateRequired(value, 'Date');
      return null;
    },
    onTap: onTap,
    readOnly: false,
    feature: 'course',
    fieldKey: 'sessionDate',
    showCalendarIcon: false,
  );
}

Widget courseSessionStartTimeFieldWidget({
  required CourseSessionFormController controller,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomTimeFieldWidget(
    controller: controller.getController('startTime')..text = text ?? '',
    focusNode: controller.getFocusNode('startTime'),
    onChanged: (value) {
      controller.markFieldAsInteracted('startTime');
    },
    validator: (value) {
      controller.validateRequired(value, 'Start Time');
      return null;
    },
    onTap: onTap,
    feature: 'course',
    fieldKey: 'sessionStartTime',
    showTimeIcon: false,
    readOnly: true,
    enable: true,
  );
}

Widget courseSessionEndTimeFieldWidget({
  required CourseSessionFormController controller,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomTimeFieldWidget(
    controller: controller.getController('endTime')..text = text ?? '',
    focusNode: controller.getFocusNode('endTime'),
    onChanged: (value) {
      controller.markFieldAsInteracted('endTime');
    },
    validator: (value) {
      controller.validateRequired(value, 'End Time');
      return null;
    },
    onTap: onTap,
    feature: 'course',
    fieldKey: 'sessionEndTime',
    showTimeIcon: false,
    readOnly: true,
    enable: true,
  );
}

Widget courseSessionTimeAvailabilityWidget({
  required CourseSessionFormController controller,
  required String selectedDate,
}) {
  return LabScheduleTimeRangeWidget(
    selectedDate: selectedDate,
    selectedStartTime: controller.startTimeReactive.value,
    selectedEndTime: controller.endTimeReactive.value,
    controllerKey: 'course_session_time_availability',
    label: 'course'.label('sessionTimeRange'),
    onTimeRangeSelected: (startTime, endTime) {
      controller.getController('startTime').text = startTime;
      controller.startTimeReactive.value = startTime;
      controller.getController('endTime').text = endTime;
      controller.endTimeReactive.value = endTime;
      controller.reactiveFormValid.refresh();
    },
  );
}

Widget courseSessionTypeFieldWidget(CourseSessionFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('type'),
    focusNode: controller.getFocusNode('type'),
    labelText: 'course'.label('sessionType'),
    hintText: 'course'.hint('sessionType'),
    onChanged: (value) {
      controller.markFieldAsInteracted('type');
    },
    keyboardType: TextInputType.text,
  );
}

Widget courseSessionStatusFieldWidget(CourseSessionFormController controller) {
  return CustomTextFormFieldWidget(
    controller: controller.getController('status'),
    focusNode: controller.getFocusNode('status'),
    labelText: 'course'.label('sessionStatus'),
    hintText: 'course'.hint('sessionStatus'),
    onChanged: (value) {
      controller.markFieldAsInteracted('status');
    },
    keyboardType: TextInputType.text,
  );
}

Widget courseSessionTeachingAssistantsFieldWidget(
    CourseSessionFormController controller) {
  final courseTAs = controller.courseInfo?.teachingAssistants ?? [];
  final courseTAIds = courseTAs.map((ta) => ta.id!).toList();

  return UserFormSelectionWidget(
    controller: controller.getController('teachingAssistants'),
    focusNode: controller.getFocusNode('teachingAssistants'),
    selectedIds: controller.teachingAssistantsId,
    selectedUsers: controller.selectedTeachingAssistantUsers,
    controllerKey: 'course_session_teaching_assistants_controller',
    hint: 'course'.hint('sessionTeachingAssistants'),
    allowedGroups: [GroupEnum.laboratoryAssistant.displayName],
    restrictToUserIds: courseTAIds.isNotEmpty ? courseTAIds : null,
  );
}

List<Widget> courseSessionInfoForm({
  required CourseSessionFormController controller,
  required VoidCallback onDateTap,
  required VoidCallback onStartTimeTap,
  required VoidCallback onEndTimeTap,
  required String? dateText,
  required String? startTimeText,
  required String? endTimeText,
}) {
  return [
    courseSessionTitleFieldWidget(controller),
    courseSessionDateFieldWidget(
        controller: controller, onTap: onDateTap, text: dateText),
    if (controller.selectedDate.value != null)
      courseSessionTimeAvailabilityWidget(
        controller: controller,
        selectedDate: controller.selectedDate.value!.toIso8601String(),
      ),
  ];
}

List<Widget> courseSessionAdditionalInfo(
    CourseSessionFormController controller) {
  return [
    courseSessionDescriptionFieldWidget(controller),
  ];
}
