part of 'profile_wrapper_widget.dart';

class ProfileAppBarWidget extends StatelessWidget {
  const ProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final fetchUserProfileController = getIt<FetchUserProfileController>();

    return Obx(() {
      final user = fetchUserProfileController.userProfile;
      final group = user?.groupStr;
      final firstName = user?.firstNameStr;
      final lastName = user?.lastNameStr;
      final fullName = user?.fullNameStr;
      final avatar = user?.avatarStr;
      final groupEnum = group.toGroupEnum();
      final identity =
          (groupEnum == GroupEnum.laboratoryAssistant ||
                  groupEnum == GroupEnum.student)
              ? user?.studentIdStr
              : user?.employeeIdStr;
      final username = user?.usernameStr;
      return SliverAppBar(
        expandedHeight: 190.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          collapseMode: CollapseMode.pin,
          expandedTitleScale: 1.2,
          title: SafeArea(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final isCollapsed = constraints.maxHeight < 160;
                return isCollapsed
                    ? Text(
                      user?.firstName != null
                          ? (fullName ?? '')
                          : (username ??
                              i18n.tr('features.user.form.label.username')),
                      style: context.bodyMediumW(600),
                      overflow: TextOverflow.ellipsis,
                    )
                    : Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        CustomProfilePictureWidget(
                          imageUrl: avatar ?? '',
                          radiusImage: 72,
                          firstName: firstName ?? '',
                          lastName: lastName ?? '',
                          username: user?.usernameStr ?? '',
                        ),
                        Text(
                          user?.firstName != null
                              ? (fullName ?? '')
                              : (username ??
                                  i18n.tr('features.user.form.label.username')),
                          style: context.bodySmallW(600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          identity ?? '',
                          style: context
                              .labelSmallW(500)
                              .copyWith(color: context.scrim),
                        ),
                      ],
                    ).pt(32);
              },
            ),
          ),
        ),
      );
    });
  }
}
