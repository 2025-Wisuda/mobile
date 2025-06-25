import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleWrapperWidget extends StatelessWidget {
  final LabScheduleWrapperController c;
  const SearchLabScheduleWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed(
        [
          Row(
            children: [
              Expanded(
                child: CustomDashedLineWidget(
                  color: context.onSurface.withValues(alpha: 0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Obx(
                  () => CustomTertiaryToggleWidget(
                    firstOption: 'common'.message('me'),
                    secondOption: 'common'.message('all'),
                    isFirstSelected: c.isMySchedule.value,
                    onToggle: () => c.isMySchedule.value
                        ? c.switchToAllSchedule()
                        : c.switchToMySchedule(),
                  ),
                ),
              ),
              Expanded(
                child: CustomDashedLineWidget(
                  color: context.onSurface.withValues(alpha: 0.2),
                ),
              ),
            ],
          ),
          Obx(
            () {
              final isMySchedule = c.isMySchedule.value;
              final controller = isMySchedule
                  ? Get.find<MyLabScheduleController>(tag: 'search')
                  : Get.find<ListLabScheduleController>(tag: 'search');

              final searchKey = '${controller.baseStateKey}SearchController';
              final searchQuery = controller.getControllerValue(searchKey);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: LabSchedulePaginatedListWidget(
                  key: c.paginationKey.value,
                  isMySchedule: c.isMySchedule.value,
                  searchQuery: searchQuery,
                  isShowDate: true,
                  isShowDuration: true,
                  tag: 'search',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
