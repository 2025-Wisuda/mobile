import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/form_base_controller.dart';

@lazySingleton
class UpdateUserProfileController extends FormBaseController<UserModel> {
  final UpdateUserProfileUsecase updateUserProfileUsecase;
  final UserRepository userRepository;

  UpdateUserProfileController({
    required this.updateUserProfileUsecase,
    required this.userRepository,
  });

  File? _faceImage;
  File? _avatar;

  File? get faceImage => _faceImage;
  File? get avatar => _avatar;

  @PostConstruct()
  void init() {
    setupFormFields();
  }

  @override
  void setupFormFields() {
    registerTextField('firstName');
    registerTextField('lastName');
    registerTextField('email');
    registerTextField('studentNumber');
    registerTextField('employeeNumber');
    registerTextField('group');
  }

  @override
  UserModel buildRequest() {
    return UserModel(
      firstName:
          getFieldValue('firstName').trim().isEmpty
              ? null
              : getFieldValue('firstName').trim(),
      lastName:
          getFieldValue('lastName').trim().isEmpty
              ? null
              : getFieldValue('lastName').trim(),
      email:
          getFieldValue('email').trim().isEmpty
              ? null
              : getFieldValue('email').trim(),
      faceImageUrl: _faceImage?.path,
      avatarUrl: _avatar?.path,
    );
  }

  @override
  Future<void> performSubmit(
    BuildContext context, {
    required UserModel request,
  }) async {
    final result = await updateUserProfileUsecase.execute(data: request);

    result.fold((failure) => throw Exception(failure.message), (
      response,
    ) async {
      final userEntity = response.data;
      if (userEntity != null) {
        await userRepository.saveUserProfile(userEntity);
      }
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully')),
        );
      }
    });
  }

  void setFaceImage(File? image) {
    _faceImage = image;
  }

  void setAvatar(File? image) {
    _avatar = image;
  }

  void validateFirstNameField(String value) {
    clearFieldError('firstName');
    validateForm();
  }

  void validateLastNameField(String value) {
    clearFieldError('lastName');
    validateForm();
  }

  void validateEmailField(String value) {
    String error = '';
    if (value.isNotEmpty && !value.contains('@')) {
      error = 'Please enter a valid email address';
    }
    setFieldError('email', error);
    validateForm();
  }

  void executeUpdateProfile(BuildContext context) => executeSubmit(context);

  Future<void> pickAvatar() async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 512,
        maxHeight: 512,
      );
      if (pickedFile != null) {
        setAvatar(File(pickedFile.path));
      }
    } catch (e) {
      print('Error picking avatar: $e');
    }
  }

  Future<void> pickAvatarFromSource(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: source,
        imageQuality: 85,
        maxWidth: 512,
        maxHeight: 512,
      );
      if (pickedFile != null) {
        setAvatar(File(pickedFile.path));
      }
    } catch (e) {
      print('Error picking avatar: $e');
    }
  }

  Future<void> pickFaceImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: source,
        imageQuality: 85,
        maxWidth: 512,
        maxHeight: 512,
      );
      if (pickedFile != null) {
        setFaceImage(File(pickedFile.path));
      }
    } catch (e) {
      print('Error picking face image: $e');
    }
  }
}
