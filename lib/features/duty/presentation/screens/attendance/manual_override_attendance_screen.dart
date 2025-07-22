import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ManualOverrideAttendanceScreen
    extends GetView<ManualOverrideAttendanceController> {
  const ManualOverrideAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: CustomAppBarWithBorder(
          title: 'manualOverride'.menu(),
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.myAttendanceRecords);
            },
            icon: const Icon(Icons.close),
          ),
        ),
      ),
      body: ManualOverrideWrapperWidget(controller: controller),
    );
  }
}
