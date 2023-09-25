import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class LocationServiceFailure extends Failure {
  LocationServiceFailure(super.errMessage);
}

class GoogleSignInFailure extends Failure {
  GoogleSignInFailure(super.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Server Certificate");
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!);
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure("Opps There was an Error, Please try again");
    }
    return ServerFailure("Opps There was an Error, Please try again");
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
