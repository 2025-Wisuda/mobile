import 'package:flutter/material.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/form/form.dart';

List<Widget> accountInfoSection(UserProfileFormController controller) {
  return [
    CustomUsernameFieldWidget(
      controller: controller.getController('username'),
      focusNode: controller.getFocusNode('username'),
      onFieldSubmitted: (_) => controller.getFocusNode('email').requestFocus(),
      textInputAction: TextInputAction.next,
      feature: 'user',
      isRequired: false,
      showPersonIcon: false,
    ),
    CustomEmailFieldWidget(
      controller: controller.getController('email'),
      focusNode: controller.getFocusNode('email'),
      onFieldSubmitted: (_) => controller.unfocusAll(),
      textInputAction: TextInputAction.done,
      feature: 'user',
    ),
    CustomGroupFieldWidget(
      controller: controller.getController('group'),
      focusNode: controller.getFocusNode('group'),
      feature: 'user',
      enable: false,
    ),
  ];
}

List<Widget> personalInfoSection(
  UserProfileFormController controller,
  GroupEnum userGroup,
) {
  return [
    CustomFirstNameFieldWidget(
      controller: controller.getController('firstName'),
      focusNode: controller.getFocusNode('firstName'),
      feature: 'user',
      enable: false,
    ),
    CustomLastNameFieldWidget(
      controller: controller.getController('lastName'),
      focusNode: controller.getFocusNode('lastName'),
      enable: false,
      feature: 'user',
    ),
    _buildNumberField(controller, userGroup),
  ];
}

Widget _buildNumberField(
    UserProfileFormController controller, GroupEnum userGroup) {
  if (userGroup == GroupEnum.student ||
      userGroup == GroupEnum.laboratoryAssistant) {
    return CustomStudentNumberFieldWidget(
      controller: controller.getController('studentNumber'),
      focusNode: controller.getFocusNode('studentNumber'),
      feature: 'user',
      enable: false,
    );
  } else {
    return CustomEmployeeNumberFieldWidget(
      controller: controller.getController('employeeNumber'),
      focusNode: controller.getFocusNode('employeeNumber'),
      feature: 'user',
      enable: false,
    );
  }
}
