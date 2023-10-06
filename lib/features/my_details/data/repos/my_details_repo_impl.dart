import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:nectar/core/errors/failure.dart';
import '../../../../core/utils/api_service.dart';
import 'my_details_repo.dart';

class MyDetailsRepoImpl extends MyDetailsRepo {
  final ApiService _apiService;

  MyDetailsRepoImpl(this._apiService);
  @override
  Future<Either<Failure, Response>> patchUpdateAccountInfo(
      String? firstName, String? lastName, String? dateOfBirth) async {
    try {
      Map<String, dynamic> requestData = {
        "firstName": firstName,
        "lastName": lastName,
        "dayOfBirth": dateOfBirth
      };
      var data = await _apiService.patch(
          endPoint: "api/v1/profile", requestData: requestData);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure(
            e.response!.data['message'],
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

  @override
  Future<Either<Failure, Response>> postUpdateProfilePicture(File image) async {
    try {
      String fileExtension = path.extension(image.path);
      FormData requestData = FormData.fromMap(
        {
          'picture': await MultipartFile.fromFile(
            image.path,
            filename: 'my_image$fileExtension',
          ),
        },
      );
      var data = await _apiService.postImg(
          endPoint: "api/v1/profile/picture", requestData: requestData);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(
          ServerFailure(
            e.toString(),
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
