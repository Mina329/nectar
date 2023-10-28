part of 'google_auth_cubit.dart';

sealed class GoogleAuthState extends Equatable {
  const GoogleAuthState();

  @override
  List<Object> get props => [];
}

final class GoogleAuthInitial extends GoogleAuthState {}

final class GoogleLogInAuthLoading extends GoogleAuthState {}

final class GoogleLogInAuthFailure extends GoogleAuthState {
  final String errMessage;

  const GoogleLogInAuthFailure(this.errMessage);
}

final class GoogleLogInAuthSuccess extends GoogleAuthState {
  final OauthModel user;

  const GoogleLogInAuthSuccess(this.user);
}

final class GoogleLogOutAuthLoading extends GoogleAuthState {}

final class GoogleLogOutAuthFailure extends GoogleAuthState {
  final String errMessage;

  const GoogleLogOutAuthFailure(this.errMessage);
}

final class GoogleLogOutAuthSuccess extends GoogleAuthState {
  final GoogleSignInAccount? account;

  const GoogleLogOutAuthSuccess(this.account);
}
