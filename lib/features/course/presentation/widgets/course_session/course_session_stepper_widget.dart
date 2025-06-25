import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

enum CourseSessionFormMode { create, update }

class CourseSessionStepperWidget extends StatelessWidget {
  final CourseSessionFormController c;
  final CourseSessionFormMode mode;
  final String? courseSessionId;
  final String? courseId;

  const CourseSessionStepperWidget({
    super.key,
    required this.c,
    required this.mode,
    this.courseSessionId,
    this.courseId,
  });

  void _handleDateTap(BuildContext context) async {
    final courseStartDate = c.courseInfo?.startDate;
    final courseEndDate = c.courseInfo?.endDate;

    final firstDate = courseStartDate ?? DateTime.now();
    final lastDate = courseEndDate ?? DateTime(2100);

    final picked = await showDatePicker(
      context: context,
      initialDate: c.selectedDate.value ?? firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (picked != null) {
      c.selectDate(picked);
    }
  }

  void _handleStartTimeTap(BuildContext context) async {
    c.selectStartTime();
  }

  void _handleEndTimeTap(BuildContext context) async {
    c.selectEndTime();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mode == CourseSessionFormMode.update) {
        c.resetStepper();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<DetailCourseController>().fetchDetail(
        courseId ?? '',
      );
    });

    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height,
      child: Obx(
        () => Stepper(
          type: StepperType.vertical,
          currentStep: c.currentStep.value,
          steps: [
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseSessionInfo'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('required'),
              ),
              content: SingleChildScrollView(child: Obx(() {
                return Column(
                  spacing: 12,
                  children: [
                    ...courseSessionInfoForm(
                      c: c,
                      onDateTap: () => _handleDateTap(context),
                      onStartTimeTap: () => _handleStartTimeTap(context),
                      onEndTimeTap: () => _handleEndTimeTap(context),
                      dateText: c.selectedDate.value != null
                          ? DateHelper.formatDayMonthYear(
                              date: c.selectedDate.value)
                          : '',
                      startTimeText: c.startTimeReactive.value,
                      endTimeText: c.endTimeReactive.value,
                    ),
                  ],
                );
              })),
              isActive: c.currentStep.value >= 0,
            ),
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseSessionAdditionalInfo'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('optional'),
              ),
              content: SingleChildScrollView(
                  child: Form(
                key: c.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  children: [...courseSessionAdditionalInfo(c)],
                ),
              )),
              isActive: c.currentStep.value >= 1,
            ),
            Step(
              title: _buildStepTitle(
                context,
                title: 'course'.message('courseSessionTeachingAssistants'),
              ),
              subtitle: _buildStepSubtitle(
                context,
                subtitle: 'course'.message('selectTeachingAssistants'),
              ),
              content: SingleChildScrollView(
                child: _buildTeachingAssistantsSection(context, c),
              ),
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
    required CourseSessionFormController c,
    required CourseSessionFormMode mode,
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
              mode: mode == CourseSessionFormMode.create
                  ? CourseFormMode.create
                  : CourseFormMode.update,
            ),
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

  Widget _buildTeachingAssistantsSection(
      BuildContext context, CourseSessionFormController c) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectTeachingAssistants'),
          () => c.toggleTeachingAssistants(),
        ),
        Obx(
          () => c.isTeachingAssistantsOpen.value
              ? courseSessionTeachingAssistantsFieldWidget(c)
              : const SizedBox.shrink(),
        ),
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
}
