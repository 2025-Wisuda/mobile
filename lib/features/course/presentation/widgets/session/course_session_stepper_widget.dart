import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';
import 'package:table_calendar/table_calendar.dart';

enum CourseSessionFormMode { create, update }

class CourseSessionStepperWidget extends StatelessWidget {
  final CourseSessionFormController controller;
  final CourseSessionFormMode mode;
  final String? courseSessionId;
  final String? courseId;

  const CourseSessionStepperWidget({
    super.key,
    required this.controller,
    required this.mode,
    this.courseSessionId,
    this.courseId,
  });

  void _handleDateTap(BuildContext context) async {
    final courseStartDate = controller.courseInfo?.startDate;
    final courseEndDate = controller.courseInfo?.endDate;

    final firstDate = courseStartDate ?? DateTime.now();
    final lastDate = courseEndDate ?? DateTime(2100);
    final selected = controller.selectedDate.value;
    final initialDate = (selected != null && !selected.isBefore(firstDate))
        ? selected
        : firstDate;

    DateTime? picked;
    await showDialog(
      context: context,
      builder: (context) {
        final Rx<DateTime> tempSelected = initialDate.obs;
        return AlertDialog(
          title: Text('selectDate'.note()),
          content: SizedBox(
            width: 350,
            height: 400,
            child: Obx(() => CustomCalendarSelectionWidget(
                  calendarFormat: CalendarFormat.month,
                  selectedDate: tempSelected.value,
                  focusedDate: tempSelected.value,
                  onFormatChanged: (_) {},
                  firstDay: firstDate,
                  lastDay: lastDate,
                  onDaySelected: (date, _) {
                    tempSelected.value = date;
                  },
                  isDateAvailable: (date) =>
                      !date.isBefore(firstDate) && !date.isAfter(lastDate),
                  formatButtonVisible: true,
                  disableFormatButton: true,
                )),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('cancel'.note()),
            ),
            TextButton(
              onPressed: () {
                picked = tempSelected.value;
                Navigator.of(context).pop();
              },
              child: Text('selectDate'.note()),
            ),
          ],
        );
      },
    );
    if (picked != null) {
      controller.selectDate(picked!);
    }
  }

  void _handleStartTimeTap(BuildContext context) async {
    controller.selectStartTime();
  }

  void _handleEndTimeTap(BuildContext context) async {
    controller.selectEndTime();
  }

  @override
  Widget build(BuildContext context) {
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
          currentStep: controller.currentStep.value,
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
                      controller: controller,
                      onDateTap: () => _handleDateTap(context),
                      onStartTimeTap: () => _handleStartTimeTap(context),
                      onEndTimeTap: () => _handleEndTimeTap(context),
                      dateText: controller.selectedDate.value != null
                          ? DateHelper.formatDayMonthYear(
                              date: controller.selectedDate.value)
                          : '',
                      startTimeText: controller.startTimeReactive.value,
                      endTimeText: controller.endTimeReactive.value,
                    ),
                  ],
                );
              })),
              isActive: controller.currentStep.value >= 0,
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
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  children: [...courseSessionAdditionalInfo(controller)],
                ),
              )),
              isActive: controller.currentStep.value >= 1,
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
                child: _buildTeachingAssistantsSection(context),
              ),
              isActive: controller.currentStep.value >= 2,
            ),
          ],
          controlsBuilder: (context, details) {
            return Obx(() {
              return _buildStepControls(
                context,
                cancelCallback: controller.previousStep,
                continueCallback: controller.nextStep,
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
    required CourseSessionFormMode mode,
  }) {
    final isFormValid = controller.reactiveFormValid.value;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: controller.currentStep.value == 0
            ? MainAxisAlignment.end
            : MainAxisAlignment.spaceBetween,
        children: [
          if (controller.currentStep.value > 0)
            SizedBox(
              width: 136,
              child: _buildBackButton(context, onPressed: cancelCallback),
            ),
          SizedBox(
            width: 130,
            child: CustomStepperButtonWidget(
              isValid: isFormValid,
              isLastStep: controller.isLastStep.value,
              onTap: controller.isLastStep.value
                  ? () => controller.submitForm()
                  : null,
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

  Widget _buildTeachingAssistantsSection(BuildContext context) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectTeachingAssistants'),
          () => controller.toggleTeachingAssistants(),
        ),
        Obx(
          () => controller.isTeachingAssistantsOpen.value
              ? courseSessionTeachingAssistantsFieldWidget(controller)
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
