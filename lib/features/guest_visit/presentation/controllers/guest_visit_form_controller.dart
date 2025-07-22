import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/controllers/get_base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';

class GuestVisitFormController extends GetBaseFormController<
    SaveGuestVisitRequestEntity, BaseResponseEntity<GuestVisitEntity>> {
  final CreateGuestVisitUsecase _createGuestVisitUsecase;
  final UpdateGuestVisitUsecase _updateGuestVisitUsecase;

  GuestVisitFormController(
    this._createGuestVisitUsecase,
    this._updateGuestVisitUsecase,
  );

  final Rxn<GuestVisitEntity> _guestVisit = Rxn<GuestVisitEntity>();
  GuestVisitEntity? get guestVisit => _guestVisit.value;

  final RxnString _guestVisitId = RxnString();
  final selectedDate = Rxn<DateTime>();
  final selectedStartTime = RxnString();
  final selectedEndTime = RxnString();
  final selectedIdentityType = RxnString();
  final RxBool isRegisteredVisitor = false.obs;
  final RxnString selectedVisitorUserId = RxnString();
  final RxList<String> selectedVisitorIds = <String>[].obs;
  final RxList<UserEntity> selectedVisitorUsers = <UserEntity>[].obs;

  @override
  void onInit() {
    super.onInit();

    initializeControllers([
      'visitor',
      'name',
      'identityType',
      'identityNumber',
      'date',
      'startTime',
      'endTime',
      'purpose',
      'paraf',
    ]);
  }

  @override
  String get baseStateKey => 'saveGuestVisit';

  @override
  FormMode get mode =>
      _guestVisitId.value != null ? FormMode.update : FormMode.create;

  @override
  List<String> get requiredFields => ['purpose'];

  @override
  Future<Either<Failure, BaseResponseEntity<GuestVisitEntity>>> executeUsecase(
      SaveGuestVisitRequestEntity entity) async {
    if (mode == FormMode.create) {
      return await _createGuestVisitUsecase.execute(data: entity);
    } else {
      return await _updateGuestVisitUsecase.execute(
        id: _guestVisitId.value!,
        data: entity,
      );
    }
  }

  @override
  SaveGuestVisitRequestEntity buildEntity() {
    return SaveGuestVisitRequestEntity(
      visitor: isRegisteredVisitor.value
          ? (selectedVisitorIds.isNotEmpty ? selectedVisitorIds.first : null)
          : _getNonEmptyValue('visitor'),
      name: _getNonEmptyValue('name'),
      identityType: selectedIdentityType.value?.isNotEmpty == true
          ? selectedIdentityType.value
          : null,
      identityNumber: _getNonEmptyValue('identityNumber'),
      date: selectedDate.value != null
          ? DateHelper.formatIsoDate(date: selectedDate.value!)
          : null,
      startTime: selectedStartTime.value?.isNotEmpty == true
          ? selectedStartTime.value
          : null,
      endTime: selectedEndTime.value?.isNotEmpty == true
          ? selectedEndTime.value
          : null,
      purpose: _getNonEmptyValue('purpose'),
    );
  }

  String? _getNonEmptyValue(String fieldName) {
    final value = getControllerValue(fieldName).trim();
    return value.isEmpty ? null : value;
  }

  @override
  void onSubmitSuccess(BaseResponseEntity<GuestVisitEntity> response) {
    super.onSubmitSuccess(response);

    if (response.data != null) {
      _guestVisit.value = response.data;
      _guestVisitId.value = response.data!.id;
    }

    Future.microtask(() {
      cleanForm();
    });
  }

  String? get guestVisitId => _guestVisitId.value;

  @override
  Map<String, String?> validateAllFields() {
    final errors = <String, String?>{};

    for (final field in requiredFields) {
      final error =
          validateRequired(getControllerValue(field), field.capitalizeFirst!);
      if (error != null) {
        errors[field] = error;
      }
    }

    return errors..removeWhere((_, value) => value == null);
  }

  void loadGuestVisitForUpdate(GuestVisitEntity guestVisit) {
    _guestVisit.value = guestVisit;
    _guestVisitId.value = guestVisit.id;

    autoPopulateFromEntity(
      entity: guestVisit,
      entityToMap: (entity) => {
        'visitor': entity.visitor ?? '',
        'name': entity.name ?? '',
        'identityType': entity.identityType ?? '',
        'identityNumber': entity.identityNumber ?? '',
        'purpose': entity.purpose ?? '',
        'date': entity.date ?? '',
        'startTime': entity.startTime ?? '',
        'endTime': entity.endTime ?? '',
        'paraf': entity.paraf ?? '',
      },
    );

    if (guestVisit.date != null) {
      selectedDate.value = DateTime.tryParse(guestVisit.date!);
    }

    if (guestVisit.startTime != null) {
      selectedStartTime.value = guestVisit.startTime!;
    }

    if (guestVisit.endTime != null) {
      selectedEndTime.value = guestVisit.endTime!;
    }

    if (isRegisteredVisitor.value && guestVisit.visitor != null) {
      selectedVisitorIds.assignAll([guestVisit.visitor!]);
    }

    _markPopulatedFieldsAsInteracted(guestVisit);
  }

  void _markPopulatedFieldsAsInteracted(GuestVisitEntity guestVisit) {
    for (final field in requiredFields) {
      final hasValue = _hasFieldValue(field, guestVisit);
      if (hasValue) {
        markFieldAsInteracted(field);
      }
    }
  }

  bool _hasFieldValue(String fieldName, GuestVisitEntity guestVisit) {
    switch (fieldName) {
      case 'visitor':
        return guestVisit.visitor?.isNotEmpty == true;
      case 'name':
        return guestVisit.name?.isNotEmpty == true;
      case 'identityType':
        return guestVisit.identityType?.isNotEmpty == true;
      case 'identityNumber':
        return guestVisit.identityNumber?.isNotEmpty == true;
      case 'date':
        return guestVisit.date != null;
      case 'startTime':
        return guestVisit.startTime?.isNotEmpty == true;
      case 'endTime':
        return guestVisit.endTime?.isNotEmpty == true;
      case 'purpose':
        return guestVisit.purpose?.isNotEmpty == true;
      case 'paraf':
        return guestVisit.paraf?.isNotEmpty == true;
      default:
        return false;
    }
  }

  void resetForCreate() {
    _guestVisitId.value = null;
    cleanForm();
  }

  void selectDate(DateTime date) {
    selectedDate.value = date;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
  }

  void selectStartTime(String startTime) {
    selectedStartTime.value = startTime;
  }

  void selectEndTime(String endTime) {
    selectedEndTime.value = endTime;
  }

  void selectIdentityType(String identityType) {
    selectedIdentityType.value = identityType;
  }

  void resetTimeSelections() {
    selectedStartTime.value = null;
    selectedEndTime.value = null;
  }

  void resetScheduleSelections() {
    selectedDate.value = null;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    selectedIdentityType.value = null;
  }

  @override
  void cleanForm() {
    super.cleanForm();
    selectedDate.value = null;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    selectedIdentityType.value = null;
  }

  Future<void> createGuestVisit() => submitForm();
  Future<void> updateGuestVisit() => submitForm();
}

extension GuestVisitFormControllerMode on GuestVisitFormController {
  bool get isUpdateMode => guestVisitId != null && guestVisitId!.isNotEmpty;
}
