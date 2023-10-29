import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/pdf_invoice.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';
import 'package:nectar/features/orders/presentation/view%20model/order_details_cubit/order_details_cubit.dart';

import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_elevated_btn.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(
      {super.key,
      required this.date,
      required this.totalPrice,
      required this.id});
  final DateTime date;
  final double totalPrice;
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderDetailsCubit, OrderDetailsState>(
      listener: (context, state) async {
        if (state is OrderDetailsLoading) {
          CustomLoadingIndicator.buildLoadingIndicator(context);
        } else if (state is OrderDetailsSuccess) {
          GoRouter.of(context).pop();

          final pdfFile = await PdfInvoice.generate(state.orderDetails);
          log(pdfFile.path);

          await PdfApi.openFile(pdfFile);
        } else if (state is OrderDetailsFailure) {
          GoRouter.of(context).pop();
          log('failure');
        }
      },
      child: Container(
          height: 200.h,
          decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      "${StringsManager.createdAt.tr()} : ",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        "${date.day}/${date.month}/${date.year}",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${StringsManager.totalPrice.tr()} : ",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "$totalPrice ${StringsManager.currency.tr()}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                  child: CustomElevatedBtn(
                    onPressed: () {
                      BlocProvider.of<OrderDetailsCubit>(context)
                          .getOrderDetails(id);
                    },
                    txt: StringsManager.downloadReceipt.tr(),
                    style: Theme.of(context).textTheme.labelLarge!,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
