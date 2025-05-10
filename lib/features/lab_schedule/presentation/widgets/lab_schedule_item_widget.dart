import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class LabScheduleItemWidget extends StatelessWidget {
  final LabScheduleEntity schedule;

  const LabScheduleItemWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          AppRoute.detailLabSchedule,
          parameters: {'id': schedule.id ?? '0'},
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _timeIndicator(context, time: schedule.startTimeWibStr),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  schedule.activityTypeDisplayStr,
                  style: context.text.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (schedule.activityDescription?.isNotEmpty == true)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      schedule.activityDescription!,
                      style: context.text.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          customImageIconWidget(
            imagePath: IconConstant.chevronRightOutlineIcon,
          ),
        ],
      ),
    );
  }

  Widget _timeIndicator(BuildContext context, {required String time}) {
    return Container(
      width: 66,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: context.color.primaryContainer,
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
      ),
      child: Text(
        time,
        style: context.text.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
