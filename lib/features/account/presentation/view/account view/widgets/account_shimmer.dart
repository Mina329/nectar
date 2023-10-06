import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/features/account/presentation/view/account%20view/widgets/profile_card_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class AccountShimmer extends StatelessWidget {
  const AccountShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[200]!,
      child: CustomScrollView(
        slivers: [
          const ProfileCardShimmer(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                          child: Center(
                              child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 20,
                          width: 150,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
