part of 'email_auth_cubit.dart';

sealed class EmailAuthState extends Equatable {
  const EmailAuthState();

  @override
  List<Object> get props => [];
}

final class EmailAuthInitial extends EmailAuthState {}

final class EmailSignUpLoading extends EmailAuthState {}

final class EmailSignUpSuccess extends EmailAuthState {
  final UserCredential userCredential;

  const EmailSignUpSuccess(this.userCredential);
}

final class EmailSignUpFailure extends EmailAuthState {
  final String errorMessage;

  const EmailSignUpFailure(this.errorMessage);
}

final class EmailLoginLoading extends EmailAuthState {}

final class EmailLoginFailure extends EmailAuthState {
  final String errorMessage;

  const EmailLoginFailure(this.errorMessage);
}

final class EmailLoginSuccess extends EmailAuthState {
  final UserCredential userCredential;

  const EmailLoginSuccess(this.userCredential);
}
