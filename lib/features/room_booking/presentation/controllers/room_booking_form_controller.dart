import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';

class RoomBookingFormController extends GetBaseFormController<
    SaveRoomBookingRequestEntity, BaseResponseEntity<RoomBookingEntity>> {
  final CreateRoomBookingUsecase _createRoomBookingUsecase;
  final UpdateRoomBookingUsecase _updateRoomBookingUsecase;

  RoomBookingFormController(
    this._createRoomBookingUsecase,
    this._updateRoomBookingUsecase,
  );

  final Rxn<RoomBookingEntity> _roomBooking = Rxn<RoomBookingEntity>();
  RoomBookingEntity? get roomBooking => _roomBooking.value;

  final RxnString _roomBookingId = RxnString();

  final selectedDate = Rxn<DateTime>();
  final selectedStartTime = RxnString();
  final selectedEndTime = RxnString();
  final selectedBookingType = ''.obs;
  final selectedSeminarType = ''.obs;
  final selectedDocumentFile = Rxn<File>();

  @override
  void onInit() {
    super.onInit();

    initializeControllers([
      'bookingType',
      'purpose',
      'seminarType',
      'researchTitle',
      'supervisorMain',
      'supervisorSecondary',
      'examiner',
    ]);
  }

  @override
  String get baseStateKey => 'saveRoomBooking';

  @override
  FormMode get mode =>
      _roomBookingId.value != null ? FormMode.update : FormMode.create;

  @override
  List<String> get requiredFields {
    final baseFields = ['bookingType'];

    if (selectedBookingType.value == RoomBookingTypeEnum.seminar.value) {
      baseFields.addAll([
        'seminarType',
        'researchTitle',
        'supervisorMain',
        'examiner',
      ]);
    }

    return baseFields;
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> executeUsecase(
      SaveRoomBookingRequestEntity entity) async {
    if (mode == FormMode.create) {
      return await _createRoomBookingUsecase.execute(data: entity);
    } else {
      return await _updateRoomBookingUsecase.execute(
        roomBookingId: _roomBookingId.value!,
        data: entity,
      );
    }
  }

  @override
  SaveRoomBookingRequestEntity buildEntity() {
    return SaveRoomBookingRequestEntity(
      bookingType: _getNonEmptyValue('bookingType'),
      purpose: _getNonEmptyValue('purpose'),
      date: selectedDate.value != null
          ? DateHelper.formatIsoDate(date: selectedDate.value!)
          : null,
      startTime: selectedStartTime.value?.isNotEmpty == true
          ? selectedStartTime.value
          : null,
      endTime: selectedEndTime.value?.isNotEmpty == true
          ? selectedEndTime.value
          : null,
      seminarType: selectedSeminarType.value.isNotEmpty
          ? selectedSeminarType.value
          : null,
      researchTitle: _getNonEmptyValue('researchTitle'),
      supervisorMain: _getNonEmptyValue('supervisorMain'),
      supervisorSecondary: _getNonEmptyValue('supervisorSecondary'),
      examiner: _getNonEmptyValue('examiner'),
      documentProof: selectedDocumentFile.value?.path,
    );
  }

  String? _getNonEmptyValue(String fieldName) {
    final value = getControllerValue(fieldName).trim();
    return value.isEmpty ? null : value;
  }

  @override
  void onSubmitSuccess(BaseResponseEntity<RoomBookingEntity> response) {
    super.onSubmitSuccess(response);

    if (response.data != null) {
      _roomBooking.value = response.data;
      _roomBookingId.value = response.data!.id;
    }

    Future.microtask(() {
      cleanForm();
    });
  }

  String? get roomBookingId => _roomBookingId.value;

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

    if (selectedBookingType.value == RoomBookingTypeEnum.seminar.value) {
    if (mode == FormMode.create ||
        (mode == FormMode.update &&
            _roomBooking.value?.documentProof == null)) {
      if (selectedDocumentFile.value == null) {
          errors['documentProof'] =
              'Document proof is required for seminar bookings';
        }
      }
    }

    return errors..removeWhere((_, value) => value == null);
  }

  void loadRoomBookingForUpdate(RoomBookingEntity roomBooking) {
    _roomBooking.value = roomBooking;
    _roomBookingId.value = roomBooking.id;

    autoPopulateFromEntity(
      entity: roomBooking,
      entityToMap: (entity) => {
        'bookingType': entity.bookingType ?? '',
        'purpose': entity.purpose ?? '',
        'researchTitle': entity.researchTitle ?? '',
        'supervisorMain': entity.supervisorMain ?? '',
        'supervisorSecondary': entity.supervisorSecondary ?? '',
        'examiner': entity.examiner ?? '',
      },
    );

    if (roomBooking.bookingType != null) {
      selectBookingType(roomBooking.bookingType!);
    }

    if (roomBooking.date != null) {
      selectedDate.value = roomBooking.date;
    }

    if (roomBooking.startTime != null) {
      selectedStartTime.value = roomBooking.startTime!;
    }

    if (roomBooking.endTime != null) {
      selectedEndTime.value = roomBooking.endTime!;
    }

    if (roomBooking.seminarType != null) {
      selectSeminarType(roomBooking.seminarType!);
    }

    // Note: For document proof, we only store the URL/path reference
    // The actual file is not restored for editing
    if (roomBooking.documentProof != null) {
      // We cannot restore file selection from a URL/path
      // User needs to reselect file if they want to update it
      selectedDocumentFile.value = null;
    }

    _markPopulatedFieldsAsInteracted(roomBooking);
  }

  void _markPopulatedFieldsAsInteracted(RoomBookingEntity roomBooking) {
    for (final field in requiredFields) {
      final hasValue = _hasFieldValue(field, roomBooking);
      if (hasValue) {
        markFieldAsInteracted(field);
      }
    }
  }

  bool _hasFieldValue(String fieldName, RoomBookingEntity roomBooking) {
    switch (fieldName) {
      case 'bookingType':
        return roomBooking.bookingType?.isNotEmpty == true;
      case 'purpose':
        return roomBooking.purpose?.isNotEmpty == true;
      case 'seminarType':
        return roomBooking.seminarType?.isNotEmpty == true;
      case 'researchTitle':
        return roomBooking.researchTitle?.isNotEmpty == true;
      case 'supervisorMain':
        return roomBooking.supervisorMain?.isNotEmpty == true;
      case 'supervisorSecondary':
        return roomBooking.supervisorSecondary?.isNotEmpty == true;
      case 'examiner':
        return roomBooking.examiner?.isNotEmpty == true;
      default:
        return false;
    }
  }

  void resetForCreate() {
    _roomBookingId.value = null;
    cleanForm();
  }

  void selectBookingType(String bookingType) {
    selectedBookingType.value = bookingType;
    getController('bookingType').text = bookingType;
    markFieldAsInteracted('bookingType');

    if (bookingType != RoomBookingTypeEnum.seminar.value) {
      selectedSeminarType.value = '';
      getController('seminarType').clear();
      getController('researchTitle').clear();
      getController('supervisorMain').clear();
      getController('supervisorSecondary').clear();
      getController('examiner').clear();

      // Reset interaction states for seminar fields when switching to non-seminar
      fieldInteractionStates.remove('seminarType');
      fieldInteractionStates.remove('researchTitle');
      fieldInteractionStates.remove('supervisorMain');
      fieldInteractionStates.remove('supervisorSecondary');
      fieldInteractionStates.remove('examiner');
    } else {
      // When switching to seminar, mark seminar fields as interacted if they have values
      if (getControllerValue('seminarType').isNotEmpty) {
        markFieldAsInteracted('seminarType');
      }
      if (getControllerValue('researchTitle').isNotEmpty) {
        markFieldAsInteracted('researchTitle');
      }
      if (getControllerValue('supervisorMain').isNotEmpty) {
        markFieldAsInteracted('supervisorMain');
      }
      if (getControllerValue('examiner').isNotEmpty) {
        markFieldAsInteracted('examiner');
      }
    }

    // Trigger form validation update when booking type changes
    update();
  }

  void selectSeminarType(String seminarType) {
    selectedSeminarType.value = seminarType;
    getController('seminarType').text = seminarType;
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

  void resetTimeSelections() {
    selectedStartTime.value = null;
    selectedEndTime.value = null;
  }

  void resetScheduleSelections() {
    selectedDate.value = null;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
  }

  Future<FilePickerResult?> pickDocumentFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
      withData: false,
    );

    return result;
  }

  String? validateDocumentFile(File file) {
    if (!PdfHelper.isPdfFile(file)) {
      return 'Please select a PDF file only';
    }

    const maxSizeInBytes = 5 * 1024 * 1024;
    if (!PdfHelper.isValidPdfFile(file, maxSizeInBytes: maxSizeInBytes)) {
      final fileSizeFormatted = PdfHelper.getFormattedFileSize(file);
      return 'PDF file size ($fileSizeFormatted) exceeds 5MB limit';
    }

    return null;
  }

  Future<bool> validatePdfHeader(File file) async {
    return await PdfHelper.validatePdfHeader(file);
  }

  void setDocumentFile(File file) {
    selectedDocumentFile.value = file;
  }

  void removeDocumentFile() {
    selectedDocumentFile.value = null;
  }

  @override
  void cleanForm() {
    super.cleanForm();
    selectedDate.value = null;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    selectedBookingType.value = '';
    selectedSeminarType.value = '';
    selectedDocumentFile.value = null;
  }

  Future<void> createRoomBooking() => submitForm();
  Future<void> updateRoomBooking() => submitForm();
}
