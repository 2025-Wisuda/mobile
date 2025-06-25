import 'package:flutter/material.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListRoomBookingAppBarWidget extends StatelessWidget {
  const ListRoomBookingAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      toolbarHeight: 52,
      title: 'bookingHistory'.menu(),
    );
  }
}
