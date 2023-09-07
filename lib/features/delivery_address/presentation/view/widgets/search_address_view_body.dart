import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'address_search_bar.dart';

class SearchAddressViewBody extends StatelessWidget {
  const SearchAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            AddressSearchBar(),
          ],
        ),
      ),
    );
  }
}
