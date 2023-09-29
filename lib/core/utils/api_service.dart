import 'package:dio/dio.dart';
import '../../main.dart';
import 'env.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);
  final headers = {
    'Authorization': "Bearer $testToken",
  };
  Future<Map<String, dynamic>> getGeoCoding(
      {required String latitude,
      required String longitude,
      required String language}) async {
    var response = await _dio.get(
        "${Env.GEOCODING_URL}key=${Env.GEOCODING_API_KEY}&q=$latitude+$longitude&language=$language");
    return response.data;
  }

  Future<Map<String, dynamic>> getGeoSearchSuggestion(
      {required String latitude,
      required String longitude,
      required String query}) async {
    var response = await _dio.get(
        "${Env.GEOSEARCH_AUTO_SUGGESTION_URL}at=$latitude,$longitude&limit=20&q=$query&apiKey=${Env.GEOSEARCH_AUTO_SUGGESTION_API_KEY}");
    return response.data;
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(
      "${Env.BACKEND_BASE_URL}$endPoint",
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }

  Future<Response> post(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    var response = await _dio.post(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: headers,
      ),
    );
    return response;
  }

  Future<Response> delete(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    var response = await _dio.delete(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: headers,
      ),
    );
    return response;
  }
}
