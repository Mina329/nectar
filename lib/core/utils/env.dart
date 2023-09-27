import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String GEOCODING_API_KEY = dotenv.env['GEOCODING_API_KEY']!;
  static String GEOSEARCH_AUTO_SUGGESTION_API_KEY =
      dotenv.env['GEOSEARCH_AUTO_SUGGESTION_API_KEY']!;
  static String GEOCODING_URL = dotenv.env['GEOCODING_URL']!;
  static String GEOSEARCH_AUTO_SUGGESTION_URL =
      dotenv.env['GEOSEARCH_AUTO_SUGGESTION_URL']!;
  static String BACKEND_BASE_URL = dotenv.env['BACKEND_BASE_URL']!;
}
