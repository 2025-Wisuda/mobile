part of 'update_profile_wrapper_widget.dart';

class UpdateProfileButtonWidget extends StatelessWidget {
  const UpdateProfileButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();

    return Obx(() {
      bool isFormValid = updateProfileController.isFormValid;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        onPressed:
            isFormValid
                ? () => updateProfileController.executeUpdateProfile(context)
                : null,
        textButton: 'user'.message('updateProfile'),
        state: updateProfileController.submitState,
      );
    });
  }
}
