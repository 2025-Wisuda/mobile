import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';

class HomeDutyScheduleSectionWidget extends StatelessWidget {
  const HomeDutyScheduleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _dutyScheduleList(context);
  }

  Widget _dutyScheduleList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _dutyScheduleHeader(context),
        const SizedBox(height: 12),
        _dutyScheduleItem(
          context,
          'Andi Saputra',
          'https://i.pravatar.cc/150?img=3',
        ),
        Divider(height: 20, color: Theme.of(context).colorScheme.shadow),
        _dutyScheduleItem(
          context,
          'Budi Wijaya',
          'https://i.pravatar.cc/150?img=4',
        ),
        Divider(height: 20, color: Theme.of(context).colorScheme.shadow),
        _dutyScheduleItem(
          context,
          'Budi Wijaya',
          'https://i.pravatar.cc/150?img=4',
        ),
        Divider(height: 20, color: Theme.of(context).colorScheme.shadow),
        _dutyScheduleItem(
          context,
          'Budi Wijaya',
          'https://i.pravatar.cc/150?img=4',
        ),
        Divider(height: 20, color: Theme.of(context).colorScheme.shadow),
        _dutyScheduleItem(
          context,
          'Budi Wijaya',
          'https://i.pravatar.cc/150?img=4',
        ),
        Divider(height: 20, color: Theme.of(context).colorScheme.shadow),
        _dutyScheduleItem(
          context,
          'Budi Wijaya',
          'https://i.pravatar.cc/150?img=4',
        ),
      ],
    );
  }

  Widget _dutyScheduleItem(
    BuildContext context,
    String name,
    String avatarUrl,
  ) {
    return Row(
      children: [
        CircleAvatar(radius: 16, backgroundImage: NetworkImage(avatarUrl)),
        const SizedBox(width: 12),
        Expanded(
          child: Text(name, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          child: Text(
            'Sedang Piket',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _dutyScheduleHeader(BuildContext context) {
    return Text(
      'features.home.dutySchedule.title'.tr(),
      style: Theme.of(
        context,
      ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
