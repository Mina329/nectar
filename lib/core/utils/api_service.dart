import 'package:dio/dio.dart';
import 'package:nectar/core/utils/config.dart';

import '../../main.dart';

class ApiService {
  final Dio _dio;
  final geoCodingUrl = "https://api.opencagedata.com/geocode/v1/json?";
  final geoSearchAutoSuggestionUrl =
      "https://autosuggest.search.hereapi.com/v1/autosuggest?";
  ApiService(this._dio);
  static const baseUrl = "https://groceries-backend-7ncm.onrender.com/";
  final headers = {
    'Authorization': "Bearer $testToken",
  };
  Future<Map<String, dynamic>> getGeoCoding(
      {required String latitude,
      required String longitude,
      required String language}) async {
    var response = await _dio.get(
        "${geoCodingUrl}key=$geoCodingApiKey&q=$latitude+$longitude&language=$language");
    return response.data;
  }

  Future<Map<String, dynamic>> getGeoSearchSuggestion(
      {required String latitude,
      required String longitude,
      required String query}) async {
    var response = await _dio.get(
        "${geoSearchAutoSuggestionUrl}at=$latitude,$longitude&limit=20&q=$query&apiKey=$geoSearchAutoSuggestionApiKey");
    return response.data;
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(
      "$baseUrl$endPoint",
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }
}
