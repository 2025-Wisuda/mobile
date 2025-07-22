import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/extensions/extension.dart';

class FilterCourseSessionAttendanceBottomSheetWidget extends StatefulWidget {
  final ListCourseSessionAttendanceController controller;
  final VoidCallback? onApplyFilter;
  final VoidCallback? onClearFilter;

  const FilterCourseSessionAttendanceBottomSheetWidget({
    super.key,
    required this.controller,
    this.onApplyFilter,
    this.onClearFilter,
  });

  @override
  State<FilterCourseSessionAttendanceBottomSheetWidget> createState() =>
      _FilterCourseSessionAttendanceBottomSheetWidgetState();
}

class _FilterCourseSessionAttendanceBottomSheetWidgetState
    extends State<FilterCourseSessionAttendanceBottomSheetWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final status = 'course'.message('status');
    final manualOverride = 'course'.message('manualOverride');
    final apply = 'general'.message('apply');
    final reset = 'general'.message('reset');
    final all = 'general'.message('all');
    final present = 'course'.message('present');
    final absent = 'course'.message('absent');
    final late = 'course'.message('late');

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
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
                    spacing: 12,
                    children: [
                      Text(filter, style: context.titleLargeW(600)),
                      Text(status, style: context.bodyLargeW(500)),
                      Obx(() => Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              FilterChip(
                                label: Text(all),
                                selected:
                                    widget.controller.selectedStatus.value ==
                                        '',
                                onSelected: (selected) {
                                  widget.controller.selectedStatus.value =
                                      selected ? '' : '';
                                },
                                selectedColor: context.primaryContainer,
                                checkmarkColor: context.onPrimaryContainer,
                                labelStyle: TextStyle(
                                  color:
                                      widget.controller.selectedStatus.value ==
                                              ''
                                          ? context.onPrimaryContainer
                                          : context.onSurface,
                                ),
                              ),
                              FilterChip(
                                label: Text(present),
                                selected:
                                    widget.controller.selectedStatus.value ==
                                        'Hadir',
                                onSelected: (selected) {
                                  widget.controller.selectedStatus.value =
                                      selected ? 'Hadir' : '';
                                },
                                selectedColor: context.primaryContainer,
                                checkmarkColor: context.onPrimaryContainer,
                                labelStyle: TextStyle(
                                  color:
                                      widget.controller.selectedStatus.value ==
                                              'Hadir'
                                          ? context.onPrimaryContainer
                                          : context.onSurface,
                                ),
                              ),
                              FilterChip(
                                label: Text(absent),
                                selected:
                                    widget.controller.selectedStatus.value ==
                                        'Tidak Hadir',
                                onSelected: (selected) {
                                  widget.controller.selectedStatus.value =
                                      selected ? 'Tidak Hadir' : '';
                                },
                                selectedColor: context.primaryContainer,
                                checkmarkColor: context.onPrimaryContainer,
                                labelStyle: TextStyle(
                                  color:
                                      widget.controller.selectedStatus.value ==
                                              'Tidak Hadir'
                                          ? context.onPrimaryContainer
                                          : context.onSurface,
                                ),
                              ),
                              FilterChip(
                                label: Text(late),
                                selected:
                                    widget.controller.selectedStatus.value ==
                                        'Terlambat',
                                onSelected: (selected) {
                                  widget.controller.selectedStatus.value =
                                      selected ? 'Terlambat' : '';
                                },
                                selectedColor: context.primaryContainer,
                                checkmarkColor: context.onPrimaryContainer,
                                labelStyle: TextStyle(
                                  color:
                                      widget.controller.selectedStatus.value ==
                                              'Terlambat'
                                          ? context.onPrimaryContainer
                                          : context.onSurface,
                                ),
                              ),
                            ],
                          )),
                      Text(manualOverride, style: context.bodyLargeW(500)),
                      Obx(() => SwitchListTile(
                            title: Text(
                              'course'.message('showOnlyManuallyOverridden'),
                              style: context.bodyMedium(),
                            ),
                            subtitle: Text(
                              'course'.message(
                                  'showOnlyManuallyOverriddenDescription'),
                              style: context.bodySmall().copyWith(
                                    color: context.onSurfaceVariant,
                                  ),
                            ),
                            value:
                                widget.controller.selectedManualOverride.value,
                            onChanged: (value) {
                              widget.controller.selectedManualOverride.value =
                                  value;
                            },
                            activeColor: context.primary,
                            contentPadding: EdgeInsets.zero,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              widget.controller.selectedStatus.value = '';
                              widget.controller.selectedManualOverride.value =
                                  false;
                              widget.controller.clearFilters();
                              widget.onClearFilter?.call();
                            },
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(120, 48),
                              foregroundColor: context.primary,
                              side: BorderSide(color: context.outline),
                            ),
                            child: Text(reset, style: context.bodyMediumW(500)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              widget.controller.setStatusFilter(
                                  widget.controller.selectedStatus.value);
                              widget.controller.setManualOverrideFilter(widget
                                  .controller.selectedManualOverride.value);
                              widget.onApplyFilter?.call();
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.primary,
                              minimumSize: Size(120, 48),
                            ),
                            child: Text(apply,
                                style: context
                                    .bodyMediumW(500)
                                    .copyWith(color: context.onPrimary)),
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
