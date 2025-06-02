part of 'profile_wrapper_widget.dart';

Widget buttonLogout(BuildContext context) {
  final logoutController = getIt<LogoutController>();

  return SizedBox(
    width: double.infinity,
    child: OutlinedButton.icon(
      onPressed: () async {
        await logoutController.executeLogout(context);
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
