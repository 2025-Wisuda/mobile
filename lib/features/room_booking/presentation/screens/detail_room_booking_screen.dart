import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailRoomBookingScreen extends StatelessWidget {
  final String bookingId;

  const DetailRoomBookingScreen({
    super.key,
    required this.bookingId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surfaceDim,
      appBar: CustomAppBarWidget(
        title: 'roomBooking'.message('detailTitle'),
        showBackButton: true,
      ),
      body: DetailRoomBookingWrapperWidget(
        roomBookingId: bookingId,
      ),
    );
  }
}
