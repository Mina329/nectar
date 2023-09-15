import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/auth_repo.dart';
part 'email_auth_state.dart';

class EmailAuthCubit extends Cubit<EmailAuthState> {
  EmailAuthCubit(this.authRepo) : super(EmailAuthInitial());
  String signUpEmail = '';
  String signUpPassword = '';
  String signUpFirstName = '';
  String signUpLastName = '';
  String loginEmail = '';
  String loginPassword = '';
  final AuthRepo authRepo;
  Future<void> signUp() async {
    emit(EmailSignUpLoading());
    var result = await authRepo.emailSignUp(signUpEmail, signUpPassword);
    result.fold(
      (failure) => emit(
        EmailSignUpFailure(
          failure.errMessage,
        ),
      ),
      (userCredential) => emit(
        EmailSignUpSuccess(
          userCredential,
        ),
      ),
    );
  }

  Future<void> logIn() async {
    emit(EmailLoginLoading());
    var result = await authRepo.emailLogIn(loginEmail, loginPassword);
    result.fold(
      (failure) => emit(
        EmailLoginFailure(
          failure.errMessage,
        ),
      ),
      (userCredential) => emit(
        EmailLoginSuccess(
          userCredential,
        ),
      ),
    );
  }
}
