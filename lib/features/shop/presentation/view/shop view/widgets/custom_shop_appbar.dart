import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/shop/presentation/view%20model/city_country_cubit/city_country_cubit.dart';
import 'package:shimmer/shimmer.dart';

class CustomShopAppBar extends StatelessWidget {
  const CustomShopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          SvgPicture.asset(
            Theme.of(context).brightness == Brightness.light
                ? AssetsManager.carrotImgLIGHT
                : AssetsManager.carrotImgDARK,
            height: 31.h,
            width: 27.w,
          ),
          SizedBox(
            height: 7.h,
          ),
          BlocBuilder<CityCountryCubit, CityCountryState>(
            builder: (context, state) {
              if (state is CityCountryLoading) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[400]!,
                  highlightColor: Colors.grey[200]!,
                  child: Container(
                    width: 100.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                );
              } else if (state is CityCountryFailure) {
                Fluttertoast.showToast(msg: state.errMessage);
                return Container();
              } else if (state is CityCountrySuccess) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      size: 24.sp,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                        "${state.placemark.results == null ? '' : state.placemark.results?[0].components == null ? '' : state.placemark.results?[0].components?.city ?? ''}, ${state.placemark.results == null ? '' : state.placemark.results?[0].components == null ? '' : state.placemark.results?[0].components?.country ?? ''}",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                );
              }
              return Container();
            },
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
