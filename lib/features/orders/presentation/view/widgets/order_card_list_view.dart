import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/features/orders/presentation/view%20model/orders_cubit/orders_cubit.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/service_locator.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../delivery_address/data/repos/delivery_address_repo.dart';
import '../../../data/repos/order_repo.dart';
import '../../view model/order_details_cubit/order_details_cubit.dart';
import 'order_card.dart';
import 'order_shimmer.dart';

class OrderCardListView extends StatelessWidget {
  const OrderCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        if (state is OrdersLoading) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const OrderShimmer(),
              ),
              childCount: 10,
            ),
          );
        } else if (state is OrdersSuccess) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => BlocProvider(
              create: (context) => OrderDetailsCubit(
                getIt.get<OrderRepo>(),
                getIt.get<DeliveryAddressRepo>(),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: OrderCard(
                  id: state.orders[index].id!,
                  date: state.orders[index].createdAt!,
                  totalPrice: state.orders[index].totalPrice!,
                ),
              ),
            ),
            childCount: state.orders.length,
          ));
        } else if (state is OrdersFailure) {
          CustomToastWidget.buildCustomToast(
              context, state.errMessage, ToastType.failure, 200.h);
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Center(
                child: SvgPicture.asset(
                  AssetsManager.error,
                  width: 300.w,
                  height: 500.h,
                ),
              ),
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
