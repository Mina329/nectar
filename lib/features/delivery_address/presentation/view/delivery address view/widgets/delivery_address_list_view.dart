import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import 'delivery_address_item.dart';
import 'delivery_address_item_shimmer.dart';

class DeliveryAddressListView extends StatelessWidget {
  const DeliveryAddressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
      builder: (context, state) {
        if (state is DeliveryAddressLoading) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => const DeliveryAddressItemShimmer(),
                childCount: 10),
          );
        } else if (state is DeliveryAddressSuccess) {
          if (state.addresses.isEmpty) {
            return const SliverFillRemaining(
              child: CustomEmptyWidget(),
            );
          }
          return SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => DeliveryAddressItem(
                        address: state.addresses[index],
                      ),
                  childCount: state.addresses.length));
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
