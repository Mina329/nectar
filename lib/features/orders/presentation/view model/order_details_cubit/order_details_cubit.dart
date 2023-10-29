import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/order_details_model/order_details_model.dart';
import '../../../data/repos/order_repo.dart';

part 'order_details_state.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  OrderDetailsCubit(this._orderRepo) : super(OrderDetailsInitial());
  final OrderRepo _orderRepo;
  Future<void> getOrderDetails(String id) async {
    emit(OrderDetailsLoading());
    var result = await _orderRepo.fetchOrderDetails(id: id);
    result.fold(
      (failure) => emit(
        OrderDetailsFailure(
          failure.errMessage,
        ),
      ),
      (orderDetailsModel) => emit(
        OrderDetailsSuccess(
          orderDetailsModel,
        ),
      ),
    );
  }
}
