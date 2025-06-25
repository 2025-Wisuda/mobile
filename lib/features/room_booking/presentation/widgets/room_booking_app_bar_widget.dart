import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingAppBarWidget extends StatelessWidget {
  const RoomBookingAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      toolbarHeight: 76,
      showBackButton: false,
      title: 'roomBooking'.menu(),
      actions: [
        IconButton(
          onPressed: () => Get.toNamed(AppRoute.historyRoomBooking),
          icon: Icon(
            Icons.history,
            size: 28,
            color: context.primary,
          ),
          tooltip: 'bookingHistory'.menu(),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
