import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';

abstract class MyDetailsRepo {
  Future<Either<Failure, Response>> patchUpdateAccountInfo(
      String? firstName, String? lastName, String? dateOfBirth);
  Future<Either<Failure, Response>> postUpdateProfilePicture(File image);
}
