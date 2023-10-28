import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';

class AddressConfirmationForm extends StatelessWidget {
  const AddressConfirmationForm(
      {super.key,
      required this.formKey,
      required this.streetName,
      required this.buildingNumber,
      required this.onSavedBuildingNumber,
      required this.onSavedAppartmentNumber,
      required this.onSavedFloor});
  final GlobalKey<FormState> formKey;
  final String streetName;
  final String buildingNumber;
  final Function(String?) onSavedBuildingNumber;
  final Function(String?) onSavedAppartmentNumber;
  final Function(String?) onSavedFloor;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  StringsManager.buildingNumber.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                initialValue: buildingNumber,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 14.sp),
                decoration: InputDecoration(
                  hintText: StringsManager.buildingNumber.tr(),
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
                    return StringsManager.invalidData.tr();
                  }
                  return null;
                },
                onSaved: onSavedBuildingNumber,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          StringsManager.appartmentNumber.tr(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 177.w,
                        child: TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontSize: 14.sp),
                          decoration: InputDecoration(
                            hintText: StringsManager.appartmentNumber.tr(),
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
                              return StringsManager.invalidData.tr();
                            }
                            return null;
                          },
                          onSaved: onSavedAppartmentNumber,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          StringsManager.floor.tr(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 177.w,
                        child: TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontSize: 14.sp),
                          decoration: InputDecoration(
                            hintText: StringsManager.floor.tr(),
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
                              return StringsManager.invalidData.tr();
                            }
                            return null;
                          },
                          onSaved: onSavedFloor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  StringsManager.street.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                initialValue: streetName,
                enabled: false,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 14.sp),
                decoration: InputDecoration(
                  hintText: StringsManager.street.tr(),
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
                    return StringsManager.invalidData.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
