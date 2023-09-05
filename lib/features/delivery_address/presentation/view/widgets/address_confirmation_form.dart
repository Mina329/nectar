import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressConfirmationForm extends StatelessWidget {
  const AddressConfirmationForm(
      {super.key, required this.formKey, required this.streetName});
  final GlobalKey<FormState> formKey;
  final String streetName;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SliverToBoxAdapter(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 14.sp),
                  decoration: InputDecoration(
                    hintText: "Building Number",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    filled: true,
                    fillColor: Theme.of(context).hoverColor,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Invalid data";
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 177.w,
                      child: TextFormField(
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontSize: 14.sp),
                        decoration: InputDecoration(
                          hintText: "Appartment number",
                          hintMaxLines: 1,
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          filled: true,
                          fillColor: Theme.of(context).hoverColor,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Invalid data";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: 177.w,
                      child: TextFormField(
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontSize: 14.sp),
                        decoration: InputDecoration(
                          hintText: "Floor",
                          hintMaxLines: 1,
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          filled: true,
                          fillColor: Theme.of(context).hoverColor,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Invalid data";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  initialValue: streetName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 14.sp),
                  decoration: InputDecoration(
                    hintText: "Street",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    filled: true,
                    fillColor: Theme.of(context).hoverColor,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Invalid data";
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
