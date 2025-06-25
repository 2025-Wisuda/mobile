import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

enum CourseFormMode { create, update }

class CourseStepperWidget extends StatelessWidget {
  final CourseFormController c;
  final CourseFormMode mode;
  final String? courseId;

  const CourseStepperWidget({
    super.key,
    required this.c,
    required this.mode,
    this.courseId,
  });

  bool _isStartDateInPast() {
    if (c.selectedStartDate.value == null) return false;
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return c.selectedStartDate.value!.isBefore(tomorrow);
  }

  void _handleStartDateTap(BuildContext context) async {
    final tomorrow = DateTime.now().add(const Duration(days: 1));

    if (c.selectedStartDate.value != null &&
        c.selectedStartDate.value!.isBefore(tomorrow)) {
      return;
    }

    final initialDate = (c.selectedStartDate.value == null ||
            c.selectedStartDate.value!.isBefore(tomorrow))
        ? tomorrow
        : c.selectedStartDate.value!;

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: tomorrow,
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      c.selectedStartDate.value = picked;
      c.getController('startDate').text =
          DateHelper.formatDayMonthYear(date: picked);
      c.selectedEndDate.value = null;
      c.getController('endDate').text = '';
    }
  }

  void _handleEndDateTap(BuildContext context) async {
    if (c.selectedStartDate.value == null) return;

    final minEndDate = c.selectedStartDate.value!.add(const Duration(days: 1));

    final initialDate = (c.selectedEndDate.value == null ||
            c.selectedEndDate.value!.isBefore(minEndDate))
        ? minEndDate
        : c.selectedEndDate.value!;

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: minEndDate,
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      c.selectedEndDate.value = picked;
      c.getController('endDate').text =
          DateHelper.formatDayMonthYear(date: picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mode == CourseFormMode.update) {
        c.resetStepper();
      }
    });

    return SingleChildScrollView(
      child: Obx(
        () => Stepper(
          type: StepperType.vertical,
          currentStep: c.currentStep.value,
          steps: [
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseInfo'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('required'),
              ),
              content: Obx(() => Column(
                    spacing: 12,
                    children: [
                      ...courseInfoForm(
                        c: c,
                        onStartDateTap: _isStartDateInPast()
                            ? null
                            : () => _handleStartDateTap(context),
                        onEndDateTap: c.selectedStartDate.value == null
                            ? null
                            : () => _handleEndDateTap(context),
                        startDateText: c.selectedStartDate.value != null
                            ? DateHelper.formatDayMonthYear(
                                date: c.selectedStartDate.value)
                            : '',
                        endDateText: c.selectedEndDate.value != null
                            ? DateHelper.formatDayMonthYear(
                                date: c.selectedEndDate.value)
                            : '',
                        startDateEnabled: !_isStartDateInPast(),
                        endDateEnabled: c.selectedStartDate.value != null,
                      ),
                    ],
                  )),
              isActive: c.currentStep.value >= 0,
            ),
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseAdditionalInfo'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('optional'),
              ),
              content: Form(
                key: c.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  children: [...courseAdditionalInfo(c)],
                ),
              ),
              isActive: c.currentStep.value >= 1,
            ),
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseParticipantsInfo'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('selectParticipants'),
              ),
              content: _buildParticipantsFields(context, c),
              isActive: c.currentStep.value >= 2,
            ),
          ],
          controlsBuilder: (context, details) {
            return Obx(() {
              return _buildStepControls(
                context,
                cancelCallback: c.previousStep,
                continueCallback: c.nextStep,
                c: c,
                mode: mode,
              );
            });
          },
        ),
      ),
    );
  }

  Widget _buildStepTitle(BuildContext context, {required String title}) {
    return Text(
      title,
      style: context.bodyMediumW(500),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildStepSubtitle(BuildContext context, {required String subtitle}) {
    return Text(
      subtitle,
      style: context.bodySmallW(400),
      maxLines: 3,
      overflow: TextOverflow.visible,
    );
  }

  Widget _buildStepControls(
    BuildContext context, {
    VoidCallback? cancelCallback,
    VoidCallback? continueCallback,
    required CourseFormController c,
    required CourseFormMode mode,
  }) {
    final isFormValid = c.reactiveFormValid.value;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: c.currentStep.value == 0
            ? MainAxisAlignment.end
            : MainAxisAlignment.spaceBetween,
        children: [
          if (c.currentStep.value > 0)
            SizedBox(
              width: 136,
              child: _buildBackButton(context, onPressed: cancelCallback),
            ),
          SizedBox(
            width: 130,
            child: CustomStepperButtonWidget(
                isValid: isFormValid,
                isLastStep: c.isLastStep.value,
                onTap: c.isLastStep.value ? () => c.submitForm() : null,
                continueCallback: continueCallback,
                mode: mode),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, {VoidCallback? onPressed}) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        maximumSize: const Size(double.infinity, 48),
        side: BorderSide(
          color: context.outline.withValues(alpha: 0.5),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        overlayColor: context.outline.withValues(alpha: 0.1),
      ),
      child: Text(
        i18n.tr('features.general.form.label.previous'),
        style: context.bodyMediumW(500),
      ),
    );
  }

  Widget _buildParticipantsFields(
      BuildContext context, CourseFormController c) {
    return Column(
      spacing: 12,
      children: [
        _buildStudentsSection(context, c),
        _buildTeachingAssistantsSection(context, c),
      ],
    );
  }

  Widget _buildGestureSelection(
      BuildContext context, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.bodyMediumW(500),
            ),
            Icon(Icons.expand_more),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentsSection(BuildContext context, CourseFormController c) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectStudents'),
          () {
            if (c.isTeachingAssistantsOpen.value) {
              c.toggleTeachingAssistants();
            }
            c.toggleStudents();
          },
        ),
        Obx(
          () => c.isStudentsOpen.value
              ? Column(
                  children: [
                    courseStudentsFieldWidget(c),
                    Divider(color: context.outline),
                  ],
                )
              : const Divider(),
        ),
      ],
    );
  }

  Widget _buildTeachingAssistantsSection(
      BuildContext context, CourseFormController c) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectTeachingAssistants'),
          () {
            if (c.isStudentsOpen.value) {
              c.toggleStudents();
            }
            c.toggleTeachingAssistants();
          },
        ),
        Obx(
          () => c.isTeachingAssistantsOpen.value
              ? courseTeachingAssistantsFieldWidget(c)
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
