import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/entities/base_response_entity.dart';
import 'package:mobile/shared/enums/form_mode.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/helpers/helper.dart' show DateHelper;

class GuestVisitFormController
    extends BaseFormController<SaveGuestVisitRequestEntity, GuestVisitEntity> {
  final CreateGuestVisitUsecase _createGuestVisitUsecase;
  final UpdateGuestVisitUsecase _updateGuestVisitUsecase;

  GuestVisitFormController(
    this._createGuestVisitUsecase,
    this._updateGuestVisitUsecase,
  );

  final Rxn<GuestVisitEntity> _guestVisit = Rxn<GuestVisitEntity>();
  GuestVisitEntity? get guestVisit => _guestVisit.value;

  final RxnString _guestVisitId = RxnString();

  @override
  void onInit() {
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
    super.onInit();
  }

  @override
  String get baseStateKey => 'saveGuestVisit';

  @override
  FormMode get mode =>
      _guestVisitId.value != null ? FormMode.update : FormMode.create;

  @override
  List<String> get requiredFields => ['date', 'startTime', 'purpose'];

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
      visitor: _getNonEmptyValue('visitor'),
      name: _getNonEmptyValue('name'),
      identityType: _getNonEmptyValue('identityType'),
      identityNumber: _getNonEmptyValue('identityNumber'),
      date: DateTime.parse(getControllerValue('date')),
      startTime: getControllerValue('startTime'),
      endTime: _getNonEmptyValue('endTime'),
      purpose: getControllerValue('purpose'),
      paraf: _getNonEmptyValue('paraf'),
    );
  }

  String? _getNonEmptyValue(String fieldName) {
    final value = getControllerValue(fieldName).trim();
    return value.isEmpty ? null : value;
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);

    if (response is BaseResponseEntity<GuestVisitEntity> &&
        response.data != null) {
      _guestVisit.value = response.data;
      _guestVisitId.value = response.data!.id;
    }

    Future.microtask(() {
      clearForm();
    });
  }

  String? get guestVisitId => _guestVisitId.value;

  @override
  Map<String, String?> validateAllFields() {
    final date = getControllerValue('date');
    final startTime = getControllerValue('startTime');
    final purpose = getControllerValue('purpose');

    final errors = {
      'date': validateRequired(date, 'Date'),
      'startTime': validateRequired(startTime, 'Start Time'),
      'purpose': validateRequired(purpose, 'Purpose'),
    };

    return errors..removeWhere((_, value) => value == null);
  }

  void loadGuestVisitForUpdate(GuestVisitEntity guestVisit) {
    _guestVisit.value = guestVisit;
    _guestVisitId.value = guestVisit.id;

    autoPopulateForm(guestVisit);

    if (guestVisit.visitor?.id != null) {
      getController('visitor').text = guestVisit.visitor!.id!;
    }

    if (guestVisit.nameDisplay != null) {
      getController('name').text = guestVisit.nameDisplay!;
    }

    if (guestVisit.identityType != null) {
      getController('identityType').text = guestVisit.identityType!;
    }

    if (guestVisit.identityNumber != null) {
      getController('identityNumber').text = guestVisit.identityNumber!;
    }

    if (guestVisit.date != null) {
      getController('date').text =
          DateHelper.formatDayMonthYear(date: guestVisit.date!);
    }

    if (guestVisit.startTime != null) {
      getController('startTime').text = guestVisit.startTime!;
    }

    if (guestVisit.endTime != null) {
      getController('endTime').text = guestVisit.endTime!;
    }

    if (guestVisit.purpose != null) {
      getController('purpose').text = guestVisit.purpose!;
    }

    if (guestVisit.paraf != null) {
      getController('paraf').text = guestVisit.paraf!;
    }
  }

  void resetForCreate() {
    _guestVisitId.value = null;
    clearForm();
  }

  Future<void> createGuestVisit() => submitForm();
  Future<void> updateGuestVisit() => submitForm();

  // @override
  // Map<String, dynamic> get initialValues => {
  //       'visitor': '',
  //       'name': '',
  //       'identityType': '',
  //       'identityNumber': '',
  //       'date': '',
  //       'startTime': '',
  //       'endTime': '',
  //       'purpose': '',
  //       'paraf': '',
  //     };

  // @override
  // Map<String, String> get validations => {
  //       'date': 'required',
  //       'startTime': 'required',
  //       'purpose': 'required',
  //     };
}
