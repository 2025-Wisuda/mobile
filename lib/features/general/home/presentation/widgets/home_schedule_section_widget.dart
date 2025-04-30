import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class HomeScheduleSectionWidget extends StatelessWidget {
  const HomeScheduleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [_scheduleHeader(context), _scheduleList(context)]);
  }

  Widget _scheduleList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        boxShadow: [BoxShadowConstant.kDefaultBoxShadowLight],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _schedule(context),
          Divider(height: 10),
          _schedule(context),
          Divider(height: 10),
          _schedule(context),
        ],
      ),
    );
  }

  Widget _schedule(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 8,
      children: [
        _iconSchedule(context),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('10.00 WIB', style: Theme.of(context).textTheme.bodyMedium),
            Text(
              'Seminar Kerja Praktik',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.scrim,
              ),
            ),
          ],
        ),
        const Spacer(),
        customImageIconWidget(imagePath: IconConstant.chevronRightOutlineIcon),
      ],
    );
  }

  Widget _iconSchedule(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadiusConstant.kDefaultBorderRadiusCircle,
        ),
        child: Icon(Icons.alarm, size: 24),
      ),
    );
  }

  Widget _scheduleHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'features.home.schedule.title'.tr(),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'features.home.schedule.more'.tr(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
