import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';
import 'package:table_calendar/table_calendar.dart';

enum CourseFormMode { create, update }

class CourseStepperWidget extends StatefulWidget {
  final CourseFormController controller;
  final CourseFormMode mode;
  final String? courseId;

  CourseStepperWidget({
    Key? key,
    required this.controller,
    required this.mode,
    this.courseId,
  }) : super(key: key);

  @override
  State<CourseStepperWidget> createState() => _CourseStepperWidgetState();
}

class _CourseStepperWidgetState extends State<CourseStepperWidget> {
  final Rx<CalendarFormat> _calendarFormat = CalendarFormat.month.obs;

  bool _isStartDateInPast() {
    if (widget.controller.selectedStartDate.value == null) return false;
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return widget.controller.selectedStartDate.value!.isBefore(tomorrow);
  }

  void _handleStartDateTap(BuildContext context) async {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final selected = widget.controller.selectedStartDate.value;
    final initialDate = (selected != null && !selected.isBefore(tomorrow))
        ? selected
        : tomorrow;

    DateTime? picked;
    await showDialog(
      context: context,
      builder: (context) {
        final Rx<DateTime> tempSelected = initialDate.obs;
        return AlertDialog(
          title: Text('selectStartDate'.note()),
          content: SizedBox(
            width: 350,
            height: 400,
            child: Obx(() => CustomCalendarSelectionWidget(
                  calendarFormat: _calendarFormat.value,
                  selectedDate: tempSelected.value,
                  focusedDate: tempSelected.value,
                  onFormatChanged: (format) => _calendarFormat.value = format,
                  firstDay: tomorrow,
                  lastDay: DateTime(2100),
                  onDaySelected: (date, _) {
                    tempSelected.value = date;
                  },
                  isDateAvailable: (date) => !date.isBefore(tomorrow),
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
      widget.controller.selectedStartDate.value = picked;
      widget.controller.getController('startDate').text =
          DateHelper.formatDayMonthYear(date: picked!);
      widget.controller.selectedEndDate.value = null;
      widget.controller.getController('endDate').text = '';
    }
  }

  void _handleEndDateTap(BuildContext context) async {
    if (widget.controller.selectedStartDate.value == null) return;

    final minEndDate =
        widget.controller.selectedStartDate.value!.add(const Duration(days: 1));
    final selected = widget.controller.selectedEndDate.value;
    final initialDate = (selected != null && !selected.isBefore(minEndDate))
        ? selected
        : minEndDate;

    DateTime? picked;
    await showDialog(
      context: context,
      builder: (context) {
        final Rx<DateTime> tempSelected = initialDate.obs;
        return AlertDialog(
          title: Text('selectEndDate'.note()),
          content: SizedBox(
            width: 350,
            height: 400,
            child: Obx(() => CustomCalendarSelectionWidget(
                  calendarFormat: _calendarFormat.value,
                  selectedDate: tempSelected.value,
                  focusedDate: tempSelected.value,
                  onFormatChanged: (format) => _calendarFormat.value = format,
                  firstDay: minEndDate,
                  lastDay: DateTime(2100),
                  onDaySelected: (date, _) {
                    tempSelected.value = date;
                  },
                  isDateAvailable: (date) => !date.isBefore(minEndDate),
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
      widget.controller.selectedEndDate.value = picked;
      widget.controller.getController('endDate').text =
          DateHelper.formatDayMonthYear(date: picked!);
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.mode == CourseFormMode.update) {
        widget.controller.resetStepper();
      }
    });

    return SingleChildScrollView(
      child: Obx(
        () => Stepper(
          type: StepperType.vertical,
          currentStep: widget.controller.currentStep.value,
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
                        controller: widget.controller,
                        onStartDateTap: _isStartDateInPast()
                            ? null
                            : () => _handleStartDateTap(context),
                        onEndDateTap:
                            widget.controller.selectedStartDate.value == null
                                ? null
                                : () => _handleEndDateTap(context),
                        startDateEnabled: !_isStartDateInPast(),
                        endDateEnabled:
                            widget.controller.selectedStartDate.value != null,
                      ),
                    ],
                  )),
              isActive: widget.controller.currentStep.value >= 0,
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
                key: widget.controller.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  children: [...courseAdditionalInfo(widget.controller)],
                ),
              ),
              isActive: widget.controller.currentStep.value >= 1,
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
              content: _buildParticipantsFields(context),
              isActive: widget.controller.currentStep.value >= 2,
            ),
          ],
          controlsBuilder: (context, details) {
            return Obx(() {
              return _buildStepControls(
                context,
                cancelCallback: widget.controller.previousStep,
                continueCallback: widget.controller.nextStep,
                mode: widget.mode,
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
    required CourseFormMode mode,
  }) {
    final isFormValid = widget.controller.reactiveFormValid.value;
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: widget.controller.currentStep.value == 0
            ? MainAxisAlignment.end
            : MainAxisAlignment.spaceBetween,
        children: [
          if (widget.controller.currentStep.value > 0)
            SizedBox(
              width: 136,
              child: _buildBackButton(context, onPressed: cancelCallback),
            ),
          SizedBox(
            width: 130,
            child: CustomStepperButtonWidget(
                isValid: isFormValid,
                isLastStep: widget.controller.isLastStep.value,
                onTap: widget.controller.isLastStep.value
                    ? () => widget.controller.submitForm()
                    : null,
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

  Widget _buildParticipantsFields(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        _buildStudentsSection(context),
        _buildTeachingAssistantsSection(context),
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

  Widget _buildStudentsSection(BuildContext context) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectStudents'),
          () {
            if (widget.controller.isTeachingAssistantsOpen.value) {
              widget.controller.toggleTeachingAssistants();
            }
            widget.controller.toggleStudents();
          },
        ),
        Obx(
          () => widget.controller.isStudentsOpen.value
              ? Column(
                  children: [
                    courseStudentsFieldWidget(widget.controller),
                    Divider(color: context.outline),
                  ],
                )
              : const Divider(),
        ),
      ],
    );
  }

  Widget _buildTeachingAssistantsSection(BuildContext context) {
    return Column(
      children: [
        _buildGestureSelection(
          context,
          'course'.message('selectTeachingAssistants'),
          () {
            if (widget.controller.isStudentsOpen.value) {
              widget.controller.toggleStudents();
            }
            widget.controller.toggleTeachingAssistants();
          },
        ),
        Obx(
          () => widget.controller.isTeachingAssistantsOpen.value
              ? courseTeachingAssistantsFieldWidget(widget.controller)
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
