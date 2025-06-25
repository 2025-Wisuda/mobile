import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateRoomBookingAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const UpdateRoomBookingAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWidget(
      title: 'roomBooking'.message('updateBooking'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
