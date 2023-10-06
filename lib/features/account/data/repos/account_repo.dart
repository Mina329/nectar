import 'package:dartz/dartz.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/features/account/data/models/account_model/account_model/account_model.dart';

abstract class AccountRepo{
  Future<Either<Failure,AccountModel>> fetchUserProfile();
}