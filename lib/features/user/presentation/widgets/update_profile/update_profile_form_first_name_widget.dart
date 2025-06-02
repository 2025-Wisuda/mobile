part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormFirstNameWidget extends StatelessWidget {
  const UpdateProfileFormFirstNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();

    return Obx(() {
      final String errorText = updateProfileController.getFieldError(
        'firstName',
      );

      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('firstName'),
        onChanged:
            (value) => updateProfileController.validateFirstNameField(value),
        labelText: 'user'.label('firstName'),
        hintText: 'user'.hint('firstName'),
        keyboardType: TextInputType.text,
        errorText: errorText.isNotEmpty ? errorText : null,
        requiredField: false,
        focusNode: updateProfileController.getFocusNode('firstName'),
      );
    });
  }
}
