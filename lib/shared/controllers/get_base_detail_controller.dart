import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

/// GetX-only Base Detail Controller: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class UserDetailController extends GetBaseDetailController<UserEntity, String> {
///   final FetchUserDetailUsecase fetchUserDetailUsecase;
///   UserDetailController({required this.fetchUserDetailUsecase});
///   @override
///   String get baseStateKey => 'userDetail';
///   @override
///   Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(String userId) async {
///     return await fetchUserDetailUsecase.execute(userId: userId);
///   }
/// }
/// // In UI:
/// Obx(() => controller.fetchStates['userDetail'] == FetchStateEnum.loading
///   ? CircularProgressIndicator()
///   : controller.entity.value != null
///     ? DetailWidget(entity: controller.entity.value)
///     : Text('No data'),
/// )
/// ```
abstract class GetBaseDetailController<T, P> extends GetxController
    with GetFetchStateMixin {
  /// Holds the main entity data reactively.
  final Rxn<T> entity = Rxn<T>();

  /// Holds the current parameters used for the last fetch operation.
  final Rxn<P> currentParams = Rxn<P>();

  /// Executes the detail API call with the given parameters.
  ///
  /// [params] - The parameters for the fetch operation.
  // ignore: unintended_html_in_doc_comment
  /// Returns an Either containing Failure or BaseResponseEntity<T>.
  Future<Either<Failure, BaseResponseEntity<T>>> executeUsecase(P params);

  /// The unique state key for this controller (used for state tracking).
  String get baseStateKey;

  /// Main method to fetch detail data.
  ///
  /// [params] - The parameters for the fetch operation.
  /// Sets state to loading, calls executeUsecase, and updates state based on result.
  /// Usage:
  /// ```dart
  /// await controller.fetchDetail('user123');
  /// ```
  Future<void> fetchDetail(P params) async {
    currentParams.value = params;
    fetchStates[baseStateKey] = FetchStateEnum.loading;
    final result = await executeUsecase(params);
    result.fold(
      (failure) {
        fetchStates[baseStateKey] = FetchStateEnum.failure;
        errorMessages[baseStateKey] = failure.message;
        onErrorOccurred(failure);
      },
      (response) {
        if (response.data == null) {
          fetchStates[baseStateKey] = FetchStateEnum.empty;
          entity.value = null;
        } else {
          fetchStates[baseStateKey] = FetchStateEnum.success;
          entity.value = response.data;
          onDataReceived(response.data as T);
        }
      },
    );
  }

  /// Pull-to-refresh with parameters.
  ///
  /// [params] - The parameters for the fetch operation.
  Future<void> refreshDetail(P params) async {
    fetchStates[baseStateKey] = FetchStateEnum.refreshing;
    await fetchDetail(params);
  }

  /// Force refresh without pull-to-refresh.
  ///
  /// [params] - The parameters for the fetch operation.
  Future<void> forceRefresh(P params) async {
    await fetchDetail(params);
  }

  /// Reload with parameters.
  ///
  /// [params] - The parameters for the fetch operation.
  Future<void> reload(P params) async {
    await fetchDetail(params);
  }

  /// Clear only the entity data.
  void clearEntity() {
    entity.value = null;
  }

  /// Complete reset: clears entity, state, and parameters.
  void clearAll() {
    clearEntity();
    resetStateOnly();
    currentParams.value = null;
  }

  /// Reset only loading/error states.
  void resetStateOnly() {
    fetchStates[baseStateKey] = FetchStateEnum.initial;
    errorMessages.remove(baseStateKey);
  }

  /// Returns true if the controller is currently loading data.
  bool get isLoading => fetchStates[baseStateKey] == FetchStateEnum.loading;

  /// Returns true if the controller is currently refreshing data.
  bool get isRefreshing =>
      fetchStates[baseStateKey] == FetchStateEnum.refreshing;

  /// Returns true if the last fetch resulted in empty data.
  bool get isEmpty => fetchStates[baseStateKey] == FetchStateEnum.empty;

  /// Returns true if the last fetch resulted in an error.
  bool get hasError => fetchStates[baseStateKey] == FetchStateEnum.failure;

  /// Returns true if the entity data is available.
  bool get hasData => entity.value != null;

  /// Returns the current fetch state enum value.
  FetchStateEnum get state =>
      fetchStates[baseStateKey] ?? FetchStateEnum.initial;

  /// Returns the current state description or error message if any.
  String get stateDescription =>
      errorMessages[baseStateKey] ?? state.description;

  /// Hook: called when data is received (override in subclass if needed).
  void onDataReceived(T data) {}

  /// Hook: called when data is cleared (override in subclass if needed).
  void onDataCleared() {}

  /// Hook: called when an error occurs (override in subclass if needed).
  void onErrorOccurred(Failure failure) {}

  @override
  void onClose() {
    clearAll();
    super.onClose();
  }
}
