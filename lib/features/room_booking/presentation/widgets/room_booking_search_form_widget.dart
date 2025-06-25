import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingSearchFormWidget extends StatelessWidget {
  final String? currentStatusFilter;

  const RoomBookingSearchFormWidget({
    super.key,
    this.currentStatusFilter,
  });

  @override
  Widget build(BuildContext context) {
    final c = Get.find<ListRoomBookingController>();
    final key = '${c.baseStateKey}SearchController';

    return SizedBox(
      height: 44,
      child: CustomSearchFormWidget(
        autoFocus: false,
        controller: c.getController(key),
        focusNode: c.getFocusNode(key),
        hintText: 'roomBooking'.message('searchPlaceholder'),
        keyboardType: TextInputType.text,
        borderRadius: 24,
        leadingIcon: Icon(
          Icons.search,
          color: context.onSurface.withValues(alpha: 0.8),
        ),
        onChanged: (value) {
          // Include current status filter when searching
          final filters = <String, dynamic>{};
          if (currentStatusFilter != null && currentStatusFilter!.isNotEmpty) {
            filters['approvalStatus'] = currentStatusFilter;
          }

          c.setControllerValue(key, value);
          c.fetchList(filters: filters.isNotEmpty ? filters : null);
        },
        trailingIcon: [
          IconButton(
            onPressed: () {
              // Include current status filter when clearing search
              final filters = <String, dynamic>{};
              if (currentStatusFilter != null &&
                  currentStatusFilter!.isNotEmpty) {
                filters['approvalStatus'] = currentStatusFilter;
              }

              c.setControllerValue(key, '');
              c.fetchList(filters: filters.isNotEmpty ? filters : null);
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
