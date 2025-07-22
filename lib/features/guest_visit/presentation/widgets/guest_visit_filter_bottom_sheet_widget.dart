import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/list_guest_visit_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class GuestVisitFilterBottomSheetWidget extends StatefulWidget {
  final ListGuestVisitController controller;
  const GuestVisitFilterBottomSheetWidget(
      {super.key, required this.controller});

  @override
  State<GuestVisitFilterBottomSheetWidget> createState() =>
      _GuestVisitFilterBottomSheetWidgetState();
}

class _GuestVisitFilterBottomSheetWidgetState
    extends State<GuestVisitFilterBottomSheetWidget> {
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final date = 'general'.message('date');
    final apply = 'general'.message('apply');
    final reset = 'general'.message('reset');

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.7,
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
                      Text(filter, style: context.titleLargeW(600)),
                      const SizedBox(height: 16),
                      Text(date, style: context.bodyLargeW(500)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'Pilih tanggal',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                        onTap: () async {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                          );
                          if (picked != null) {
                            final formatted =
                                '${picked.year.toString().padLeft(4, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
                            setState(() {
                              _dateController.text = formatted;
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _dateController.clear();
                              });
                              widget.controller.clearFilters();
                              Get.back();
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
                              widget.controller
                                  .setDateFilter(_dateController.text);
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
