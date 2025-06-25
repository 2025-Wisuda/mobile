import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleFormWidget extends StatelessWidget {
  const SearchLabScheduleFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final wrapperController =
        Get.find<LabScheduleWrapperController>(tag: 'search');
    return Obx(() {
      final isMySchedule = wrapperController.isMySchedule.value;
      final c = isMySchedule
          ? Get.find<MyLabScheduleController>(tag: 'search')
          : Get.find<ListLabScheduleController>(tag: 'search');

      final key = '${c.baseStateKey}SearchController';

      return SizedBox(
        height: 44,
        child: CustomSearchFormWidget(
          autoFocus: true,
          controller: c.getController(key),
          focusNode: c.getFocusNode(key),
          hintText: 'labSchedule'.message('searchPlaceholder'),
          keyboardType: TextInputType.text,
          onChanged: (value) {
            c.search(value);
          },
          trailingIcon: [
            IconButton(
              onPressed: () {
                c.cleanForm();
                c.resetState();
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
