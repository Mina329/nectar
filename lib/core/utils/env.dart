import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String GEOCODING_API_KEY = dotenv.env['GEOCODING_API_KEY']!;
  static String GEOSEARCH_AUTO_SUGGESTION_API_KEY =
      dotenv.env['GEOSEARCH_AUTO_SUGGESTION_API_KEY']!;
  static String GEOCODING_URL = dotenv.env['GEOCODING_URL']!;
  static String GEOSEARCH_AUTO_SUGGESTION_URL =
      dotenv.env['GEOSEARCH_AUTO_SUGGESTION_URL']!;
  static String BACKEND_BASE_URL = dotenv.env['BACKEND_BASE_URL']!;
  static String CLIENT_ID = dotenv.env['CLIENT_ID']!;
  static String SERVER_ID = dotenv.env['SERVER_ID']!;
  static String TWILIO_SID = dotenv.env['TWILIO_SID']!;
  static String TWILIO_TOKEN = dotenv.env['TWILIO_TOKEN']!;
  static String TWILIO_TEST_TOKEN = dotenv.env['TWILIO_TEST_TOKEN']!;
  static String TWILIO_PHONE_NUMBER = dotenv.env['TWILIO_PHONE_NUMBER']!;
}
