import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<GoogleSignInFailure, GoogleSignInAccount>> login();
  Future<Either<GoogleSignInFailure, GoogleSignInAccount?>> logout();
}
