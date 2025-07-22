import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class FilterDutyAttendanceBottomSheetWidget extends StatefulWidget {
  final dynamic controller;
  final bool showAllFilters;

  const FilterDutyAttendanceBottomSheetWidget({
    super.key,
    required this.controller,
    this.showAllFilters = false,
  });

  @override
  State<FilterDutyAttendanceBottomSheetWidget> createState() =>
      _FilterDutyAttendanceBottomSheetWidgetState();
}

class _FilterDutyAttendanceBottomSheetWidgetState
    extends State<FilterDutyAttendanceBottomSheetWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final status = 'dutySchedule'.message('status');
    final date = 'dutySchedule'.message('date');
    final selectDate = 'dutySchedule'.message('selectDate');
    final apply = 'general'.message('apply');
    final reset = 'general'.message('reset');
    final notSelected = 'general'.message('notSelected');
    final all = 'general'.message('all');
    final present = 'dutySchedule'.message('present');
    final late = 'dutySchedule'.message('late');
    final notYetPresent = 'dutySchedule'.message('notYetPresent');
    final absent = 'dutySchedule'.message('absent');

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
            spacing: 12,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.outline.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
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
                              if (widget.showAllFilters)
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
                              FilterChip(
                                label: Text(notYetPresent),
                                selected:
                                    widget.controller.selectedStatus.value ==
                                        'Belum Hadir',
                                onSelected: (selected) {
                                  widget.controller.selectedStatus.value =
                                      selected ? 'Belum Hadir' : '';
                                },
                                selectedColor: context.primaryContainer,
                                checkmarkColor: context.onPrimaryContainer,
                                labelStyle: TextStyle(
                                  color:
                                      widget.controller.selectedStatus.value ==
                                              'Belum Hadir'
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
                            ],
                          )),
                      Text(date, style: context.bodyLargeW(500)),
                      CustomDateSelectionTileWidget(
                        label: selectDate,
                        value: widget.controller.selectedDate,
                        notSelectedText: notSelected,
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: widget.controller.selectedDate.value ??
                                DateTime.now(),
                            firstDate: DateTime(2025, 1, 1),
                            lastDate: DateTime.now(),
                          );
                          if (picked != null) {
                            widget.controller.selectedDate.value = picked;
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              widget.controller.selectedStatus.value = '';
                              widget.controller.selectedDate.value = null;
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
                              final status =
                                  widget.controller.selectedStatus.value;
                              final date = widget.controller.selectedDate.value;

                              if (widget.controller
                                  is MyAttendanceRecordsController) {
                                final controller = widget.controller
                                    as MyAttendanceRecordsController;
                                controller.setStatusFilter(status ?? '');
                                controller
                                    .setDateFilter(date ?? DateTime.now());
                              } else if (widget.controller
                                  is ListAttendanceRecordsController) {
                                final controller = widget.controller
                                    as ListAttendanceRecordsController;
                                controller.setStatusFilter(status ?? '');
                                controller
                                    .setDateFilter(date ?? DateTime.now());
                              }

                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.primary,
                              minimumSize: Size(120, 48),
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
