// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class EditCourseWrapperWidget extends StatelessWidget {
  final String courseId;
  const EditCourseWrapperWidget({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    Future.microtask(() {
      courseController.executeFillFormForUpdate();
    });

    final courseInfo = i18n.tr(
      'features.course.createCourse.section.courseInfo',
    );
    final courseInfoDescription = i18n.tr(
      'features.course.createCourse.section.required',
    );
    final courseAdditionalInfo = i18n.tr(
      'features.course.createCourse.section.courseAdditionalInfo',
    );
    final courseAdditionalInfoDescription = i18n.tr(
      'features.course.createCourse.section.optional',
    );
    final courseParticipantsInfo = i18n.tr(
      'features.course.createCourse.section.courseParticipantsInfo',
    );
    final courseParticipantsInfoDescription = i18n.tr(
      'features.course.createCourse.section.additional',
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          child: Obx(
            () => Stepper(
              type: StepperType.vertical,
              currentStep: courseController.currentStep.value,
              onStepContinue: courseController.nextStep,
              onStepCancel: courseController.previousStep,
              steps: [
                Step(
                  title: _widgetTitle(context, title: courseInfo),
                  subtitle: _widgetDescription(
                    context,
                    description: courseInfoDescription,
                  ),
                  content: SingleChildScrollView(
                    child: _widgetStepCourseInfo(context),
                  ),
                  isActive: courseController.currentStep.value >= 0,
                ),
                Step(
                  title: _widgetTitle(context, title: courseAdditionalInfo),
                  subtitle: _widgetDescription(
                    context,
                    description: courseAdditionalInfoDescription,
                  ),
                  content: SingleChildScrollView(
                    child: _widgetStepCourseAdditionalInfo(
                      courseController: courseController,
                    ),
                  ),
                  isActive: courseController.currentStep.value >= 1,
                ),
                Step(
                  title: _widgetTitle(context, title: courseParticipantsInfo),
                  subtitle: _widgetDescription(
                    context,
                    description: courseParticipantsInfoDescription,
                  ),
                  content: SingleChildScrollView(
                    child: _widgetStepCourseParticipantsInfo(
                      context,
                      courseController: courseController,
                    ),
                  ),
                  isActive: courseController.currentStep.value >= 2,
                ),
              ],
              controlsBuilder: (context, details) {
                return Obx(() {
                  return _widgetControl(
                    context,
                    courseController: courseController,
                    cancelCallback: details.onStepCancel,
                    continueCallback: details.onStepContinue,
                  );
                });
              },
            ),
          ),
        );
      },
    );
  }

  _widgetStepCourseInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        CourseFormTitleWidget(),
        CourseFormStartDateWidget(),
        CourseFormEndDateWidget(isEnabled: true),
        CourseFormEnrollWidget(fillColor: context.shadow),
      ],
    );
  }

  _widgetStepCourseAdditionalInfo({
    required CourseController courseController,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        CourseFormImageWidget(imageNetwork: true),
        CourseFormDescriptionWidget(),
      ],
    );
  }

  Widget _widgetStepCourseParticipantsInfo(
    BuildContext context, {
    required CourseController courseController,
  }) {
    final selectStudents = i18n.tr(
      'features.course.createCourse.section.selectStudents',
    );
    final selectTeachingAssistants = i18n.tr(
      'features.course.createCourse.section.selectTeachingAssistants',
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => GestureDetector(
            onTap: () => courseController.toggleStudents(),

            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _widgetTitle(context, title: selectStudents, fontWeight: 500),
                  Icon(
                    courseController.isStudentsOpen.value
                        ? Icons.expand_less
                        : Icons.expand_more,
                  ),
                ],
              ),
            ),
          ),
        ),
        Obx(
          () =>
              courseController.isStudentsOpen.value
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      const CourseFormStudentsWidget(),
                      Divider(color: context.outline),
                    ],
                  )
                  : Divider(),
        ),
        Obx(
          () => GestureDetector(
            onTap: () => courseController.toggleTeachingAssistants(),

            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _widgetTitle(
                    context,
                    title: selectTeachingAssistants,
                    fontWeight: 500,
                  ),
                  Icon(
                    courseController.isTeachingAssistantsOpen.value
                        ? Icons.expand_less
                        : Icons.expand_more,
                  ),
                ],
              ),
            ),
          ),
        ),
        Obx(
          () =>
              courseController.isTeachingAssistantsOpen.value
                  ? const CourseFormTeachingAssistantsWidget()
                  : const SizedBox.shrink(),
        ),
      ],
    );
  }

  _widgetControl(
    BuildContext context, {
    required CourseController courseController,
    VoidCallback? cancelCallback,
    VoidCallback? continueCallback,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment:
            courseController.currentStep.value == 0
                ? MainAxisAlignment.end
                : MainAxisAlignment.spaceBetween,
        children: [
          if (courseController.currentStep.value > 0)
            SizedBox(
              width: 136,
              child: _widgetBackButton(context, onPressed: cancelCallback),
            ),
          SizedBox(
            width: 130,
            child: CourseEditButtonWidget(continueCallback: continueCallback),
          ),
        ],
      ),
    );
  }

  _widgetBackButton(BuildContext context, {VoidCallback? onPressed}) {
    final previous = i18n.tr('general.button.previous');
    return CustomButtonWidget(
      onPressed: onPressed,
      backgroundColor: WidgetStateProperty.all<Color>(context.surface),
      child: Text(
        previous,
        style: context.bodyMediumW(600).copyWith(color: context.primary),
      ),
    );
  }

  _widgetTitle(BuildContext context, {required String title, int? fontWeight}) {
    return Text(
      title,
      style: context.bodyMediumW(fontWeight ?? 600),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  _widgetDescription(BuildContext context, {required String description}) {
    return Text(
      description,
      style: context.bodySmallW(400),
      maxLines: 3,
      overflow: TextOverflow.visible,
    );
  }
}
