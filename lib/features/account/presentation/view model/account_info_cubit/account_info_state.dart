part of 'account_info_cubit.dart';

sealed class AccountInfoState extends Equatable {
  const AccountInfoState();

  @override
  List<Object> get props => [];
}

final class AccountInfoInitial extends AccountInfoState {}

final class AccountInfoLoading extends AccountInfoState {}

final class AccountInfoFailure extends AccountInfoState {
  final String errMessage;

  const AccountInfoFailure(this.errMessage);
}

final class AccountInfoSuccess extends AccountInfoState {
  final AccountModel account;

  const AccountInfoSuccess(this.account);
}
