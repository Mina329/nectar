import 'package:dartz/dartz.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:nectar/core/errors/failure.dart';

import '../../../../main.dart';
import 'auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<FirebaseAuthFailure, UserCredential>> emailSignUp(
      String signUpEmail, String signUpPassword) async {
    try {
      final userCredential = await firebase.createUserWithEmailAndPassword(
        email: signUpEmail,
        password: signUpPassword,
      );
      return right(userCredential);
    } on FirebaseAuthException catch (e) {
      return left(
        FirebaseAuthFailure.fromAuthException(
          e,
        ),
      );
    }
  }
}
