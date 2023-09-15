import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

enum FirebaseAuthCodes { emailInUse, invalidEmail, weakPassword, other }

class LocationServiceFailure extends Failure {
  LocationServiceFailure(super.errMessage);
}

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure(super.errMessage);
  factory FirebaseAuthFailure.fromAuthException(
      FirebaseAuthException firebaseAuthException) {
    return FirebaseAuthFailure(
        firebaseAuthException.message ?? firebaseAuthException.code);
  }
}
