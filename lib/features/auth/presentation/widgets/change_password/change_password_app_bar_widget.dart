part of 'change_password_wrapper_widget.dart';

class ChangePasswordAppBarWidget extends StatelessWidget {
  const ChangePasswordAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = getIt<ChangePasswordController>();

    return CustomAppBarWidget(
      titleAppBar: 'changePassword'.menu(),
      showBackButton: true,
      onTapBackButton: () {
        changePasswordController.clearAllFields();
      },
    );
  }
}
