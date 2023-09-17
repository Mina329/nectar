import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      (account) => emit(
        GoogleLogInAuthSuccess(
          account,
        ),
      ),
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
