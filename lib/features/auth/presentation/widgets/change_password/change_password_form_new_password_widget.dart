part of 'change_password_wrapper_widget.dart';

class ChangePasswordFormNewPasswordWidget extends StatelessWidget {
  const ChangePasswordFormNewPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = getIt<ChangePasswordController>();

    return Obx(() {
      final bool isObscure = changePasswordController.obscureNewPassword.value;
      final String errorText = changePasswordController.newPasswordError;

      return CustomTextFormFieldWidget(
        controller: changePasswordController.newPasswordController,
        focusNode: changePasswordController.newPasswordFocusNode,
        onChanged:
            (value) => changePasswordController.validateNewPasswordField(value),
        labelText: 'auth'.label('newPassword'),
        hintText: 'auth'.hint('newPassword'),
        keyboardType: TextInputType.text,
        obscureText: isObscure,
        errorText: errorText.isNotEmpty ? errorText : null,
        suffixIcon: IconButton(
          onPressed: changePasswordController.toggleObscureNewPassword,
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
