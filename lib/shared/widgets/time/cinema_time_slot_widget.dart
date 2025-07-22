import 'package:flutter/material.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/time_slot_helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class TimeSlotData {
  final String time;
  final TimeSlotStatus status;
  final String? tooltip;

  const TimeSlotData({
    required this.time,
    required this.status,
    this.tooltip,
  });
}

class CinemaTimeSlotWidget extends StatefulWidget {
  final List<TimeSlotData> timeSlots;
  final String? selectedStartTime;
  final String? selectedEndTime;
  final Function(String) onTimeSlotTap;
  final bool autoExpandCollapse;
  final int collapsedRows;
  final bool showLegend;

  const CinemaTimeSlotWidget({
    super.key,
    required this.timeSlots,
    this.selectedStartTime,
    this.selectedEndTime,
    required this.onTimeSlotTap,
    this.autoExpandCollapse = true,
    this.collapsedRows = 3,
    this.showLegend = true,
  });

  @override
  State<CinemaTimeSlotWidget> createState() => _CinemaTimeSlotWidgetState();
}

class _CinemaTimeSlotWidgetState extends State<CinemaTimeSlotWidget> {
  bool isExpanded = false;
  final int slotsPerRow = 4;

  @override
  void initState() {
    super.initState();
    _setInitialExpansion();
  }

  void _setInitialExpansion() {
    if (!widget.autoExpandCollapse) {
      isExpanded = true;
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;

      if (screenHeight > screenWidth && screenHeight < 512) {
        setState(() => isExpanded = false);
      } else {
        setState(() => isExpanded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildTimeSlotGrid(context),
        if (widget.showLegend) _buildLegend(context),
        if (widget.autoExpandCollapse &&
            _shouldShowExpandButton &&
            MediaQuery.of(context).size.height < 512)
          CustomExpandCollapseButtonWidget(
            isExpanded: isExpanded,
            onTap: () => setState(() => isExpanded = !isExpanded),
          ),
      ],
    );
  }

  Widget _buildTimeSlotGrid(BuildContext context) {
    final displaySlots = _getDisplaySlots();
    final totalRows = (displaySlots.length / slotsPerRow).ceil();

    return Column(
      children: List.generate(totalRows, (rowIndex) {
        final startIndex = rowIndex * slotsPerRow;
        final endIndex =
            (startIndex + slotsPerRow).clamp(0, displaySlots.length);
        final rowSlots = displaySlots.sublist(startIndex, endIndex);

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              ...rowSlots.map((slot) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: _buildTimeSlot(context, slot),
                    ),
                  )),
              ...List.generate(
                slotsPerRow - rowSlots.length,
                (index) => const Expanded(child: SizedBox()),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildTimeSlot(BuildContext context, TimeSlotData slot) {
    final isSelected = TimeSlotHelper.isTimeSelected(
        slot.time, widget.selectedStartTime, widget.selectedEndTime);
    final isInRange = TimeSlotHelper.isTimeInRange(
        slot.time, widget.selectedStartTime, widget.selectedEndTime);

    return GestureDetector(
      onTap: slot.status.isSelectable
          ? () => widget.onTimeSlotTap(slot.time)
          : null,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: slot.status.getSlotColor(context, isSelected, isInRange),
          border: Border.all(
            color:
                slot.status.getSlotBorderColor(context, isSelected, isInRange),
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            slot.time,
            style: context.labelMediumW(400).copyWith(
                  color: slot.status
                      .getSlotTextColor(context, isSelected, isInRange),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildLegend(BuildContext context) {
    final actionableStatuses = [
      TimeSlotStatus.available,
      TimeSlotStatus.selected,
      TimeSlotStatus.disabled,
    ];

    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 8,
      runSpacing: 4,
      children: actionableStatuses
          .map((status) => IntrinsicWidth(
                child: customLegendWidget(
                  context,
                  label: status.legendLabel,
                  color: status.getLegendColor(context),
                ),
              ))
          .toList(),
    );
  }

  List<TimeSlotData> _getDisplaySlots() {
    if (!widget.autoExpandCollapse || isExpanded) {
      return widget.timeSlots;
    }

    final maxSlots = widget.collapsedRows * slotsPerRow;
    return widget.timeSlots.take(maxSlots).toList();
  }

  bool get _shouldShowExpandButton {
    return widget.timeSlots.length > (widget.collapsedRows * slotsPerRow);
  }
}
