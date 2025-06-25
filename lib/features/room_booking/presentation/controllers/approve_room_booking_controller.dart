import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class ApproveRoomBookingController extends BaseFormController<
    ApproveRoomBookingEntity, BaseResponseEntity<RoomBookingEntity>> {
  final ApproveRoomBookingUsecase _approveRoomBookingUsecase;
  final RejectRoomBookingUsecase _rejectRoomBookingUsecase;

  ApproveRoomBookingController(
    this._approveRoomBookingUsecase,
    this._rejectRoomBookingUsecase,
  );

  final RxnString _roomBookingId = RxnString();
  final RxString _action = ''.obs;

  @override
  void onInit() {
    initializeControllers(['approvalNotes']);
    super.onInit();
  }

  @override
  String get baseStateKey => 'approveRoomBooking';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields => [];

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> executeUsecase(
      ApproveRoomBookingEntity entity) async {
    if (_action.value == 'approve') {
      return await _approveRoomBookingUsecase.execute(
        roomBookingId: _roomBookingId.value!,
        data: entity,
      );
    } else {
      return await _rejectRoomBookingUsecase.execute(
        roomBookingId: _roomBookingId.value!,
        data: entity,
      );
    }
  }

  @override
  ApproveRoomBookingEntity buildEntity() {
    final notes = getControllerValue('approvalNotes').trim();
    return ApproveRoomBookingEntity(
      approvalNotes: notes.isNotEmpty ? notes : null,
    );
  }

  @override
  Map<String, String?> validateAllFields() {
    return {};
  }

  void setRoomBookingId(String roomBookingId) {
    _roomBookingId.value = roomBookingId;
  }

  String get currentAction => _action.value;

  Future<void> approveBooking() {
    _action.value = 'approve';
    return submitForm();
  }

  Future<void> rejectBooking() {
    _action.value = 'reject';
    return submitForm();
  }

  @override
  bool validateBeforeSubmit() {
    // No form fields required, so always valid. Skip default form validation.
    return true;
  }
}
