import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleFormWidget extends StatelessWidget {
  final LabScheduleWrapperController controller;
  const SearchLabScheduleFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final activeController = controller.isMySchedule.value
          ? Get.find<MyLabScheduleController>(tag: 'search')
          : Get.find<ListLabScheduleController>(tag: 'search');

      final key = '${activeController.baseStateKey}SearchController';

      return SizedBox(
        height: 44,
        child: CustomSearchFormWidget(
          autoFocus: true,
          controller: activeController.getController(key),
          focusNode: activeController.getFocusNode(key),
          hintText: 'labSchedule'.message('searchPlaceholder'),
          keyboardType: TextInputType.text,
          onChanged: (value) {
            activeController.setControllerValue(key, value);

            if (value.isEmpty) {
              controller.resetAll();
            } else {
              activeController.fetchList(filters: {'search': value});
            }
          },
          trailingIcon: [
            IconButton(
              onPressed: () {
                controller.resetAll();
              },
              icon: Icon(
                Icons.close,
                color: context.onSurface.withValues(alpha: 0.8),
              ),
            )
          ],
        ),
      );
    });
  }
}
