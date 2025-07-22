import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_delete_room_booking_helper.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_room_booking_navigation_helper.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class BookingConfirmationCountdownScreen extends StatefulWidget {
  const BookingConfirmationCountdownScreen({super.key});

  @override
  State<BookingConfirmationCountdownScreen> createState() =>
      _BookingConfirmationCountdownScreenState();
}

class _BookingConfirmationCountdownScreenState
    extends State<BookingConfirmationCountdownScreen> {
  Timer? _timer;
  Duration _remainingTime = const Duration(minutes: 5);
  late final RoomBookingEntity _booking;
  bool _isTimeUp = false;

  @override
  void initState() {
    super.initState();
    _booking = Get.arguments as RoomBookingEntity;
    _startTimer();
  }

  void _startTimer() {
    final createdAt = _booking.createdAt;
    if (createdAt == null) {
      _isTimeUp = true;
      return;
    }

    final endTime = createdAt.add(const Duration(minutes: 5));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      if (now.isAfter(endTime)) {
        setState(() {
          _remainingTime = Duration.zero;
          _isTimeUp = true;
          _timer?.cancel();
        });
      } else {
        setState(() {
          _remainingTime = endTime.difference(now);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () =>
                    RoomBookingNavigationHelper.handleSuccessNavigation(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildIcon(),
              const SizedBox(height: 24),
              _buildTitle(),
              const SizedBox(height: 12),
              _buildSubtitle(),
              const SizedBox(height: 48),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        _isTimeUp ? Icons.check_circle_outline : Icons.timer_outlined,
        color: Theme.of(context).colorScheme.primary,
        size: 64,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _isTimeUp
          ? 'roomBooking'.message('bookingConfirmed')
          : 'roomBooking'.message('bookingSuccessful'),
      style: context.headlineMediumW(700),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSubtitle() {
    final countdownText = _formatDuration(_remainingTime);
    return Text(
      _isTimeUp
          ? 'roomBooking'.message('countdownTimeUp')
          : 'roomBooking'
              .message('countdownSubtitle', args: {'time': countdownText}),
      style: context.bodyLarge(),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildActionButtons() {
    if (_isTimeUp) {
      return CustomSubmitButtonWidget(
        onPressed: () => RoomBookingNavigationHelper.handleSuccessNavigation(),
        textButton: 'roomBooking'.message('backToHistory'),
        isFormValid: true,
      );
    }

    return Column(
      children: [
        CustomSubmitButtonWidget(
          buttonType: CustomButtonType.outlined,
          onPressed: () {
            if (!Get.isRegistered<DeleteRoomBookingUsecase>()) {
              Get.lazyPut<DeleteRoomBookingUsecase>(
                () => DeleteRoomBookingUsecase(
                  Get.find<RoomBookingRepository>(),
                ),
              );
            }
            if (!Get.isRegistered<DeleteRoomBookingController>()) {
              Get.lazyPut<DeleteRoomBookingController>(
                () => DeleteRoomBookingController(
                  Get.find<DeleteRoomBookingUsecase>(),
                ),
              );
            }
            DeleteRoomBookingHelper.showDeleteConfirmation(context, _booking,
                onSuccess: () {
              RoomBookingNavigationHelper.handleSuccessNavigation();
            });
          },
          textButton: 'roomBooking'.message('cancelBooking'),
          isFormValid: true,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomSubmitButtonWidget(
          onPressed: () => Get.offNamed(AppRoute.updateRoomBooking,
              arguments: {'booking': _booking}),
          textButton: 'roomBooking'.message('updateBooking'),
          isFormValid: true,
        ),
      ],
    );
  }
}
