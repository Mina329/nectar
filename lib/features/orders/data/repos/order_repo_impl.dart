import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nectar/core/errors/failure.dart';
import 'package:nectar/core/utils/api_service.dart';

import '../models/all_orders_model/all_orders_model.dart';
import '../models/order_details_model/order_details_model.dart';
import 'order_repo.dart';

class OrderRepoImpl extends OrderRepo {
  final ApiService _apiService;

  OrderRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<AllOrdersModel>>> fetchAllOrders() async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/profile/orders?');
      return right(
        List<AllOrdersModel>.from(
          data['data'].map(
            (x) => AllOrdersModel.fromJson(x),
          ),
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
  Future<Either<Failure, OrderDetailsModel>> fetchOrderDetails(
      {required String id}) async {
    try {
      var data = await _apiService.get(endPoint: 'api/v1/profile/orders/$id?',lang: 'en');
      return right(
        OrderDetailsModel.fromJson(data['data']),
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
