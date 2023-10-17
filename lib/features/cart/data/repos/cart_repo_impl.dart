import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nectar/core/cache/cache_helper.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';
import 'package:nectar/features/cart/data/models/cart_model/cart_model.dart';
import 'package:nectar/features/cart/data/models/checkout_model/checkout_model.dart';

import '../../../../core/cache/cache_keys_values.dart';
import 'cart_repo.dart';

class CartRepoImpl extends CartRepo {
  final ApiService _apiService;

  CartRepoImpl(this._apiService);
  @override
  Future<Either<Failure, CartModel>> fetchCart() async {
    try {
      var data = await _apiService.get(
          endPoint:
              'api/v1/profile/carts/${CacheData.getData(key: CacheKeys.kCARTID)}?');
      return right(
        CartModel.fromJson(
          data['data'],
        ),
      );
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
  Future<Either<Failure, Response>> addItemsToCart(
      {required String itemId, required int quantity}) async {
    try {
      Map<String, dynamic> requestData = {
        "itemId": itemId,
        "qty": quantity,
      };
      var data = await _apiService.post(
        endPoint:
            'api/v1/profile/carts/${CacheData.getData(key: CacheKeys.kCARTID)}/items',
        requestData: requestData,
      );
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
  Future<Either<Failure, Response>> updateItemsToCart(
      {required String itemId, required int quantity}) async {
    try {
      Map<String, dynamic> requestData = {
        "qty": quantity,
      };
      var data = await _apiService.patch(
        endPoint:
            'api/v1/profile/carts/${CacheData.getData(key: CacheKeys.kCARTID)}/items/$itemId',
        requestData: requestData,
      );
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
  Future<Either<Failure, Response>> deleteItemFromCart(
      {required String itemId}) async {
    try {
      var data = await _apiService.delete(
        endPoint:
            'api/v1/profile/carts/${CacheData.getData(key: CacheKeys.kCARTID)}/items/$itemId',
        requestData: {},
      );
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
  Future<Either<Failure, CheckoutModel>> checkoutCart() async {
    try {
      var data = await _apiService.post(
        endPoint:
            'api/v1/profile/carts/${CacheData.getData(key: CacheKeys.kCARTID)}/checkout',
        requestData: {},
      );
      return right(
        CheckoutModel.fromJson(
          data.data['data'],
        ),
      );
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
}
