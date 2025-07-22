import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateProfileAvatarWidget extends StatelessWidget {
  final UserProfileFormController? formController;
  final UserProfileController? profileController;

  const UpdateProfileAvatarWidget({
    super.key,
    this.formController,
    this.profileController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          final user = profileController?.userProfile;
          final avatarFile = formController?.avatar;

          return GestureDetector(
            onTap: () => _showPickerSheet(context, formController!),
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: context.outline.withValues(alpha: 0.5)),
                    boxShadow: [
                      BoxShadow(
                          color: context.shadow.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2))
                    ],
                  ),
                  child: ClipOval(
                    child: avatarFile != null
                        ? Image.file(avatarFile,
                            fit: BoxFit.cover, width: 100, height: 100)
                        : (user?.avatar != null && user!.avatar!.isNotEmpty)
                            ? CachedNetworkImage(
                                imageUrl: user.avatar!,
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                                placeholder: (_, __) => Container(
                                    color:
                                        context.shadow.withValues(alpha: 0.5),
                                    child: Icon(Icons.person,
                                        size: 64, color: context.outline)),
                                errorWidget: (_, __, ___) => Container(
                                    color:
                                        context.shadow.withValues(alpha: 0.5),
                                    child: Icon(Icons.person,
                                        size: 64, color: context.outline)),
                              )
                            : Container(
                                color: context.shadow.withValues(alpha: 0.5),
                                child: Icon(Icons.person,
                                    size: 64, color: context.outline)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.primary,
                      border: Border.all(color: context.surface, width: 3),
                      boxShadow: [
                        BoxShadow(
                            color: context.shadow.withValues(alpha: 0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2))
                      ],
                    ),
                    child: Icon(Icons.camera_alt,
                        color: context.onPrimary, size: 20),
                  ),
                ),
              ],
            ),
          );
        }),
        const SizedBox(height: 4),
        Text(
          'user'.message('tapToChangeAvatar'),
          style:
              context.bodySmallW(500).copyWith(color: context.onSurfaceVariant),
        ),
      ],
    );
  }

  void _showPickerSheet(
      BuildContext context, UserProfileFormController controller) {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text('common'.message('pickFromGallery')),
              onTap: () {
                Navigator.pop(context);
                controller.pickAvatarFromGallery();
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text('common'.message('takePhoto')),
              onTap: () {
                Navigator.pop(context);
                controller.pickAvatarFromCamera();
              },
            ),
          ],
        ),
      ),
    );
  }
}
