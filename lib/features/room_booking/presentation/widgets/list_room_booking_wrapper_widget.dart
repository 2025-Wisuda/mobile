import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_empty_state_helper.dart';
import 'package:mobile/features/room_booking/room_booking.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListRoomBookingWrapperWidget extends StatelessWidget {
  final ListRoomBookingController controller;
  const ListRoomBookingWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: _buildBookingList(context),
    );
  }

  Widget _buildBookingList(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final bookings = controller.items;
      switch (state) {
        case FetchStateEnum.loading:
          return const Center(child: CustomPrimaryLoadingWidget());
        case FetchStateEnum.failure:
          return _buildErrorWidget(
              context, controller.errorMessages[controller.baseStateKey] ?? '');
        case FetchStateEnum.empty:
          return _buildEmptyWidget(context);
        case FetchStateEnum.success:
          return _buildSuccessWidget(context, bookings);
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Widget _buildErrorWidget(BuildContext context, String message) {
    return customHandlingStateWidget(
      context,
      item: Icon(Icons.error_outline, size: 48, color: context.error),
      title: 'roomBooking'.message('errorTitle'),
      subtitle: message,
    );
  }

  Widget _buildEmptyWidget(BuildContext context) {
    final currentStatus = controller.selectedStatus.value;
    return InternalEmptyStateHelper.buildEmptyStateWidget(
        context, currentStatus);
  }

  Widget _buildSuccessWidget(BuildContext context, List bookings) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.refresh();
      },
      child: RoomBookingListItemWidget(
        bookings: bookings.cast<RoomBookingEntity>(),
      ),
    );
  }
}
