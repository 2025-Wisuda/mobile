import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabTimeSlotSelectionWidget extends StatelessWidget {
  final LabTimeSlotSelectionController c;
  final String feature;
  final String? title;
  final String? instructionMessage;
  final bool showSelectedRange;
  final int collapsedRows;
  final bool autoExpandCollapse;
  final Function(String)? onTimeSlotSelected;

  const LabTimeSlotSelectionWidget({
    super.key,
    required this.c,
    required this.feature,
    this.title,
    this.instructionMessage,
    this.showSelectedRange = true,
    this.collapsedRows = 3,
    this.autoExpandCollapse = true,
    this.onTimeSlotSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (c.shouldFetchAvailability()) {
        Future.microtask(() => c.fetchAvailability(c.selectedDate.value));
      }

      final state = c.labAvailabilityC.state;
      final availabilitySlots = c.labAvailabilityC.items;

      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: feature,
        customErrorMessage: c.labAvailabilityC.errorMessage,
        customIcon: state == FetchStateEnum.empty ? Icons.schedule : null,
        customSubtitle: state == FetchStateEnum.empty
            ? feature.message('tryDifferentDate')
            : null,
        onSuccess: () => _buildTimeSelectionContent(context, availabilitySlots),
      );
    });
  }

  Widget _buildTimeSelectionContent(BuildContext context, availabilitySlots) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        if (showSelectedRange)
          Obx(() {
            if (c.hasSelection) {
              return Row(
                children: [
                  Expanded(
                    child: CustomSelectedTimeRangeWidget(
                      startTime: c.selectedStartTime.value,
                      endTime: c.selectedEndTime.value,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () => c.reset(),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: context.errorContainer.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: context.error.withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.clear,
                              size: 16,
                              color: context.error,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'common'.message('reset'),
                              style: context.labelLargeW(500).copyWith(
                                    color: context.error,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Text(
                instructionMessage ?? 'common'.message('tapToSelectTimeSlots'),
                style: context.bodyMediumW(500).copyWith(
                      color: context.onSurface.withValues(alpha: 0.6),
                    ),
              );
            }
          }),
        Obx(() => CinemaTimeSlotWidget(
              timeSlots: c.generateTimeSlots(availabilitySlots),
              selectedStartTime: c.selectedStartTime.value,
              selectedEndTime: c.selectedEndTime.value,
              onTimeSlotTap: (time) {
                c.handleTimeSlotTap(time);
                onTimeSlotSelected?.call(time);
              },
              autoExpandCollapse: autoExpandCollapse,
              collapsedRows: collapsedRows,
            )),
      ],
    );
  }
}
