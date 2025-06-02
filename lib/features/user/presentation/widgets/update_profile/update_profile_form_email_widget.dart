part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormEmailWidget extends StatelessWidget {
  const UpdateProfileFormEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();

    return Obx(() {
      final String errorText = updateProfileController.getFieldError('email');

      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('email'),
        onChanged: (value) => updateProfileController.validateEmailField(value),
        labelText: 'user'.label('email'),
        hintText: 'user'.hint('email'),
        keyboardType: TextInputType.emailAddress,
        errorText: errorText.isNotEmpty ? errorText : null,
        requiredField: false,
        focusNode: updateProfileController.getFocusNode('email'),
      );
    });
  }
}
