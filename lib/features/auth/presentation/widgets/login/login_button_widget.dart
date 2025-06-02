part of 'login_wrapper_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = getIt<LoginController>();
    return Obx(() {
      bool isFormValid = loginController.isFormValid;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        onPressed:
            isFormValid ? () => loginController.executeLogin(context) : null,
        textButton: 'auth'.message('login'),
      );
    });
  }
}
