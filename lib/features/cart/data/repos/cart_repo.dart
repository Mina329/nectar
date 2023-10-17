import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../models/cart_model/cart_model.dart';
import '../models/checkout_model/checkout_model.dart';

abstract class CartRepo {
  Future<Either<Failure, CartModel>> fetchCart();
  Future<Either<Failure, Response>> addItemsToCart(
      {required String itemId, required int quantity});
  Future<Either<Failure, Response>> updateItemsToCart(
      {required String itemId, required int quantity});
  Future<Either<Failure, Response>> deleteItemFromCart(
      {required String itemId});
  Future<Either<Failure, CheckoutModel>> checkoutCart();
}
