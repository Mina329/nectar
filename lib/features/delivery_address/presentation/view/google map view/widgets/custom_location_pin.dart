import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomLoactionPin extends StatelessWidget {
  const CustomLoactionPin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -15.0),
        child: Icon(
          FontAwesomeIcons.mapPin,
          size: 30.sp,
          color: Colors.red,
        ),
      ),
    );
  }
}