import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/attendance/manual_override_attendance_wrapper_widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ManualCourseSessionAttendanceScreen
    extends GetView<ManualOverrideCourseSessionAttendanceController> {
  const ManualCourseSessionAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: CustomAppBarWithBorder(
          title: 'manualOverride'.menu(),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.close),
          ),
        ),
      ),
      body: ManualOverrideAttendanceWrapperWidget(controller: controller),
    );
  }
}
