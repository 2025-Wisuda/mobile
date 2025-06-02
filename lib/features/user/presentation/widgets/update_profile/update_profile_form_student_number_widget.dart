part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormStudentNumberWidget extends StatelessWidget {
  const UpdateProfileFormStudentNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();
    return Obx(() {
      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('studentNumber'),
        labelText: 'user'.label('studentNumber'),
        hintText: 'user'.hint('studentNumber'),
        keyboardType: TextInputType.number,
        errorText: null,
        requiredField: false,
        enabled: false,
        focusNode: updateProfileController.getFocusNode('studentNumber'),
      );
    });
  }
}
