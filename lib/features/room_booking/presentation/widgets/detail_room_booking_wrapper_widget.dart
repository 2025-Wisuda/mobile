import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/room_booking_helpers.dart';
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

    return _buildContent(context, detailController);
  }

  Widget _buildContent(
      BuildContext context, DetailRoomBookingController controller) {
    return Obx(() {
      final booking = controller.entity.value;
      final state = controller.state;
      final errorMessage = controller.stateDescription;

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
          return _buildDetailRoomBookingWidget(
              context, booking ?? RoomBookingEntity(), controller);
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Widget _buildDetailRoomBookingWidget(BuildContext context,
      RoomBookingEntity booking, DetailRoomBookingController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailRoomBookingBasicInfoSection(booking: booking),
          const SizedBox(height: 8),
          DetailRoomBookingScheduleSection(booking: booking),
          if (_isBookingTypeSeminar(booking)) ...[
            const SizedBox(height: 8),
            DetailRoomBookingSeminarSection(booking: booking),
          ],
          const SizedBox(height: 8),
          DetailRoomBookingApprovalSection(booking: booking),
          RoomBookingHelpers.buildApprovalStateHandler(
            context,
            controller: Get.find<ApproveRoomBookingController>(),
          ),
        ],
      ),
    );
  }

  bool _isBookingTypeSeminar(RoomBookingEntity booking) {
    final bookingType = RoomBookingTypeEnum.fromValue(booking.bookingType);
    return bookingType == RoomBookingTypeEnum.seminar;
  }
}
