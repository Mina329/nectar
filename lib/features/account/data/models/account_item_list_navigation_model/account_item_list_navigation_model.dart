import 'package:nectar/features/account/data/models/account_model/account_model/account_model.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';

class AccountItemListNavigationModel {
  final AccountInfoCubit bloc;
  final AccountModel account;

  AccountItemListNavigationModel(this.bloc, this.account);
}
