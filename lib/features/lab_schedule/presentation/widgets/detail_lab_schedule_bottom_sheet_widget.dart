import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';

void detailLabScheduleBottomSheetWidget(
  BuildContext context,
  String labScheduleId,
) {
  final c = Get.find<DetailLabScheduleController>();

  c.clearEntity();

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
              child: DetailLabScheduleWrapperWidget(
                labScheduleId: labScheduleId,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Get.back();
                c.clearEntity();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    ),
  );
}
