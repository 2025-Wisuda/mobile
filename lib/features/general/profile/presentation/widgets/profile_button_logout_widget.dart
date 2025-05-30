// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/instance_manager.dart';

// Project imports:
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/auth/presentation/controllers/auth_controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

Widget buttonLogout(BuildContext context) {
  final authController = Get.find<AuthController>();

  return SizedBox(
    width: double.infinity,
    child: OutlinedButton.icon(
      onPressed: () async {
        await authController.logout();
      },
      icon: Icon(Icons.logout, size: 24, color: context.error),
      label: Text(
        i18n.tr('features.menu.logout'),
        style: context.bodyMediumW(600).copyWith(color: context.error),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        side: BorderSide(color: context.outline),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadiusCircle,
        ),
        backgroundColor: context.surface,
      ),
    ),
  );
}
