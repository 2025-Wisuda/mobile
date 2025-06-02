part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormLastNameWidget extends StatelessWidget {
  const UpdateProfileFormLastNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();

    return Obx(() {
      final String errorText = updateProfileController.getFieldError(
        'lastName',
      );

      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('lastName'),
        onChanged:
            (value) => updateProfileController.validateLastNameField(value),
        labelText: 'user'.label('lastName'),
        hintText: 'user'.hint('lastName'),
        keyboardType: TextInputType.text,
        errorText: errorText.isNotEmpty ? errorText : null,
        requiredField: false,
        focusNode: updateProfileController.getFocusNode('lastName'),
      );
    });
  }
}
