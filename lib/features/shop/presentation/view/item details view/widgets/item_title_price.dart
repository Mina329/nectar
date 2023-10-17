import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_rounded_square_widget.dart';
import 'package:nectar/features/shop/presentation/view%20model/favourite_cubit/favourite_cubit.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_toast_widget.dart';

class ItemTitlePrice extends StatefulWidget {
  const ItemTitlePrice({
    Key? key,
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.offerPrice,
    required this.favourite,
    required this.category,
    required this.onCounterChanged,
  }) : super(key: key);
  final ValueChanged<int> onCounterChanged;
  final String? id;
  final String? name;
  final String? quantity;
  final double? price;
  final double? offerPrice;
  final bool? favourite;
  final String? category;
  @override
  State<ItemTitlePrice> createState() => _ItemTitlePriceState();
}

class _ItemTitlePriceState extends State<ItemTitlePrice> {
  late bool isHighlighted;
  late bool favourite;
  int counter = 1;
  @override
  void initState() {
    super.initState();
    isHighlighted = true;
    favourite = widget.favourite!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300.w,
              child: Row(
                children: [
                  Text(
                    widget.name ?? StringsManager.unavailable,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontFamily: AssetsManager.gilroyBold,
                        fontWeight: FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  if (widget.category != null)
                    SizedBox(
                      width: 10.w,
                    ),
                  if (widget.category != null)
                    Container(
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: ColorManager.green.withOpacity(0.7),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        child: Center(
                          child: Text(
                            widget.category!,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  fontSize: 16.sp,
                                ),
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
            BlocListener<FavouriteCubit, FavouriteState>(
              listener: (context, state) {
                if (state is AddFavouriteFailure) {
                  CustomToastWidget.buildCustomToast(
                      context, state.errMessage, ToastType.failure, 150.h);
                } else if (state is AddFavouriteSuccess) {
                  CustomToastWidget.buildCustomToast(
                      context, state.succeesMessage, ToastType.success, 150.h);

                  setState(() {
                    favourite = true;
                  });
                } else if (state is RemoveFavouriteFailure) {
                  CustomToastWidget.buildCustomToast(
                      context, state.errMessage, ToastType.failure, 150.h);
                } else if (state is RemoveFavouriteSuccess) {
                  CustomToastWidget.buildCustomToast(
                      context, state.succeesMessage, ToastType.success, 150.h);

                  setState(() {
                    favourite = false;
                  });
                }
              },
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onHighlightChanged: (value) {
                  setState(() {
                    isHighlighted = !isHighlighted;
                  });
                },
                onTap: () {
                  if (favourite) {
                    BlocProvider.of<FavouriteCubit>(context)
                        .removeFavouriteItem(widget.id!);
                  } else {
                    BlocProvider.of<FavouriteCubit>(context)
                        .addFavouriteItem(widget.id!);
                  }
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                  height: isHighlighted ? 50.h : 45.h,
                  width: isHighlighted ? 50.w : 45.w,
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 20,
                        offset: const Offset(5, 10),
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: favourite
                      ? Icon(
                          Icons.favorite,
                          color: Colors.pink.withOpacity(1.0),
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.black.withOpacity(0.6),
                        ),
                ),
              ),
            ),
          ],
        ),
        Text(
          widget.quantity ?? StringsManager.unavailable,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 16.sp,
              ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 1) {
                        counter--;
                        widget.onCounterChanged(counter);
                      }
                    });
                  },
                  icon: Icon(
                    FontAwesomeIcons.minus,
                    color: Theme.of(context).brightness == Brightness.light
                        ? ColorManager.greySmall
                        : ColorManager.grayOpacity,
                  ),
                ),
                CustomRoundedSquareWidget(
                  onTap: null,
                  child: Center(
                    child: Text(
                      "$counter",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      widget.onCounterChanged(counter);
                    });
                  },
                  icon: Icon(
                    FontAwesomeIcons.plus,
                    color: Theme.of(context).brightness == Brightness.light
                        ? ColorManager.green
                        : ColorManager.grayOpacity,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                if (widget.offerPrice != 0)
                  Text(
                    "${widget.offerPrice} ${StringsManager.currency.tr()}",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontFamily: AssetsManager.gilroyBold,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                Text(
                  "${widget.price ?? 0} ${StringsManager.currency.tr()}",
                  textAlign: TextAlign.end,
                  style: widget.offerPrice == 0
                      ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontFamily: AssetsManager.gilroyBold,
                            fontWeight: FontWeight.w800,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontFamily: AssetsManager.gilroyBold,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16.sp,
                          ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
