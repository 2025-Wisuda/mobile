import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_form_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateRoomBookingWrapperWidget extends StatelessWidget {
  final RoomBookingEntity booking;

  const UpdateRoomBookingWrapperWidget({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final c = Get.find<RoomBookingFormController>();
    c.loadRoomBookingForUpdate(booking);

    return Column(
      children: [
        _buildSelectedSchedule(context, c),
        const SizedBox(height: 16),
        Expanded(child: _buildFormSection(context, c)),
        _buildSubmitSection(context, c),
      ],
    );
  }

  Widget _buildSelectedSchedule(
      BuildContext context, RoomBookingFormController c) {
    return CustomCardItemWidget(
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'roomBooking'.message('selectedSchedule'),
            style: context.titleSmallW(600),
          ),
          const SizedBox(height: 12),
          _buildScheduleRow(
            context,
            'roomBooking'.label('date'),
            c.selectedDate.value?.toString().split(' ')[0] ??
                'roomBooking'.message('notSelected'),
          ),
          const SizedBox(height: 8),
          _buildScheduleRow(
            context,
            'roomBooking'.label('startTime'),
            c.selectedStartTime.value ?? '',
          ),
          const SizedBox(height: 8),
          _buildScheduleRow(
            context,
            'roomBooking'.label('endTime'),
            c.selectedEndTime.value ?? '',
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleRow(BuildContext context, String label, String value) {
    final textStyle = context.bodyMediumW(400);
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(label, style: textStyle),
        ),
        Text(' : ', style: textStyle),
        Expanded(
          child: Text(
            value.isEmpty ? 'roomBooking'.message('notSelected') : value,
            style: textStyle.copyWith(
              color: value.isEmpty
                  ? context.onSurface.withValues(alpha: 0.6)
                  : context.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFormSection(BuildContext context, RoomBookingFormController c) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'roomBooking'.message('bookingForm'),
            style: context.titleSmallW(600),
          ),
          const SizedBox(height: 16),
          roomBookingPurposeFieldWidget(c),
          if (c.selectedBookingType.value == 'Seminar') ...[
            const SizedBox(height: 16),
            roomBookingResearchTitleFieldWidget(c),
            const SizedBox(height: 16),
            roomBookingSeminarTypeFieldWidget(c),
            const SizedBox(height: 16),
            roomBookingMainSupervisorFieldWidget(c),
            const SizedBox(height: 16),
            roomBookingSecondarySupervisorFieldWidget(c),
            const SizedBox(height: 16),
            roomBookingExaminerFieldWidget(c),
            const SizedBox(height: 16),
            roomBookingDocumentUploadFieldWidget(c, context),
          ],
        ],
      ),
    );
  }

  Widget _buildSubmitSection(
      BuildContext context, RoomBookingFormController c) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => c.updateRoomBooking(),
              child: Text('roomBooking'.message('updateBooking')),
            ),
          ),
          _buildStateHandler(context, c),
        ],
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context, RoomBookingFormController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage;

      switch (state) {
        case SubmitStateEnum.loading:
          return const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Center(child: CircularProgressIndicator()),
          );
        case SubmitStateEnum.success:
          _handleSuccessState(context, c);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage ?? '', c);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context, RoomBookingFormController c) {
    Future.microtask(() {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'roomBooking'.success('updateRoomBooking'),
          type: SnackbarType.success,
        );
      }
      Get.back();
      c.resetState();
    });
  }

  void _handleFailureState(
      BuildContext context, String errorMessage, RoomBookingFormController c) {
    Future.microtask(() {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: errorMessage,
          type: SnackbarType.error,
        );
      }
      c.resetState();
    });
  }
}
