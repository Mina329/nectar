import 'package:dio/dio.dart';
import 'package:nectar/core/utils/config.dart';

class ApiService {
  final Dio _dio;
  final geoCodingUrl = "https://api.opencagedata.com/geocode/v1/json?";
  ApiService(this._dio);

  Future<Map<String, dynamic>> getGeoCoding(
      {required String latitude,
      required String longitude,
      required String language}) async {
    var response = await _dio.get(
        "${geoCodingUrl}key=$geoCodingApiKey&q=$latitude+$longitude&language=$language");
    return response.data;
  }
}
