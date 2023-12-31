import 'package:dio/dio.dart';
import '../cache/cache_helper.dart';
import '../cache/cache_keys_values.dart';
import 'env.dart';

class ApiService {
  final Dio _dio;
  late Map<String, dynamic> headers;
  ApiService(this._dio);
  Future<void> initializeHeaders() async {
    headers = {
      'Authorization':
          "Bearer ${await CacheData.getSecuredData(key: CacheKeys.kOAUTHTOKEN)}",
      'Accept-language':
          CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
              ? "ar"
              : "en",
    };
  }

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

  Future<Map<String, dynamic>> get(
      {required String endPoint, String? lang}) async {
    await initializeHeaders();
    var response = await _dio.get(
      "${Env.BACKEND_BASE_URL}${endPoint}lang=${lang ?? (CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC ? "ar" : "en")}",
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }

  Future<Response> post(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    await initializeHeaders();
    var response = await _dio.post(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: headers,
      ),
    );
    return response;
  }

  Future<Response> postImg(
      {required String endPoint, required FormData requestData}) async {
    await initializeHeaders();
    var response = await _dio.post(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: {
          ...headers,
          'accept': '*/*',
          'Content-Type': 'multipart/form-data',
        },
      ),
    );
    return response;
  }

  Future<Response> delete(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    await initializeHeaders();
    var response = await _dio.delete(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: headers,
      ),
    );
    return response;
  }

  Future<Response> patch(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    await initializeHeaders();
    var response = await _dio.patch(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
      options: Options(
        headers: headers,
      ),
    );
    return response;
  }

  Future<Response> postAuth(
      {required String endPoint,
      required Map<String, dynamic> requestData}) async {
    var response = await _dio.post(
      "${Env.BACKEND_BASE_URL}$endPoint",
      data: requestData,
    );
    return response;
  }
}
