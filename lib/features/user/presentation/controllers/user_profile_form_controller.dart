import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class UserProfileFormController
    extends BaseFormController<UserEntity, UserModel> {
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

  void populateFormFields(UserEntity user) {
    populateForm({
      'username': user.username ?? '',
      'firstName': user.firstName ?? '',
      'lastName': user.lastName ?? '',
      'email': user.email ?? '',
      'group': user.group ?? '',
      'studentNumber': user.studentNumber ?? '',
      'employeeNumber': user.employeeNumber ?? '',
    });
  }

  void initializeWithUserData(UserEntity user) {
    populateFormFields(user);
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);
    if (response is BaseResponseEntity<UserEntity>) {
      populateFormFields(response.data!);
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
    return reactiveFormValid.value || avatar != null;
  }

  Future<void> updateProfile() => submitForm();
}
