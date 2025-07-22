import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateRoomBookingPrefilledSection extends StatelessWidget {
  final RoomBookingFormController controller;
  const CreateRoomBookingPrefilledSection(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      mainContent: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Obx(() => Column(children: [
                  _buildInfoRow(
                      context,
                      'roomBooking'.label('date'),
                      controller.selectedDate.value != null
                          ? DateHelper.formatFullDate(
                              date: controller.selectedDate.value!)
                          : ''),
                  _buildInfoRow(context, 'roomBooking'.label('startTime'),
                      controller.selectedStartTime.value ?? ''),
                  _buildInfoRow(context, 'roomBooking'.label('endTime'),
                      controller.selectedEndTime.value ?? ''),
                ])),
          ]),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    final textStyle = context.bodyMediumW(500);
    return Row(children: [
      SizedBox(
          width: 100,
          child:
              Text(label, style: textStyle.copyWith(color: context.onSurface))),
      Text(' : ', style: textStyle),
      Expanded(child: Text(value, style: textStyle)),
    ]);
  }
}
