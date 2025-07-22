import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';

void detailDutyAttendanceBottomSheetWidget(
  BuildContext context,
  DetailDutyAttendanceController controller,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: SingleChildScrollView(
              child: DetailDutyAttendanceWrapperWidget(
                controller: controller,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Get.back();
                controller.clearEntity();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    ),
  );
}
