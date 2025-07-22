import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingScreen extends StatelessWidget {
  const RoomBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: RoomBookingWrapperWidget(),
    );
  }

  Widget _buildAppBar(BuildContext context) {
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
