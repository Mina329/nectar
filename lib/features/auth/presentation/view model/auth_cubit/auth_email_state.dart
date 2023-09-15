part of 'auth_email_cubit.dart';

sealed class AuthEmailState extends Equatable {
  const AuthEmailState();

  @override
  List<Object> get props => [];
}

final class AuthEmailInitial extends AuthEmailState {}

final class SignUpLoading extends AuthEmailState {}

final class SignUpSuccess extends AuthEmailState {
  final UserCredential userCredential;

  const SignUpSuccess(this.userCredential);
}

final class SignUpFailure extends AuthEmailState {
  final String errorMessage;

  const SignUpFailure(this.errorMessage);
}
