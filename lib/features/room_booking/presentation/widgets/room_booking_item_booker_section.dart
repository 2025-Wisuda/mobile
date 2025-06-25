import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class RoomBookingItemBookerSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const RoomBookingItemBookerSection({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    if (!_shouldShowBookerInfo()) {
      return const SizedBox.shrink();
    }

    return _buildBookerCard(context);
  }

  bool _shouldShowBookerInfo() {
    final userController = Get.find<UserProfileController>();
    final currentUser = userController.userProfile;

    final isOwnBooking =
        booking.bookerIdentifier == currentUser?.studentNumber ||
            booking.bookerIdentifier == currentUser?.employeeNumber;

    return booking.bookerName?.isNotEmpty == true && !isOwnBooking;
  }

  Widget _buildBookerCard(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person_outline,
          size: 16,
          color: context.onSurfaceVariant,
        ),
        const SizedBox(width: 8),
        Text(
          'roomBooking'.message('booker'),
          style: context.labelMediumW(500).copyWith(
                color: context.onSurfaceVariant,
              ),
        ),
        const SizedBox(width: 4),
        Text(
          ': ${booking.bookerName}',
          style: context.labelMediumW(500).copyWith(
                color: context.onSurface,
              ),
        ),
      ],
    );
  }
}
