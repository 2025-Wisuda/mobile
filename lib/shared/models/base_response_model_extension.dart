part of 'base_response_model.dart';

extension BaseResponseModelExtension<T> on BaseResponseModel<T> {
  BaseResponseEntity<R> toEntity<R>(R Function(T) transformer) {
    return BaseResponseEntity<R>(
      status: status,
      message: message,
      data: data != null ? transformer(data as T) : null,
    );
  }
}
