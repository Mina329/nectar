part of 'phone_auth_cubit.dart';

sealed class PhoneAuthState extends Equatable {
  const PhoneAuthState();

  @override
  List<Object> get props => [];
}

final class PhoneAuthInitial extends PhoneAuthState {}

final class SendOTPLoading extends PhoneAuthState {}

final class SendOTPSuccess extends PhoneAuthState {}

final class SendOTPFailure extends PhoneAuthState {
  final String errMessage;

  const SendOTPFailure(this.errMessage);
}

final class VerifyOTPLoading extends PhoneAuthState {}

final class VerifyOTPSuccess extends PhoneAuthState {}

final class VerifyOTPFailure extends PhoneAuthState {
  final String errMessage;

  const VerifyOTPFailure(this.errMessage);
}
