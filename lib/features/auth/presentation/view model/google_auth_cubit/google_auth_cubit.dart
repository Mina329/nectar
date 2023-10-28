import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/cache/cache_helper.dart';
import '../../../../../core/cache/cache_keys_values.dart';
import '../../../data/models/oauth_model/oauth_model.dart';
import '../../../data/repos/auth_repo.dart';

part 'google_auth_state.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  GoogleAuthCubit(this.authRepo) : super(GoogleAuthInitial());
  final AuthRepo authRepo;
  Future<void> logIn() async {
    emit(GoogleLogInAuthLoading());
    var result = await authRepo.login();
    result.fold(
      (failure) => emit(
        GoogleLogInAuthFailure(
          failure.errMessage,
        ),
      ),
      (user) async {
        await CacheData.setSecuredData(
            key: CacheKeys.kOAUTHTOKEN, value: user.token!);
        return emit(
          GoogleLogInAuthSuccess(
            user,
          ),
        );
      },
    );
  }

  Future<void> logOut() async {
    emit(GoogleLogOutAuthLoading());
    var result = await authRepo.logout();
    result.fold(
      (failure) => emit(
        GoogleLogOutAuthFailure(
          failure.errMessage,
        ),
      ),
      (account) => emit(
        GoogleLogOutAuthSuccess(
          account,
        ),
      ),
    );
  }
}
