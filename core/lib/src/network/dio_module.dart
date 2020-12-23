import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioModule with DioMixin implements Dio {
  DioModule(BaseOptions setup, Interceptor interceptor,
      DefaultHttpClientAdapter adapter) {
    options = setup;
    interceptors.add(interceptor);
    httpClientAdapter = adapter;
  }
}

class DioOptions extends BaseOptions {
  DioOptions()
      : super(
            baseUrl: "https://localhost/api/",
            contentType: 'application/json',
            connectTimeout: 30000,
            sendTimeout: 30000,
            receiveTimeout: 30000);
}
