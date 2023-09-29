import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'package:nectar/core/widgets/custom_rounded_square_widget.dart';

import '../../../../../../core/utils/assets_manager.dart';
import '../../../../../../core/utils/color_manager.dart';

class ItemTitlePrice extends StatefulWidget {
  const ItemTitlePrice({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.favourite,
    this.offerPrice,
  });
  final String? name;
  final String? quantity;
  final double? price;
  final double? offerPrice;
  final bool? favourite;

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
              child: Text(
                widget.name ?? StringsManager.unavailable,
                maxLines: 3,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontFamily: AssetsManager.gilroyBold,
                    fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onHighlightChanged: (value) {
                setState(() {
                  isHighlighted = !isHighlighted;
                });
              },
              onTap: () {
                setState(() {
                  favourite = !favourite;
                });
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
                if (widget.offerPrice != null)
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
                  style: widget.offerPrice == null
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
