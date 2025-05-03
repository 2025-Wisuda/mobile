import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' show Icons, InkWell, Theme;
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/features/auth/presentation/controllers/auth_controller.dart';

Widget buttonLogout(BuildContext context) {
  final authController = Get.find<AuthController>();

  return InkWell(
    onTap: () async {
      await authController.logout();
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadiusConstant.kDefaultBorderRadiusCircle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Icon(
            Icons.logout,
            size: 24,
            color: Theme.of(context).colorScheme.error,
          ),
          Text(
            'features.menu.logout'.tr(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
