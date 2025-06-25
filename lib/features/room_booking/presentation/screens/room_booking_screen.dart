import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';

class RoomBookingScreen extends StatelessWidget {
  const RoomBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: context.surfaceDim,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: RoomBookingAppBarWidget(),
      ),
      body: RoomBookingWrapperWidget(),
    );
  }
}
