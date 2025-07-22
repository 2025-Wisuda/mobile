import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateRoomBookingScreen extends StatefulWidget {
  const UpdateRoomBookingScreen({super.key});

  @override
  State<UpdateRoomBookingScreen> createState() =>
      _UpdateRoomBookingScreenState();
}

class _UpdateRoomBookingScreenState extends State<UpdateRoomBookingScreen> {
  late RoomBookingFormController controller;
  late RoomBookingEntity booking;

  @override
  void initState() {
    super.initState();
    controller = Get.find<RoomBookingFormController>();

    final arguments = Get.arguments as Map<String, dynamic>?;
    booking =
        arguments?['booking'] as RoomBookingEntity? ?? RoomBookingEntity();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.loadRoomBookingForUpdate(booking);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surfaceDim,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: UpdateRoomBookingWrapperWidget(
        booking: booking,
        controller: controller,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'roomBooking'.message('updateBooking'),
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          controller.clearForm();
          controller.resetState();
        });
      },
    );
  }
}
