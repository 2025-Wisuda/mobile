import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class UserProfileFormController
    extends GetBaseFormController<UserEntity, BaseResponseEntity<UserEntity>> {
  final UpdateUserProfileUsecase _updateUserProfileUsecase;

  UserProfileFormController(this._updateUserProfileUsecase);

  final _avatar = Rxn<File>();
  File? get avatar => _avatar.value;

  final isAccountInfoExpanded = true.obs;
  final isPersonalInfoExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeControllers([
      'username',
      'firstName',
      'lastName',
      'email',
      'group',
      'studentNumber',
      'employeeNumber',
    ]);
  }

  @override
  String get baseStateKey => 'updateUserProfile';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields => ['username'];

  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
    UserEntity entity,
  ) async {
    return await _updateUserProfileUsecase.execute(data: entity);
  }

  @override
  UserEntity buildEntity() {
    return UserEntity(
      username: getControllerValue('username').trim(),
      email: getControllerValue('email').trim(),
      avatar: avatar?.path,
    );
  }

  void loadUserProfileForUpdate(UserEntity user) {
    autoPopulateFromEntity(
      entity: user,
      entityToMap: (entity) => {
        'username': entity.username ?? '',
        'firstName': entity.firstName ?? '',
        'lastName': entity.lastName ?? '',
        'email': entity.email ?? '',
        'group': entity.group ?? '',
        'studentNumber': entity.studentNumber ?? '',
        'employeeNumber': entity.employeeNumber ?? '',
      },
    );

    _markPopulatedFieldsAsInteracted(user);
  }

  void _markPopulatedFieldsAsInteracted(UserEntity user) {
    for (final field in requiredFields) {
      final hasValue = _hasFieldValue(field, user);
      if (hasValue) {
        markFieldAsInteracted(field);
      }
    }
  }

  bool _hasFieldValue(String fieldName, UserEntity user) {
    switch (fieldName) {
      case 'username':
        return user.username?.isNotEmpty == true;
      case 'firstName':
        return user.firstName?.isNotEmpty == true;
      case 'lastName':
        return user.lastName?.isNotEmpty == true;
      case 'email':
        return user.email?.isNotEmpty == true;
      case 'group':
        return user.group?.isNotEmpty == true;
      case 'studentNumber':
        return user.studentNumber?.isNotEmpty == true;
      case 'employeeNumber':
        return user.employeeNumber?.isNotEmpty == true;
      default:
        return false;
    }
  }

  void setAvatar(File? image) {
    _avatar.value = image;
  }

  Future<void> pickAvatarFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setAvatar(File(pickedFile.path));
    }
  }

  Future<void> pickAvatarFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setAvatar(File(pickedFile.path));
    }
  }

  @override
  Map<String, String?> validateAllFields() {
    final Map<String, String?> errors = {};

    final username = getControllerValue('username');
    final email = getControllerValue('email');

    final usernameError = validateRequired(username, 'Username');
    if (usernameError != null) {
      errors['username'] = usernameError;
    }

    final emailError = validateEmail(email);
    if (emailError != null) {
      errors['email'] = emailError;
    }

    return errors;
  }

  bool get isFormValidWithImages {
    return isFormValid.value || avatar != null;
  }

  Future<void> updateProfile() => submitForm();
}
