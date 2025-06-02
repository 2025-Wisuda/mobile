part of 'login_wrapper_widget.dart';

class LoginFormPasswordWidget extends StatelessWidget {
  const LoginFormPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = getIt<LoginController>();
    return Obx(() {
      final isObscure = loginController.obscureText.value;
      return CustomTextFormFieldWidget(
        controller: loginController.passwordController,
        focusNode: loginController.passwordFocusNode,
        onChanged: (value) => loginController.validatePasswordField(value),
        labelText: 'auth'.label('password'),
        hintText: 'auth'.hint('password'),
        keyboardType: TextInputType.text,
        prefixIcon: IconButton(
          onPressed: loginController.toggleObscureText,
          icon:
              isObscure
                  ? customImageIconWidget(
                    imagePath: IconConstant.lockClosedSolidIcon,
                  )
                  : customImageIconWidget(
                    imagePath: IconConstant.lockOpenSolidIcon,
                  ),
        ),
        suffixIcon: IconButton(
          onPressed: loginController.toggleObscureText,
          icon:
              isObscure
                  ? customImageIconWidget(
                    imagePath: IconConstant.eyeOffSolidIcon,
                  )
                  : customImageIconWidget(imagePath: IconConstant.eyeSolidIcon),
        ),
        obscureText: isObscure,
      );
    });
  }
}
