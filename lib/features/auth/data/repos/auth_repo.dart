import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar/core/errors/failure.dart';

import '../models/oauth_model/oauth_model.dart';

abstract class AuthRepo {
  Future<Either<GoogleSignInFailure, OauthModel>> login();
  Future<Either<GoogleSignInFailure, GoogleSignInAccount?>> logout();
  Future<Either<Failure, OauthModel>> getOauth({String? serverAuthCode});
  Future<Either<Failure,Response>> addPhoneNumber({required String phoneNumber});
}
