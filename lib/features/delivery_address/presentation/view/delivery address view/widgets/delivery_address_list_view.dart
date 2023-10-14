import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/color_manager.dart';
import 'package:nectar/features/delivery_address/presentation/view_model/delivery_address_cubit/delivery_address_cubit.dart';
import '../../../../../../core/utils/strings_manager.dart';
import '../../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';
import '../../../view_model/address_cubit/address_cubit.dart';
import 'delivery_address_item.dart';
import 'delivery_address_item_shimmer.dart';

class DeliveryAddressListView extends StatefulWidget {
  const DeliveryAddressListView({Key? key}) : super(key: key);

  @override
  DeliveryAddressListViewState createState() => DeliveryAddressListViewState();
}

class DeliveryAddressListViewState extends State<DeliveryAddressListView> {
  String? selectedAddressId;
  SlidableController? controller;
  String? temp;
  bool first = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeliveryAddressCubit, DeliveryAddressState>(
      builder: (context, state) {
        if (state is DeliveryAddressLoading) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const DeliveryAddressItemShimmer(),
              childCount: 10,
            ),
          );
        } else if (state is DeliveryAddressSuccess) {
          if (state.addresses.isEmpty) {
            return const SliverFillRemaining(
              child: CustomEmptyWidget(),
            );
          }
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final address = state.addresses[index];
                if (address.isDefault! && first) {
                  selectedAddressId = address.id;
                  first = false;
                }
                return BlocListener<AddressCubit, AddressState>(
                  listener: (context, state) {
                    if (state is AddressLoading) {
                    } else if (state is DeleteAddressFailure) {
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    } else if (state is DeleteAddressSuccess) {
                      controller?.dismiss(
                        curve: Curves.easeOut,
                        ResizeRequest(
                            const Duration(milliseconds: 200), () => {}),
                        duration: const Duration(milliseconds: 200),
                      );
                      BlocProvider.of<AccountInfoCubit>(context)
                          .getUserProfile();
                      CustomToastWidget.buildCustomToast(context,
                          state.successMessage, ToastType.success, 200.h);
                    } else if (state is DefaultAddressLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return const CustomLoadingIndicator();
                        },
                      );
                    } else if (state is DefaultAddressFailure) {
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    } else if (state is DefaultAddressSuccess) {
                      GoRouter.of(context).pop();
                      BlocProvider.of<AccountInfoCubit>(context)
                          .getUserProfile();
                      CustomToastWidget.buildCustomToast(context,
                          state.successMessage, ToastType.success, 200.h);
                      setState(() {
                        selectedAddressId = temp;
                      });
                    }
                  },
                  child: Slidable(
                    key: UniqueKey(),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.3,
                      children: [
                        SlidableAction(
                          autoClose: false,
                          onPressed: (context) {
                            controller = Slidable.of(context);
                            BlocProvider.of<AddressCubit>(context)
                                .deleteAddress(address.id!);
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete_forever,
                          label: StringsManager.delete.tr(),
                        ),
                      ],
                    ),
                    child: RadioListTile<String>(
                      contentPadding: const EdgeInsets.all(0),
                      fillColor: const MaterialStatePropertyAll(ColorManager.green),
                      title: DeliveryAddressItem(
                        address: address,
                      ),
                      value: address.id!,
                      groupValue: selectedAddressId,
                      onChanged: (String? newValue) {
                        temp = newValue;
                        BlocProvider.of<AddressCubit>(context)
                            .setDefaultAddress(newValue!);
                      },
                    ),
                  ),
                );
              },
              childCount: state.addresses.length,
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
