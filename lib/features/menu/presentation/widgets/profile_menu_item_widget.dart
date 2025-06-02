import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/custom_image_icon_widget.dart';

class ProfileMenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;

  const ProfileMenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
  });

  void _navigateToRoute(BuildContext context, String routeName) {
    switch (routeName) {
      case '/about-us':
        context.router.push(const AboutUsRoute());
        break;
      case '/profile':
        context.router.push(const UpdateProfileRoute());

        break;
      case '/change-password':
        context.router.push(const ChangePasswordRoute());

        break;
      case '/settings/language':
        // Add language settings route navigation when available
        // context.router.push(const LanguageSettingsRoute());
        break;
      case '/settings/theme':
        // Add theme settings route navigation when available
        // context.router.push(const ThemeSettingsRoute());
        break;
      default:
        // For now, fallback to string-based navigation for other routes
        // In the future, all routes should be converted to AutoRoute
        debugPrint('Route not implemented in AutoRoute: $routeName');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToRoute(context, routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
            ),
            child: iconMenu,
          ),
          Text(
            nameMenu,
            style: context.bodyMediumW(500),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Spacer(),
          customImageIconWidget(
            imagePath: IconConstant.chevronRightOutlineIcon,
            width: 44,
            height: 24,
          ),
        ],
      ),
    );
  }
}
