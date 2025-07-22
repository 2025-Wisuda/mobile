import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class FilterNotificationBottomSheetWidget extends StatefulWidget {
  final NotificationListController controller;
  const FilterNotificationBottomSheetWidget({
    super.key,
    required this.controller,
  });

  @override
  State<FilterNotificationBottomSheetWidget> createState() =>
      _FilterNotificationBottomSheetWidgetState();
}

class _FilterNotificationBottomSheetWidgetState
    extends State<FilterNotificationBottomSheetWidget> {
  late TextEditingController _searchController;
  String? _selectedType;
  String? _selectedReadStatus;
  String? _selectedOrdering;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _selectedType = widget.controller.selectedType.value.isNotEmpty
        ? widget.controller.selectedType.value
        : null;
    _selectedReadStatus = widget.controller.selectedReadStatus.value.isNotEmpty
        ? widget.controller.selectedReadStatus.value
        : null;
    _selectedOrdering = widget.controller.selectedOrdering.value;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filter = 'general'.message('filter');
    final search = 'general'.message('search');
    final type = 'notification'.message('type');
    final status = 'notification'.message('status');
    final ordering = 'notification'.message('ordering');
    final apply = 'general'.message('apply');
    final reset = 'general'.message('reset');

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      minChildSize: 0.3,
      maxChildSize: 0.8,
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
                      const SizedBox(height: 24),

                      // Search
                      Text(search, style: context.bodyLargeW(500)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'notification'.message('search'),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Type Filter
                      Text(type, style: context.bodyLargeW(500)),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: _selectedType,
                        decoration: InputDecoration(
                          hintText: 'notification'.message('selectType'),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: '',
                            child: Text('notification'.message('all')),
                          ),
                          DropdownMenuItem(
                            value: 'room_booking',
                            child: Text('notification'.message('roomBooking')),
                          ),
                          DropdownMenuItem(
                            value: 'course_session',
                            child:
                                Text('notification'.message('courseSession')),
                          ),
                          DropdownMenuItem(
                            value: 'lab_allocation',
                            child:
                                Text('notification'.message('labAllocation')),
                          ),
                          DropdownMenuItem(
                            value: 'duty_schedule',
                            child: Text('notification'.message('dutySchedule')),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedType = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Read Status Filter
                      Text(status, style: context.bodyLargeW(500)),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: _selectedReadStatus,
                        decoration: InputDecoration(
                          hintText: 'notification'.message('selectStatus'),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: '',
                            child: Text('notification'.message('all')),
                          ),
                          DropdownMenuItem(
                            value: 'false',
                            child: Text('notification'.message('unread')),
                          ),
                          DropdownMenuItem(
                            value: 'true',
                            child: Text('notification'.message('read')),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedReadStatus = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Ordering Filter
                      Text(ordering, style: context.bodyLargeW(500)),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: _selectedOrdering,
                        decoration: InputDecoration(
                          hintText: 'notification'.message('selectOrdering'),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: '-sent_at',
                            child: Text('notification'.message('newestFirst')),
                          ),
                          DropdownMenuItem(
                            value: 'sent_at',
                            child: Text('notification'.message('oldestFirst')),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedOrdering = value;
                          });
                        },
                      ),
                      const SizedBox(height: 24),

                      // Action Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _searchController.clear();
                                _selectedType = null;
                                _selectedReadStatus = null;
                                _selectedOrdering = '-sent_at';
                              });
                              widget.controller.clearFilters();
                              Get.back();
                            },
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(120, 48),
                              foregroundColor: context.primary,
                              side: BorderSide(color: context.outline),
                            ),
                            child: Text(reset, style: context.bodyMediumW(500)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_searchController.text.isNotEmpty) {
                                widget.controller
                                    .setSearchFilter(_searchController.text);
                              }
                              if (_selectedType != null &&
                                  _selectedType!.isNotEmpty) {
                                widget.controller.setTypeFilter(_selectedType!);
                              }
                              if (_selectedReadStatus != null &&
                                  _selectedReadStatus!.isNotEmpty) {
                                widget.controller
                                    .setReadStatusFilter(_selectedReadStatus!);
                              }
                              if (_selectedOrdering != null) {
                                widget.controller
                                    .setOrderingFilter(_selectedOrdering!);
                              }
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.primary,
                              minimumSize: const Size(120, 48),
                            ),
                            child: Text(
                              apply,
                              style: context.bodyMediumW(500).copyWith(
                                    color: context.onPrimary,
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
        );
      },
    );
  }
}
