import 'package:flutter/material.dart';

import 'delivery_address_item.dart';

class DeliveryAddressListView extends StatelessWidget {
  const DeliveryAddressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => DeliveryAddressItem(
                onTap: () {},
              ),
          childCount: 15),
    );
  }
}
