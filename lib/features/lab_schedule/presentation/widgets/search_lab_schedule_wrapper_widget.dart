import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleWrapperWidget extends StatelessWidget {
  final LabScheduleWrapperController controller;
  const SearchLabScheduleWrapperWidget({
    super.key,
    required this.controller,
  });

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
                child: Obx(() {
                  final isMySchedule = controller.isMySchedule.value;
                  return CustomTertiaryToggleWidget(
                    firstOption: 'common'.message('me'),
                    secondOption: 'common'.message('all'),
                    isFirstSelected: isMySchedule,
                    onToggle: () {
                      controller.resetAll();
                      controller.switchToMySchedule();
                      controller.isMySchedule.value = !isMySchedule;
                    },
                  );
                }),
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
              final isLoadingMore = controller.isLoadingMore.value;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: customFetchStateHandler(
                  context: context,
                  state: controller.state,
                  feature: 'labSchedule',
                  customErrorMessage: controller.stateDescription,
                  customTitle: 'labSchedule'.message('noScheduleFound'),
                  customSubtitle:
                      'labSchedule'.message('searchTryDifferentKeywords'),
                  customLoadingTitle: controller.isMySchedule.value
                      ? 'labSchedule'.message('loadingMySchedule')
                      : 'labSchedule'.message('loadingAllSchedule'),
                  onSuccess: () => Column(
                    children: [
                      LabScheduleListItemWidget(
                        schedules: controller.items.cast(),
                        isShowDate: true,
                        isShowDuration: true,
                      ),
                      if (isLoadingMore)
                        const Center(
                          child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: CustomPrimaryLoadingWidget()),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
