import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/base/course_wrapper_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class FilterCourseBottomSheet extends StatelessWidget {
  final CourseWrapperController controller;
  const FilterCourseBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final startDate = 'course'.label('startDate');
    final endDate = 'course'.label('endDate');
    final apply = 'general'.label('apply');
    final reset = 'general'.label('reset');
    final notSelected = 'general'.message('notSelected');
    final ordering = 'course'.message('ordering');
    final newest = 'course'.message('newest');
    final oldest = 'course'.message('oldest');

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: context.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.outline.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(filter, style: context.bodyMediumW(500)),
                      CustomDateSelectionTileWidget(
                        label: startDate,
                        value: controller.selectedStartDateFilter,
                        notSelectedText: notSelected,
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate:
                                controller.selectedStartDateFilter.value ??
                                    DateTime.now(),
                            firstDate: DateTime(2025),
                            lastDate: DateTime(2100),
                          );
                          if (picked != null) {
                            controller.selectedStartDateFilter.value = picked;
                          }
                        },
                      ),
                      CustomDateSelectionTileWidget(
                        label: endDate,
                        value: controller.selectedEndDateFilter,
                        notSelectedText: notSelected,
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate:
                                controller.selectedEndDateFilter.value ??
                                    DateTime.now(),
                            firstDate: DateTime(2025),
                            lastDate: DateTime(2100),
                          );
                          if (picked != null) {
                            controller.selectedEndDateFilter.value = picked;
                          }
                        },
                      ),
                      CustomDashedLineWidget(color: context.outline),
                      const SizedBox(height: 12),
                      Text(ordering, style: context.bodyMediumW(500)),
                      Row(
                        spacing: 8,
                        children: [
                          Text(startDate, style: context.bodyMedium()),
                          const Spacer(),
                          Obx(() {
                            final selected = controller.selectedOrdering.value;
                            return Row(
                              children: [
                                CustomChoiceChipWidget(
                                  label: newest,
                                  selected: selected == '-start_date',
                                  onSelected: () => controller
                                      .selectedOrdering.value = '-start_date',
                                ),
                                const SizedBox(width: 8),
                                CustomChoiceChipWidget(
                                  label: oldest,
                                  selected: selected == 'start_date',
                                  onSelected: () => controller
                                      .selectedOrdering.value = 'start_date',
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(endDate, style: context.bodyMedium()),
                          const Spacer(),
                          Obx(() {
                            final selected = controller.selectedOrdering.value;
                            return Row(
                              spacing: 8,
                              children: [
                                CustomChoiceChipWidget(
                                  label: newest,
                                  selected: selected == '-end_date',
                                  onSelected: () => controller
                                      .selectedOrdering.value = '-end_date',
                                ),
                                CustomChoiceChipWidget(
                                  label: oldest,
                                  selected: selected == 'end_date',
                                  onSelected: () => controller
                                      .selectedOrdering.value = 'end_date',
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              controller.clearFilters();
                              Get.back();
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: context.primary,
                              side: BorderSide(color: context.outline),
                            ),
                            child: Text(reset, style: context.bodyMediumW(500)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.applyFilters(
                                startDate:
                                    controller.selectedStartDateFilter.value,
                                endDate: controller.selectedEndDateFilter.value,
                                ordering: controller.selectedOrdering.value,
                              );
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.primary,
                            ),
                            child: Text(
                              apply,
                              style: context
                                  .bodyMediumW(500)
                                  .copyWith(color: context.onPrimary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
