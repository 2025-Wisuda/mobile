part of 'menu_bottom_nav_bar_widget.dart';

Widget menuBottomNavBarItemWidget(
  BuildContext context, {
  required String iconMenu,
  required String labelMenu,
  required int indexMenu,
  required bool isSelected,
  required Color color,
}) {
  return GestureDetector(
    onTap: () {
      getIt<NavigationController>().changeIndex(indexMenu);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        customImageIconWidget(imagePath: iconMenu, color: color),
        if (isSelected)
          Text(
            labelMenu,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
      ],
    ).py(8),
  );
}
