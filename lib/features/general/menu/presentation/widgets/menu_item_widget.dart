import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/shared/widgets/button/custom_button_menu_widget.dart';

class MenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;

  const MenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        width: 76,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 4,
          children: [
            CustomButtonMenuWidget(
              backgroundColor: backgroundColor,
              onPressed: () {
                Get.toNamed(routeName);
              },
              width: 54,
              height: 54,
              child: iconMenu,
            ),
            Text(
              nameMenu,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
