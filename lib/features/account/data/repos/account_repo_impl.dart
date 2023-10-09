import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';

import 'package:nectar/features/account/data/models/account_model/account_model.dart';

import 'account_repo.dart';

class AccountRepoImpl extends AccountRepo {
  final ApiService _apiService;

  AccountRepoImpl(this._apiService);
  @override
  Future<Either<Failure, AccountModel>> fetchUserProfile() async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/profile?');
      return right(
        AccountModel.fromJson(
          data['data'],
        ),
      );
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(
            e,
          ),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
