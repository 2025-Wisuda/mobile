part of 'base_list_response_model.dart';

extension BaseListResponseModelExtension<T> on BaseListResponseModel<T> {
  BaseListResponseEntity<R> toEntity<R>(R Function(T) transformer) {
    return BaseListResponseEntity<R>(
      status: status,
      message: message,
      data: data?.map(transformer).toList(),
      meta: meta?.toEntity(),
    );
  }
}
