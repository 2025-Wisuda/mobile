import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/di/injection.dart';
import 'package:mobile/features/user/domain/entities/user_entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

part 'update_profile_app_bar_widget.dart';
part 'update_profile_button_widget.dart';
part 'update_profile_form_email_widget.dart';
part 'update_profile_form_employee_number_widget.dart';
part 'update_profile_form_first_name_widget.dart';
part 'update_profile_form_group_widget.dart';
part 'update_profile_form_last_name_widget.dart';
part 'update_profile_form_student_number_widget.dart';

class UpdateProfileWrapperWidget extends StatefulWidget {
  const UpdateProfileWrapperWidget({super.key});

  @override
  State<UpdateProfileWrapperWidget> createState() =>
      _UpdateProfileWrapperWidgetState();
}

class _UpdateProfileWrapperWidgetState
    extends State<UpdateProfileWrapperWidget> {
  final updateProfileController = getIt<UpdateUserProfileController>();
  final fetchUserProfileController = getIt<FetchUserProfileController>();

  @override
  void initState() {
    super.initState();
    _loadUserProfileData();
  }

  void _loadUserProfileData() {
    final user = fetchUserProfileController.userProfile;
    if (user != null) {
      updateProfileController.getController('firstName').text =
          user.firstName ?? '';
      updateProfileController.getController('lastName').text =
          user.lastName ?? '';
      updateProfileController.getController('email').text = user.email ?? '';
      updateProfileController.getController('group').text = user.group ?? '';
      updateProfileController.getController('studentNumber').text =
          user.studentNumber ?? '';
      updateProfileController.getController('employeeNumber').text =
          user.employeeNumber ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final String group = fetchUserProfileController.userGroup;
    final groupEnum = group.toGroupEnum();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          UpdateProfileAppBarWidget(),
          const SizedBox(height: 8),
          UpdateProfileFormFirstNameWidget(),
          UpdateProfileFormLastNameWidget(),
          UpdateProfileFormEmailWidget(),

          if (groupEnum == GroupEnum.student ||
              groupEnum == GroupEnum.laboratoryAssistant)
            UpdateProfileFormStudentNumberWidget()
          else
            UpdateProfileFormEmployeeNumberWidget(),

          UpdateProfileFormGroupWidget(),

          const SizedBox(height: 8),
          UpdateProfileButtonWidget(),
          const SizedBox(height: 36),
          _buildStatusInfo(),
        ],
      ).px(24),
    );
  }

  Widget _buildStatusInfo() {
    return Obx(() {
      final user = fetchUserProfileController.userProfile;
      if (user == null) return const SizedBox();
      final status = user.isActive.toString().toLowerCase() == 'true';
      return Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            color: status ? context.tertiary : context.error,
            size: 12,
          ),
          Text('user'.label('dateJoined'), style: context.bodySmallW(500)),
          Text(user.formattedDateJoined, style: context.bodySmallW(500)),
        ],
      );
    });
  }
}
