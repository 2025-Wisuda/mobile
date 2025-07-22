import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateRoomBookingScreen extends GetView<RoomBookingFormController> {
  const CreateRoomBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: CreateRoomBookingWrapperWidget(
        controller: controller,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'createBooking'.menu(),
      onBackPressed: () {
        if (!Get.isRegistered<LabAvailabilityController>(
            tag: 'room_booking_availability')) {
          Get.lazyPut<LabAvailabilityController>(
            () => LabAvailabilityController(
                Get.find<FetchLabAvailabilityUsecase>()),
            tag: 'room_booking_availability',
          );
        }
        final availabilityController = Get.find<LabAvailabilityController>(
            tag: 'room_booking_availability');
        availabilityController.resetTimeSelection();

        Get.back();
        Future.microtask(() {
          controller.clearForm();
          controller.resetState();
        });
      },
    );
  }
}
