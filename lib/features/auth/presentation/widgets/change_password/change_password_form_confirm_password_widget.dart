part of 'change_password_wrapper_widget.dart';

class ChangePasswordFormConfirmPasswordWidget extends StatelessWidget {
  const ChangePasswordFormConfirmPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = getIt<ChangePasswordController>();

    return Obx(() {
      final bool isObscure =
          changePasswordController.obscureConfirmPassword.value;
      final String errorText = changePasswordController.confirmPasswordError;

      return CustomTextFormFieldWidget(
        controller: changePasswordController.confirmPasswordController,
        focusNode: changePasswordController.confirmPasswordFocusNode,
        onChanged:
            (value) =>
                changePasswordController.validateConfirmPasswordField(value),
        labelText: 'auth'.label('confirmPassword'),
        hintText: 'auth'.hint('confirmPassword'),
        keyboardType: TextInputType.text,
        obscureText: isObscure,
        errorText: errorText.isNotEmpty ? errorText : null,
        suffixIcon: IconButton(
          onPressed: changePasswordController.toggleObscureConfirmPassword,
          icon: customImageIconWidget(
            imagePath:
                isObscure
                    ? IconConstant.eyeOffSolidIcon
                    : IconConstant.eyeSolidIcon,
          ),
        ),
      );
    });
  }
}
