import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/room_booking_wrapper_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class FilterRoomBookingBottomSheet extends StatelessWidget {
  final RoomBookingWrapperController c;
  const FilterRoomBookingBottomSheet({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final apply = 'general'.label('apply');
    final reset = 'general'.label('reset');
    final notSelected = 'general'.message('notSelected');

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.3,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: context.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: context.onSurface.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(filter, style: context.bodyMediumW(500)),
                const SizedBox(height: 16),
                _DateItem(
                  label: 'roomBooking'.label('date'),
                  value: c.selectedDate,
                  notSelected: notSelected,
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: c.selectedDate.value ?? DateTime.now(),
                      firstDate: DateTime(2025),
                      lastDate: DateTime(2100),
                    );
                    if (picked != null) {
                      c.selectedDate.value = picked;
                    }
                  },
                ),
                _DropdownItem(
                  label: 'roomBooking'.label('bookingType'),
                  value: c.selectedBookingType,
                  notSelected: notSelected,
                  items: RoomBookingTypeEnum.values
                      .map((e) => {
                            'value': e.value,
                            'label': e.getLabel(),
                          })
                      .toList(),
                  onChanged: (value) => c.selectedBookingType.value = value,
                ),
                _DropdownItem(
                  label: 'roomBooking'.label('approvalStatus'),
                  value: c.selectedApprovalStatus,
                  notSelected: notSelected,
                  items: ApprovalStatusEnum.values
                      .map((e) => {
                            'value': e.value,
                            'label': e.getLabel(),
                          })
                      .toList(),
                  onChanged: (value) => c.selectedApprovalStatus.value = value,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          c.clearFilters();
                          Get.back();
                        },
                        child: Text(reset),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          c.fetchWithFilters();
                          Get.back();
                        },
                        child: Text(apply),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.bodyMediumW(400)),
          const SizedBox(height: 8),
          Obx(() => InkWell(
                onTap: onTap,
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.outline),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        value.value != null
                            ? DateHelper.formatDayMonthYear(date: value.value!)
                            : notSelected,
                        style: context.bodyMediumW(400).copyWith(
                              color: value.value != null
                                  ? context.onSurface
                                  : context.onSurface.withValues(alpha: 0.6),
                            ),
                      ),
                      Icon(Icons.calendar_today_outlined,
                          color: context.onSurface.withValues(alpha: 0.6)),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class _DropdownItem extends StatelessWidget {
  final String label;
  final RxnString value;
  final String notSelected;
  final List<Map<String, String>> items;
  final Function(String?) onChanged;

  const _DropdownItem({
    required this.label,
    required this.value,
    required this.notSelected,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.bodyMediumW(400)),
          const SizedBox(height: 8),
          Obx(() => DropdownButtonFormField<String>(
                value: value.value?.isEmpty == true ? null : value.value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
                hint: Text(notSelected),
                items: [
                  DropdownMenuItem<String>(
                    value: null,
                    child: Text(notSelected),
                  ),
                  ...items.map((item) => DropdownMenuItem<String>(
                        value: item['value'],
                        child: Text(item['label']!),
                      )),
                ],
                onChanged: onChanged,
              )),
        ],
      ),
    );
  }
}
