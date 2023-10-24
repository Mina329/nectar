import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../core/utils/env.dart';
import 'auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  static final _googleSignIn = GoogleSignIn(
    forceCodeForRefreshToken: true,
    // clientId: Env.CLIENT_ID,
    // serverClientId: Env.SERVER_ID
  );

  @override
  Future<Either<GoogleSignInFailure, GoogleSignInAccount>> login() async {
    try {
      var result = await _googleSignIn.signIn();
      if (result == null) {
        return left(GoogleSignInFailure(StringsManager.somethingWrong.tr()));
      } else {
        return right(result);
      }
    } catch (e) {
      log(e.toString());
      log(Env.CLIENT_ID);
      log(Env.SERVER_ID);
      return left(GoogleSignInFailure(StringsManager.somethingWrong.tr()));
    }
  }

  @override
  Future<Either<GoogleSignInFailure, GoogleSignInAccount?>> logout() async {
    try {
      var result = await _googleSignIn.disconnect();

      return right(result);
    } catch (e) {
      return left(GoogleSignInFailure(StringsManager.somethingWrong.tr()));
    }
  }
}
