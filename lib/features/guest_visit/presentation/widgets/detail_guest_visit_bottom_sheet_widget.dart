import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';

Future<dynamic> detailGuestVisitBottomSheetWidget(
  BuildContext context,
  DetailGuestVisitController controller,
) {
  return showModalBottomSheet(
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
              child: DetailGuestVisitWrapperWidget(
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
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    ),
  );
}
