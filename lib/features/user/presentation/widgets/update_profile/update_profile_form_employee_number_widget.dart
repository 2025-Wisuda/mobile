part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormEmployeeNumberWidget extends StatelessWidget {
  const UpdateProfileFormEmployeeNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();

    return Obx(() {
      final String errorText = updateProfileController.getFieldError(
        'employeeNumber',
      );

      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('employeeNumber'),
        labelText: 'user'.label('employeeNumber'),
        hintText: 'user'.hint('employeeNumber'),
        keyboardType: TextInputType.text,
        errorText: errorText.isNotEmpty ? errorText : null,
        requiredField: false,
        enabled: false,
        focusNode: updateProfileController.getFocusNode('employeeNumber'),
      );
    });
  }
}
