import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<FirebaseAuthFailure, UserCredential>> emailSignUp(
      String signUpEmail, String signUpPassword);
}
