import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/theme_color_extension.dart';

class CreateRoomBookingScreen extends StatelessWidget {
  const CreateRoomBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final roomBookingFormController = Get.find<RoomBookingFormController>();

    return Scaffold(
      backgroundColor: context.surfaceDim,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: CreateRoomBookingAppBarWidget(c: roomBookingFormController),
      ),
      body: CreateRoomBookingWrapperWidget(
        c: roomBookingFormController,
      ),
    );
  }
}
