import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_time_range_widget.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/form.dart';

Widget courseSessionTitleFieldWidget(CourseSessionFormController c) {
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

Widget courseSessionDescriptionFieldWidget(CourseSessionFormController c) {
  return CustomDescriptionFieldWidget(
    controller: c.getController('description'),
    focusNode: c.getFocusNode('description'),
    onChanged: (value) {
      c.markFieldAsInteracted('description');
    },
    feature: 'course',
  );
}

Widget courseSessionDateFieldWidget({
  required CourseSessionFormController c,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomDateFieldWidget(
    controller: c.getController('date')..text = text ?? '',
    focusNode: c.getFocusNode('date'),
    onChanged: (value) {
      c.markFieldAsInteracted('date');
      c.getController('startTime').clear();
      c.getController('endTime').clear();
      c.startTimeReactive.value = '';
      c.endTimeReactive.value = '';
      c.reactiveFormValid.refresh();
    },
    validator: (value) {
      c.validateRequired(value, 'Date');
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
  required CourseSessionFormController c,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomTimeFieldWidget(
    controller: c.getController('startTime')..text = text ?? '',
    focusNode: c.getFocusNode('startTime'),
    onChanged: (value) {
      c.markFieldAsInteracted('startTime');
    },
    validator: (value) {
      c.validateRequired(value, 'Start Time');
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
  required CourseSessionFormController c,
  required VoidCallback onTap,
  required String? text,
}) {
  return CustomTimeFieldWidget(
    controller: c.getController('endTime')..text = text ?? '',
    focusNode: c.getFocusNode('endTime'),
    onChanged: (value) {
      c.markFieldAsInteracted('endTime');
    },
    validator: (value) {
      c.validateRequired(value, 'End Time');
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
  required CourseSessionFormController c,
  required String selectedDate,
}) {
  return LabScheduleTimeRangeWidget(
    selectedDate: selectedDate,
    selectedStartTime: c.startTimeReactive.value,
    selectedEndTime: c.endTimeReactive.value,
    controllerKey: 'course_session_time_availability',
    label: 'course'.label('sessionTimeRange'),
    onTimeRangeSelected: (startTime, endTime) {
      c.getController('startTime').text = startTime;
      c.startTimeReactive.value = startTime;
      c.getController('endTime').text = endTime;
      c.endTimeReactive.value = endTime;
      c.reactiveFormValid.refresh();
    },
  );
}

Widget courseSessionTypeFieldWidget(CourseSessionFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('type'),
    focusNode: c.getFocusNode('type'),
    labelText: 'course'.label('sessionType'),
    hintText: 'course'.hint('sessionType'),
    onChanged: (value) {
      c.markFieldAsInteracted('type');
    },
    keyboardType: TextInputType.text,
  );
}

Widget courseSessionStatusFieldWidget(CourseSessionFormController c) {
  return CustomTextFormFieldWidget(
    controller: c.getController('status'),
    focusNode: c.getFocusNode('status'),
    labelText: 'course'.label('sessionStatus'),
    hintText: 'course'.hint('sessionStatus'),
    onChanged: (value) {
      c.markFieldAsInteracted('status');
    },
    keyboardType: TextInputType.text,
  );
}

Widget courseSessionTeachingAssistantsFieldWidget(
    CourseSessionFormController c) {
  final courseTAs = c.courseInfo?.teachingAssistants ?? [];
  final courseTAIds = courseTAs.map((ta) => ta.id!).toList();

  return UserFormSelectionWidget(
    controller: c.getController('teachingAssistants'),
    focusNode: c.getFocusNode('teachingAssistants'),
    selectedIds: c.teachingAssistantsId,
    selectedUsers: c.selectedTeachingAssistantUsers,
    controllerKey: 'course_session_teaching_assistants_controller',
    hint: 'course'.hint('sessionTeachingAssistants'),
    allowedGroups: [GroupEnum.laboratoryAssistant.displayName],
    restrictToUserIds: courseTAIds.isNotEmpty ? courseTAIds : null,
  );
}

List<Widget> courseSessionInfoForm({
  required CourseSessionFormController c,
  required VoidCallback onDateTap,
  required VoidCallback onStartTimeTap,
  required VoidCallback onEndTimeTap,
  required String? dateText,
  required String? startTimeText,
  required String? endTimeText,
}) {
  return [
    courseSessionTitleFieldWidget(c),
    courseSessionDateFieldWidget(c: c, onTap: onDateTap, text: dateText),
    // Original time fields (commented out as backup)
    // courseSessionStartTimeFieldWidget(
    //     c: c, onTap: onStartTimeTap, text: startTimeText),
    // courseSessionEndTimeFieldWidget(
    //     c: c, onTap: onEndTimeTap, text: endTimeText),

    // New availability-based time selection
    if (c.selectedDate.value != null)
      courseSessionTimeAvailabilityWidget(
        c: c,
        selectedDate: c.selectedDate.value!.toIso8601String(),
      ),
  ];
}

List<Widget> courseSessionAdditionalInfo(CourseSessionFormController c) {
  return [
    courseSessionDescriptionFieldWidget(c),
    // courseSessionTypeFieldWidget(c),
    // courseSessionStatusFieldWidget(c),
  ];
}
