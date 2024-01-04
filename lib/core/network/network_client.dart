import 'package:dio/dio.dart';

class NetworkClient {
  final Dio _dio;
  NetworkClient(this._dio) {
    _dio.options = BaseOptions(baseUrl: "https://api.sejm.gov.pl/sejm");
  }
  get dio => _dio;
}