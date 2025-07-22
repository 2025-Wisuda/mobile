import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingSearchFormWidget extends StatelessWidget {
  final String? currentStatusFilter;
  final ListRoomBookingController controller;

  const RoomBookingSearchFormWidget({
    super.key,
    this.currentStatusFilter,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final key = '${controller.baseStateKey}SearchController';

    return SizedBox(
      height: 44,
      child: CustomSearchFormWidget(
        autoFocus: false,
        controller: controller.getController(key),
        focusNode: controller.getFocusNode(key),
        hintText: 'roomBooking'.message('searchPlaceholder'),
        keyboardType: TextInputType.text,
        borderRadius: 24,
        leadingIcon: Icon(
          Icons.search,
          color: context.onSurface.withValues(alpha: 0.8),
        ),
        onChanged: (value) {
          final filters = <String, dynamic>{};
          if (currentStatusFilter != null && currentStatusFilter!.isNotEmpty) {
            filters['approvalStatus'] = currentStatusFilter;
          }

          controller.setControllerValue(key, value);
          controller.fetchList(filters: filters.isNotEmpty ? filters : null);
        },
        trailingIcon: [
          IconButton(
            onPressed: () {
              final filters = <String, dynamic>{};
              if (currentStatusFilter != null &&
                  currentStatusFilter!.isNotEmpty) {
                filters['approvalStatus'] = currentStatusFilter;
              }

              controller.setControllerValue(key, '');
              controller.fetchList(
                  filters: filters.isNotEmpty ? filters : null);
            },
            icon: Icon(
              Icons.close,
              color: context.onSurface.withValues(alpha: 0.8),
            ),
          )
        ],
      ),
    );
  }
}
