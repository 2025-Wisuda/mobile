part of 'change_password_wrapper_widget.dart';

class ChangePasswordFormCurrentPasswordWidget extends StatelessWidget {
  const ChangePasswordFormCurrentPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = getIt<ChangePasswordController>();

    return Obx(() {
      final bool isObscure =
          changePasswordController.obscureCurrentPassword.value;
      final String errorText = changePasswordController.currentPasswordError;

      return CustomTextFormFieldWidget(
        controller: changePasswordController.currentPasswordController,
        focusNode: changePasswordController.currentPasswordFocusNode,
        onChanged:
            (value) =>
                changePasswordController.validateCurrentPasswordField(value),
        labelText: 'auth'.label('currentPassword'),
        hintText: 'auth'.hint('currentPassword'),
        keyboardType: TextInputType.text,
        obscureText: isObscure,
        errorText: errorText.isNotEmpty ? errorText : null,
        suffixIcon: IconButton(
          onPressed: changePasswordController.toggleObscureCurrentPassword,
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
