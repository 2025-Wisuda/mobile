import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/button/custom_button_menu_widget.dart';

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
          CustomButtonMenuWidget(
            foregroundColor: context.color.primaryContainer,
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
            style: context.text.bodySmall!.copyWith(
              color: context.color.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
