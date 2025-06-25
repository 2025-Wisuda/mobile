import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/course_wrapper_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/date_helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class FilterCourseBottomSheet extends StatelessWidget {
  final CourseWrapperController c;
  const FilterCourseBottomSheet({super.key, required this.c});

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
                      _DateItem(
                        label: startDate,
                        value: c.selectedStartDateFilter,
                        notSelected: notSelected,
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: c.selectedStartDateFilter.value ??
                                DateTime.now(),
                            firstDate: DateTime(2025),
                            lastDate: DateTime(2100),
                          );
                          if (picked != null) {
                            c.selectedStartDateFilter.value = picked;
                          }
                        },
                      ),
                      _DateItem(
                        label: endDate,
                        value: c.selectedEndDateFilter,
                        notSelected: notSelected,
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate:
                                c.selectedEndDateFilter.value ?? DateTime.now(),
                            firstDate: DateTime(2025),
                            lastDate: DateTime(2100),
                          );
                          if (picked != null) {
                            c.selectedEndDateFilter.value = picked;
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
                          Spacer(),
                          Obx(() {
                            final selected = c.selectedOrdering.value;
                            return Row(
                              children: [
                                _OrderingChip(
                                  label: newest,
                                  selected: selected == '-start_date',
                                  onTap: () =>
                                      c.selectedOrdering.value = '-start_date',
                                ),
                                const SizedBox(width: 8),
                                _OrderingChip(
                                  label: oldest,
                                  selected: selected == 'start_date',
                                  onTap: () =>
                                      c.selectedOrdering.value = 'start_date',
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(endDate, style: context.bodyMedium()),
                          Spacer(),
                          Obx(() {
                            final selected = c.selectedOrdering.value;
                            return Row(
                              spacing: 8,
                              children: [
                                _OrderingChip(
                                  label: newest,
                                  selected: selected == '-end_date',
                                  onTap: () =>
                                      c.selectedOrdering.value = '-end_date',
                                ),
                                _OrderingChip(
                                  label: oldest,
                                  selected: selected == 'end_date',
                                  onTap: () =>
                                      c.selectedOrdering.value = 'end_date',
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
                              c.clearFilters();
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
                              c.applyFilters(
                                startDate: c.selectedStartDateFilter.value,
                                endDate: c.selectedEndDateFilter.value,
                                ordering: c.selectedOrdering.value,
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

class _DateItem extends StatelessWidget {
  final String label;
  final Rx<DateTime?> value;
  final String notSelected;
  final VoidCallback onTap;

  const _DateItem({
    required this.label,
    required this.value,
    required this.notSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(label, style: context.bodyMedium()),
      trailing: Obx(() {
        return Text(
          value.value != null
              ? DateHelper.formatFullDate(date: value.value!)
              : notSelected,
          style: context.text.bodySmall?.copyWith(
            color: value.value != null
                ? context.onSurface
                : context.onSurface.withValues(alpha: 0.5),
          ),
        );
      }),
      onTap: onTap,
    );
  }
}

class _OrderingChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _OrderingChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = selected
        ? context.primaryContainer.withValues(alpha: 0.15)
        : context.surfaceBright;
    final borderColor =
        selected ? context.primary : context.outline.withValues(alpha: 0.5);
    final textColor = selected ? context.primary : context.onSurfaceVariant;

    return ChoiceChip(
      selected: selected,
      label: Text(label, style: context.bodySmall().copyWith(color: textColor)),
      selectedColor: bgColor,
      backgroundColor: context.surface,
      side: BorderSide(color: borderColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onSelected: (_) => onTap(),
    );
  }
}
