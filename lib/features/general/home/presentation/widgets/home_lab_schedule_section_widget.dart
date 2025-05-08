import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/shared/shared.dart';

class HomeLabScheduleSectionWidget extends StatelessWidget {
  const HomeLabScheduleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),

      decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.surface,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        border: Border.all(color: Theme.of(context).colorScheme.outline,
        width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labScheduleHeader(context),
          _labScheduleListItem(context: context),
        ],
      ),
    );
  }

  Widget _labScheduleHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        Text(
          'features.home.labSchedule.title'.tr(),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'features.home.labSchedule.more'.tr(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _labScheduleItem({
    required BuildContext context,
    required String startTime,
    required String activityType,
    required String activityDescription,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _timeIndicator(context: context, time: startTime),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activityType,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (activityDescription.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    activityDescription,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        customImageIconWidget(imagePath: IconConstant.chevronRightOutlineIcon),
      ],
    );
  }

  Widget _timeIndicator({required BuildContext context, required String time}) {
    return Container(
      width: 66,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
      ),
      child: Text(
        time,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _labScheduleListItem({required BuildContext context}) {
    return Column(
      children: [
        _labScheduleItem(
          context: context,
          startTime: '08:00',
          activityType: 'Praktikum Pemrograman Berbasis Web',
          activityDescription: 'Lab 1.1',
        ),
        Divider(height: 16),
        _labScheduleItem(
          context: context,
          startTime: '10:00',
          activityType: 'Praktikum Pemrograman Berbasis Web',
          activityDescription: 'Lab 1.2',
        ),
      ],
    );
  }
}
