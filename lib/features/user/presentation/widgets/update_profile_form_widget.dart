import 'package:flutter/material.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/form/form.dart';

List<Widget> accountInfoSection(UserProfileFormController c) {
  return [
    CustomUsernameFieldWidget(
      controller: c.getController('username'),
      focusNode: c.getFocusNode('username'),
      onFieldSubmitted: (_) => c.getFocusNode('email').requestFocus(),
      textInputAction: TextInputAction.next,
      feature: 'user',
      isRequired: false,
      showPersonIcon: false,
    ),
    CustomEmailFieldWidget(
      controller: c.getController('email'),
      focusNode: c.getFocusNode('email'),
      onFieldSubmitted: (_) => c.unfocusAll(),
      textInputAction: TextInputAction.done,
      feature: 'user',
    ),
    CustomGroupFieldWidget(
      controller: c.getController('group'),
      focusNode: c.getFocusNode('group'),
      feature: 'user',
      enable: false,
    ),
  ];
}

List<Widget> personalInfoSection(
  UserProfileFormController c,
  GroupEnum userGroup,
) {
  return [
    CustomFirstNameFieldWidget(
      controller: c.getController('firstName'),
      focusNode: c.getFocusNode('firstName'),
      feature: 'user',
      enable: false,
    ),
    CustomLastNameFieldWidget(
      controller: c.getController('lastName'),
      focusNode: c.getFocusNode('lastName'),
      enable: false,
      feature: 'user',
    ),
    _buildNumberField(c, userGroup),
  ];
}

Widget _buildNumberField(UserProfileFormController c, GroupEnum userGroup) {
  if (userGroup == GroupEnum.student ||
      userGroup == GroupEnum.laboratoryAssistant) {
    return CustomStudentNumberFieldWidget(
      controller: c.getController('studentNumber'),
      focusNode: c.getFocusNode('studentNumber'),
      feature: 'user',
      enable: false,
    );
  } else {
    return CustomEmployeeNumberFieldWidget(
      controller: c.getController('employeeNumber'),
      focusNode: c.getFocusNode('employeeNumber'),
      feature: 'user',
      enable: false,
    );
  }
}
