import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/features/auth/data/models/oauth_model/oauth_model.dart';

import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/env.dart';
import 'auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  static final _googleSignIn =
      GoogleSignIn(clientId: Env.CLIENT_ID, serverClientId: Env.SERVER_ID);
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<Either<GoogleSignInFailure, OauthModel>> login() async {
    try {
      var result = await _googleSignIn.signIn();
      if (result == null) {
        return left(
          GoogleSignInFailure(
            StringsManager.somethingWrong.tr(),
          ),
        );
      } else {
        var tokenResult = await getOauth(serverAuthCode: result.serverAuthCode);
        return tokenResult.fold(
          (failure) {
            return left(
              GoogleSignInFailure(
                StringsManager.somethingWrong.tr(),
              ),
            );
          },
          (oauthModel) {
            return right(
              oauthModel,
            );
          },
        );
      }
    } catch (e) {
      return left(
        GoogleSignInFailure(
          StringsManager.somethingWrong.tr(),
        ),
      );
    }
  }

  @override
  Future<Either<GoogleSignInFailure, GoogleSignInAccount?>> logout() async {
    try {
      var result = await _googleSignIn.disconnect();

      return right(result);
    } catch (e) {
      return left(
        GoogleSignInFailure(
          StringsManager.somethingWrong.tr(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, OauthModel>> getOauth({String? serverAuthCode}) async {
    try {
      var data = await _apiService
          .postAuth(endPoint: 'api/v1/oauth/google', requestData: {
        "code": serverAuthCode,
        "mobile": true,
      });
      return right(
        OauthModel.fromJson(
          data.data['data'],
        ),
      );
    } catch (e) {
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Response>> addPhoneNumber(
      {required String phoneNumber}) async {
    try {
      var data = await _apiService.patch(
        endPoint: 'api/v1/profile',
        requestData: {"phoneNumber": phoneNumber},
      );
      return right(data);
    } catch (e) {
      return left(
        ServerFailure(
          StringsManager.somethingWrong.tr(),
        ),
      );
    }
  }
}
