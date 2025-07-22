import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ValidateOtpScreen extends StatelessWidget {
  const ValidateOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ValidateOtpController>();

    final arguments = Get.arguments as Map<String, dynamic>?;
    final attendanceId = arguments?['attendanceId'] as String?;
    final actionType = arguments?['actionType'] as String?;
    final nextRoute = arguments?['nextRoute'] as String?;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: _buildAppBar(context),
        ),
        body: ValidateOtpWrapperWidget(
          controller: controller,
          attendanceId: attendanceId,
          actionType: actionType,
          nextRoute: nextRoute,
        ));
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'validateOtp'.menu(),
      onBackPressed: () {
        Get.offAllNamed(AppRoute.myAttendanceRecords);
      },
    );
  }
}
