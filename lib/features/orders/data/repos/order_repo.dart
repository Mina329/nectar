import 'package:dartz/dartz.dart';
import 'package:nectar/features/orders/data/models/all_orders_model/all_orders_model.dart';

import '../../../../core/errors/failure.dart';
import '../models/order_details_model/order_details_model.dart';

abstract class OrderRepo {
  Future<Either<Failure, List<AllOrdersModel>>> fetchAllOrders();
  Future<Either<Failure, OrderDetailsModel>> fetchOrderDetails(
      {required String id});
}
