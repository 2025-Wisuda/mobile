part of 'update_profile_wrapper_widget.dart';

class UpdateProfileFormGroupWidget extends StatelessWidget {
  const UpdateProfileFormGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();
    return Obx(() {
      return CustomTextFormFieldWidget(
        controller: updateProfileController.getController('group'),
        labelText: 'user'.label('group'),
        hintText: 'user'.hint('group'),
        keyboardType: TextInputType.number,
        errorText: null,
        requiredField: false,
        enabled: false,
        focusNode: updateProfileController.getFocusNode('group'),
      );
    });
  }
}
