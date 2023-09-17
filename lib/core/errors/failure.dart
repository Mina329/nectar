
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
