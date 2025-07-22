import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

Widget buildPersonalInfoSection(BuildContext context,
    UserProfileFormController controller, GroupEnum? userGroup) {
  return Obx(() => CustomPrimaryExpandableSectionWidget(
        isExpanded: controller.isPersonalInfoExpanded.value,
        onToggle: () => controller.isPersonalInfoExpanded.toggle(),
        icon: Icons.person_outline,
        iconColor: context.primary,
        backgroundColor: context.primary.withValues(alpha: 0.15),
        borderColor: context.primary.withValues(alpha: 0.3),
        title: 'user'.message('personalInformation'),
        content: Column(
          spacing: 8,
          children: [
            const SizedBox(height: 12),
            ...personalInfoSection(controller, userGroup ?? GroupEnum.student),
          ],
        ),
      ));
}

Widget buildAccountInfoSection(
    BuildContext context, UserProfileFormController controller) {
  return Obx(() => CustomPrimaryExpandableSectionWidget(
        isExpanded: controller.isAccountInfoExpanded.value,
        onToggle: () => controller.isAccountInfoExpanded.toggle(),
        icon: Icons.admin_panel_settings_outlined,
        iconColor: context.onSurface,
        backgroundColor: context.onSurface.withValues(alpha: 0.15),
        borderColor: context.onSurface.withValues(alpha: 0.5),
        title: 'user'.message('accountInformation'),
        content: Form(
          key: controller.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            spacing: 8,
            children: [
              const SizedBox(height: 12),
              ...accountInfoSection(controller),
            ],
          ),
        ),
      ));
}

Widget buildStatusSection(
    BuildContext context, UserProfileController controller) {
  return Obx(() {
    if (controller.userProfile == null) return const SizedBox();

    return CustomPrimaryExpandableSectionWidget(
      isExpanded: true,
      onToggle: () {},
      icon: Icons.verified_user_outlined,
      iconColor: context.tertiary,
      backgroundColor: context.tertiary.withValues(alpha: 0.1),
      borderColor: context.tertiary.withValues(alpha: 0.2),
      title: 'user'.message('accountStatus'),
      showExpandIcon: false,
      content: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.surfaceContainerLow.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: context.onSurfaceVariant,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text(
              'user'.label('dateJoined'),
              style: context.bodySmallW(500).copyWith(
                    color: context.onSurfaceVariant,
                  ),
            ),
            const Spacer(),
            Text(
              controller.userProfile!.formattedDateJoined,
              style: context.bodySmallW(600).copyWith(
                    color: context.onSurface,
                  ),
            ),
          ],
        ),
      ),
    );
  });
}
