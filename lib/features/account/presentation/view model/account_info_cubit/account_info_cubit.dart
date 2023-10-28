import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nectar/features/account/data/models/account_model/account_model.dart';

import '../../../data/repos/account_repo.dart';

part 'account_info_state.dart';

class AccountInfoCubit extends HydratedCubit<AccountInfoState> {
  AccountInfoCubit(this._accountRepo) : super(AccountInfoInitial());
  final AccountRepo _accountRepo;
  Future<void> getUserProfile() async {
    emit(AccountInfoLoading());
    var result = await _accountRepo.fetchUserProfile();
    result.fold(
      (failure) => emit(
        AccountInfoFailure(
          failure.errMessage,
        ),
      ),
      (account) => emit(
        AccountInfoSuccess(
          account,
        ),
      ),
    );
  }

  @override
  @override
  AccountInfoState? fromJson(Map<String, dynamic> json) {
    try {
      final accountModel = AccountModel.fromJson(json);
      return AccountInfoSuccess(accountModel);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AccountInfoState state) {
    if (state is AccountInfoSuccess) {
      return state.account.toJson();
    }
    return null;
  }
}
