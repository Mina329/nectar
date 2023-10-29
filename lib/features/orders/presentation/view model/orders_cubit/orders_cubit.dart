
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/all_orders_model/all_orders_model.dart';
import '../../../data/repos/order_repo.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this._orderRepo) : super(OrdersInitial());
  final OrderRepo _orderRepo;
  Future<void> getAllOrders() async {
    emit(OrdersLoading());
    var result = await _orderRepo.fetchAllOrders();
    result.fold(
      (failure) => emit(
        OrdersFailure(
          failure.errMessage,
        ),
      ),
      (ordersList) {
        List<AllOrdersModel> orders = [];
        for (var order in ordersList) {
          if(order.status! == 'success'){
            orders.add(order);
          }
        }
        return emit(
          OrdersSuccess(
            orders,
          ),
        );
      },
    );
  }
}
