import 'package:flutter/material.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DateRangeFilterSection extends StatefulWidget {
  final DutyAttendanceStatisticsController controller;

  const DateRangeFilterSection({
    super.key,
    required this.controller,
  });

  @override
  State<DateRangeFilterSection> createState() => _DateRangeFilterSectionState();
}

class _DateRangeFilterSectionState extends State<DateRangeFilterSection> {
  bool _isFilterExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.primary.withValues(alpha: 0.1),
            context.primary.withValues(alpha: 0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _isFilterExpanded = !_isFilterExpanded;
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: context.primary,
                      size: 24,
                    ),
                    Expanded(
                      child: Text(
                        _isFilterExpanded
                            ? 'dutySchedule'.message('filterByDateRange')
                            : _getDateRangeText(),
                        style: context.bodyLargeW(500).copyWith(
                              color: context.primary,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      _isFilterExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: context.primary,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState: _isFilterExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _buildDateField(
                            context: context,
                            controller: widget.controller.startDateController,
                            labelText: 'dutySchedule'.label('startDate'),
                            onTap: () =>
                                widget.controller.selectStartDate(context),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildDateField(
                            context: context,
                            controller: widget.controller.endDateController,
                            labelText: 'dutySchedule'.label('endDate'),
                            onTap: () =>
                                widget.controller.selectEndDate(context),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () =>
                                widget.controller.resetDateFilter(),
                            icon: Icon(
                              Icons.refresh_rounded,
                            ),
                            label: Text(
                              'general'.message('reset'),
                              style: context.labelLargeW(500).copyWith(
                                    color: context.primary,
                                  ),
                            ),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton.icon(
                            onPressed: () =>
                                widget.controller.applyDateFilter(),
                            icon: const Icon(Icons.search_rounded),
                            label: Text(
                              'dutySchedule'.message('applyFilter'),
                              style: context.labelLargeW(500).copyWith(
                                    color: context.onPrimary,
                                  ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 2,
                            ),
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
      ),
    );
  }

  String _getDateRangeText() {
    final startDate = widget.controller.startDateController.text;
    final endDate = widget.controller.endDateController.text;

    if (startDate.isEmpty && endDate.isEmpty) {
      return 'dutySchedule'.message('last30DaysDefault');
    } else if (startDate.isNotEmpty && endDate.isNotEmpty) {
      return '$startDate to $endDate';
    } else if (startDate.isNotEmpty) {
      return 'dutySchedule'.message('fromDate', args: {'date': startDate});
    } else {
      return 'dutySchedule'.message('untilDate', args: {'date': endDate});
    }
  }

  Widget _buildDateField({
    required BuildContext context,
    required TextEditingController controller,
    required String labelText,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.outline.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today_rounded,
              color: context.primary,
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelText,
                    style: context.labelSmall().copyWith(
                          color: context.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    controller.text.isEmpty
                        ? 'dutySchedule'.hint('selectDate')
                        : controller.text,
                    style: context.bodyMedium().copyWith(
                          color: controller.text.isEmpty
                              ? context.onSurfaceVariant
                              : context.onSurface,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
