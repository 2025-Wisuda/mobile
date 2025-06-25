import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class FilterGuestVisitBottomSheet extends StatelessWidget {
  final ListGuestVisitController c;
  const FilterGuestVisitBottomSheet({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _buildHandle(context),
        const SizedBox(height: 16),
        _buildHeader(context),
        const SizedBox(height: 16),
        _buildFilterOptions(context),
        const SizedBox(height: 16),
        _buildActionButtons(context),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ]),
    );
  }

  Widget _buildHandle(BuildContext context) {
    return Container(
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: context.onSurface.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(children: [
      Icon(Icons.filter_alt, color: context.primary, size: 24),
      const SizedBox(width: 12),
      Text('Filter Guest Visits', style: context.headlineSmallW(600)),
    ]);
  }

  Widget _buildFilterOptions(BuildContext context) {
    return Column(children: [
      CustomDropdownFieldWidget<String>(
        labelText: 'Date Range',
        hintText: 'Select date range',
        value: 'All',
        items: [
          DropdownMenuItem(value: 'All', child: Text('All')),
          DropdownMenuItem(value: 'Today', child: Text('Today')),
          DropdownMenuItem(value: 'This Week', child: Text('This Week')),
          DropdownMenuItem(value: 'This Month', child: Text('This Month')),
        ],
        onChanged: (value) {},
      ),
      const SizedBox(height: 16),
      CustomDropdownFieldWidget<String>(
        labelText: 'Status',
        hintText: 'Select status',
        value: 'All',
        items: [
          DropdownMenuItem(value: 'All', child: Text('All')),
          DropdownMenuItem(value: 'Active', child: Text('Active')),
          DropdownMenuItem(value: 'Completed', child: Text('Completed')),
        ],
        onChanged: (value) {},
      ),
    ]);
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(children: [
      Expanded(
        child: OutlinedButton(
          onPressed: () => Get.back(),
          style: OutlinedButton.styleFrom(
            foregroundColor: context.onSurface,
            side: BorderSide(color: context.outline),
          ),
          child: Text('Cancel'),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            c.refresh();
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: context.primary,
            foregroundColor: context.onPrimary,
          ),
          child: Text('Apply'),
        ),
      ),
    ]);
  }
}
