import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateRoomBookingAppBarWidget extends StatelessWidget {
  final RoomBookingFormController c;
  const CreateRoomBookingAppBarWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'createBooking'.menu(),
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          c.clearForm();
          c.resetState();
        });
      },
    );
  }
}
