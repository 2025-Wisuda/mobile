import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/custom_menu_button_widget.dart';

class MainMenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const MainMenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 4,
        children: [
          CustomMenuButtonWidget(
            foregroundColor: context.primaryContainer,
            backgroundColor: backgroundColor,
            onPressed: () {
              Get.toNamed(routeName);
              onTap?.call();
            },
            width: 54,
            height: 54,
            child: iconMenu,
          ),
          Text(
            nameMenu.tr(),
            style: context
                .bodySmallW(600)
                .copyWith(color: context.onSurfaceVariant),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
