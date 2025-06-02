part of 'login_wrapper_widget.dart';

class LoginFormUsernameWidget extends StatelessWidget {
  const LoginFormUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = getIt<LoginController>();

    return Obx(
      () => CustomTextFormFieldWidget(
        controller: loginController.usernameController,
        focusNode: loginController.usernameFocusNode,
        onChanged: (value) => loginController.validateUsernameField(value),
        labelText: 'auth'.label('username'),
        hintText: 'auth'.hint('username'),
        keyboardType: TextInputType.text,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: customImageIconWidget(
            imagePath: IconConstant.userSolidIcon,
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
