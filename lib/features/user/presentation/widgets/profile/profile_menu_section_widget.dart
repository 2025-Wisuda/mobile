part of 'profile_wrapper_widget.dart';

class ProfileMenuSectionWidget extends StatelessWidget {
  const ProfileMenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileMenuController = getIt<ProfileMenuController>();

    return Obx(() => _menuList(profileMenuController, context));
  }

  Widget _menuList(
    ProfileMenuController profileMenuController,
    BuildContext context,
  ) {
    if (profileMenuController.profileMenuList.isEmpty) {
      return const Center(child: Text('No menu items available'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children:
          profileMenuController.profileMenuList.map((section) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  section.title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 2),
                ...section.menus.map(
                  (menu) => Column(
                    children: [
                      ProfileMenuItemWidget(
                        iconMenu: customImageIconWidget(
                          imagePath: menu.iconMenu,
                          width: 24,
                          height: 24,
                        ),
                        nameMenu: menu.nameMenu,
                        routeName: menu.routeName,
                        backgroundColor: context.surfaceContainerHigh,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
    );
  }
}
