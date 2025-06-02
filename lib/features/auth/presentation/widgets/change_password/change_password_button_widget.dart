part of 'change_password_wrapper_widget.dart';

class ChangePasswordButtonWidget extends StatelessWidget {
  const ChangePasswordButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = getIt<ChangePasswordController>();
    return Obx(() {
      bool isFormValid = changePasswordController.isFormValid;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        onPressed:
            isFormValid
                ? () => changePasswordController.executeChangePassword(context)
                : null,
        textButton: 'auth'.message('changePassword'),
      );
    });
  }
}
