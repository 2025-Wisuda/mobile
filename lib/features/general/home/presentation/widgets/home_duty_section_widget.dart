import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';

class HomeDutySectionWidget extends StatelessWidget {
  const HomeDutySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _dutyHeader(context),
        const SizedBox(height: 8),
        _dutyList(context),
      ],
    );
  }

  Widget _dutyHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'features.home.duty.title'.tr(),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          'features.home.duty.time'.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.scrim,
          ),
        ),
      ],
    );
  }

  Widget _dutyList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        boxShadow: [BoxShadowConstant.kDefaultBoxShadowLight],
      ),
      child: Column(
        children: [
          _dutyItem(context, 'Andi Saputra', 'https://i.pravatar.cc/150?img=3'),
          const Divider(height: 10),
          _dutyItem(context, 'Budi Wijaya', 'https://i.pravatar.cc/150?img=4'),
        ],
      ),
    );
  }

  Widget _dutyItem(BuildContext context, String name, String avatarUrl) {
    return Row(
      children: [
        CircleAvatar(radius: 22, backgroundImage: NetworkImage(avatarUrl)),
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
}
