part of 'update_profile_wrapper_widget.dart';

class UpdateProfileAppBarWidget extends StatelessWidget {
  const UpdateProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileController = getIt<UpdateUserProfileController>();
    final fetchUserProfileController = getIt<FetchUserProfileController>();

    return Column(
      children: [
        CustomAppBarWidget(
          titleAppBar: 'user'.message('updateProfile'),
          borderColor: Colors.transparent,
        ),
        Obx(() {
          final user = fetchUserProfileController.userProfile;
          final avatarFile = updateProfileController.avatar;
          return GestureDetector(
            onTap: () => updateProfileController.pickAvatar(),
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: context.outline),
                  ),
                  child: ClipOval(
                    child:
                        avatarFile != null
                            ? Image.file(avatarFile, fit: BoxFit.cover)
                            : (user?.avatarUrl != null &&
                                user!.avatarUrl!.isNotEmpty)
                            ? Image.network(
                              user.avatarUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.person,
                                  size: 60,
                                  color: context.outline,
                                );
                              },
                            )
                            : Icon(
                              Icons.person,
                              size: 60,
                              color: context.outline,
                            ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                      border: Border.all(color: context.surface, width: 2),
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: context.surface,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        const SizedBox(height: 8),
        Text(
          'user'.message('tapToChangeAvatar'),
          style: context
              .bodySmallW(500)
              .copyWith(color: context.onSurfaceVariant),
        ),
      ],
    );
  }
}
