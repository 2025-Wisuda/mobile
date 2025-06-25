import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailRoomBookingWrapperWidget extends StatelessWidget {
  final String roomBookingId;

  const DetailRoomBookingWrapperWidget({
    super.key,
    required this.roomBookingId,
  });

  @override
  Widget build(BuildContext context) {
    final detailController = Get.find<DetailRoomBookingController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailController.fetchDetail(roomBookingId);
    });

    return _buildContent(context, detailController);
  }

  Widget _buildContent(BuildContext context, DetailRoomBookingController c) {
    return Obx(() {
      final booking = c.entity.value;
      final state = c.state;
      final errorMessage = c.errorMessage;

      switch (state) {
        case FetchStateEnum.loading:
          return const Center(child: CustomPrimaryLoadingWidget());
        case FetchStateEnum.failure:
          return customErrorEmptyTextWidget(
            context,
            message: errorMessage,
          );
        case FetchStateEnum.empty:
          return customErrorEmptyTextWidget(
            context,
            message: 'roomBooking'.message('noDetailFound'),
          );
        case FetchStateEnum.success:
          return DetailRoomBookingWidget(
            booking: booking ?? RoomBookingEntity(),
            roomBookingId: roomBookingId,
          );
        default:
          return const SizedBox.shrink();
      }
    });
  }
}
