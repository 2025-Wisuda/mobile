import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/helpers/time_slot_helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabScheduleTimeRangeWidget extends StatefulWidget {
  final String selectedDate;
  final String? selectedStartTime;
  final String? selectedEndTime;
  final Function(String, String) onTimeRangeSelected;
  final String? controllerKey;
  final String? label;
  final bool isRequired;
  final bool isOptional;

  const LabScheduleTimeRangeWidget({
    super.key,
    required this.selectedDate,
    this.selectedStartTime,
    this.selectedEndTime,
    required this.onTimeRangeSelected,
    this.controllerKey,
    this.label,
    this.isRequired = true,
    this.isOptional = false,
  });

  @override
  State<LabScheduleTimeRangeWidget> createState() =>
      _LabScheduleTimeRangeWidgetState();
}

class _LabScheduleTimeRangeWidgetState
    extends State<LabScheduleTimeRangeWidget> {
  final selectedTimes = <String>[].obs;
  String? _lastFetchedDate;

  LabAvailabilityController get controller =>
      Get.find<LabAvailabilityController>(
        tag: widget.controllerKey ?? 'default',
      );

  @override
  void initState() {
    super.initState();
    if (widget.selectedStartTime?.isNotEmpty == true &&
        widget.selectedEndTime?.isNotEmpty == true) {
      selectedTimes
          .addAll([widget.selectedStartTime!, widget.selectedEndTime!]);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selectedDate.isNotEmpty) {
      final formattedDate = DateHelper.formatIsoDate(
        date: DateTime.parse(widget.selectedDate),
      );

      if (_lastFetchedDate != formattedDate) {
        _lastFetchedDate = formattedDate;
        selectedTimes.clear();
        Future.microtask(() => controller.setFilters({'date': formattedDate}));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        CustomFormLabelWidget(
          label: widget.label ?? 'labSchedule'.label('timeRange'),
          requiredField: widget.isRequired,
          optional: widget.isOptional,
        ),
        Obx(() {
          final state = controller.state;
          final availabilitySlots = controller.items;

          return _buildTimeRangeContent(
            context: context,
            state: state,
            availabilitySlots: availabilitySlots,
          );
        }),
      ],
    );
  }

  Widget _buildTimeRangeContent({
    required BuildContext context,
    required FetchStateEnum state,
    required List<LabAvailabilityEntity> availabilitySlots,
  }) {
    switch (state) {
      case FetchStateEnum.loading:
        return _buildLoadingWidget(context);
      case FetchStateEnum.failure:
        return _buildErrorWidget(
            context, 'labSchedule'.message('failedToLoadAvailableTimeRanges'));
      case FetchStateEnum.empty:
        return _buildEmptyWidget(context,
            'labSchedule'.message('noAvailableTimeRangesForSelectedDate'));
      case FetchStateEnum.success:
        final timeSlots = TimeSlotHelper.generateTimeSlots(availabilitySlots);
        return _buildTimeChipsGrid(timeSlots);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildTimeChipsGrid(List<String> timeSlots) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.start,
        children: timeSlots.map((time) {
          return Obx(() {
            final isSelected = selectedTimes.contains(time);
            return _buildTimeChip(
              time: time,
              isSelected: isSelected,
              onTap: () => _onTimeChipTap(time),
            );
          });
        }).toList(),
      ),
    );
  }

  void _onTimeChipTap(String time) {
    if (selectedTimes.contains(time)) {
      selectedTimes.remove(time);
    } else {
      if (selectedTimes.length >= 2) {
        selectedTimes.clear();
      }
      selectedTimes.add(time);
    }

    if (selectedTimes.length == 2) {
      final times = selectedTimes.toList();
      times.sort((a, b) {
        final aTime = TimeHelper.parseTimeString(a);
        final bTime = TimeHelper.parseTimeString(b);
        if (aTime != null && bTime != null) {
          final aMinutes = aTime.hour * 60 + aTime.minute;
          final bMinutes = bTime.hour * 60 + bTime.minute;
          return aMinutes.compareTo(bMinutes);
        }
        return 0;
      });

      widget.onTimeRangeSelected(times[0], times[1]);
    } else if (selectedTimes.isEmpty) {
      widget.onTimeRangeSelected('', '');
    }
  }

  Widget _buildTimeChip({
    required String time,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? Get.theme.colorScheme.primary.withValues(alpha: 0.1)
              : Get.theme.colorScheme.surface,
          border: Border.all(
            color: isSelected
                ? Get.theme.colorScheme.primary
                : Get.theme.colorScheme.outline.withValues(alpha: 0.5),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          time,
          style: Get.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: isSelected
                ? Get.theme.colorScheme.primary
                : Get.theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: 8),
          Text(
            'labSchedule'.message('loadingAvailableTimeSlots'),
            style: context.bodyMediumW(400),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context, String message) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(Icons.error_outline, size: 16, color: context.error),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: context.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyWidget(BuildContext context, String message) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(Icons.info_outline,
              size: 16, color: context.onSurface.withValues(alpha: 0.6)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: context.onSurface.withValues(alpha: 0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
