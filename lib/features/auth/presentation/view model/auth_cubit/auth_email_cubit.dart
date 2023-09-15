import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/auth_repo.dart';
part 'auth_email_state.dart';

class AuthEmailCubit extends Cubit<AuthEmailState> {
  AuthEmailCubit(this.authRepo) : super(AuthEmailInitial());
  String signUpEmail = '';
  String signUpPassword = '';
  String signUpFirstName = '';
  String signUpLastName = '';
  final AuthRepo authRepo;
  Future<void> signUp() async {
    emit(SignUpLoading());
    var result = await authRepo.emailSignUp(signUpEmail, signUpPassword);
    result.fold(
      (failure) => emit(
        SignUpFailure(
          failure.errMessage,
        ),
      ),
      (userCredential) => emit(
        SignUpSuccess(
          userCredential,
        ),
      ),
    );
  }
}
