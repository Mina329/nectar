import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/l10n/locales.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../../../core/utils/color_manager.dart';

class MyDetailsForm extends StatelessWidget {
  const MyDetailsForm({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final TextEditingController dateInputController = TextEditingController();

    late DateTime? selectedDate;
    return SliverToBoxAdapter(
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  StringsManager.email.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: StringsManager.email.tr(),
                  filled: true,
                  fillColor: Theme.of(context).hoverColor,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                initialValue: "minaemil329@gmail.com",
                enabled: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  StringsManager.phoneNumber.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: StringsManager.phoneNumber.tr(),
                  filled: true,
                  fillColor: Theme.of(context).hoverColor,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                initialValue: "01280080910",
                enabled: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  StringsManager.firstName.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: StringsManager.firstName.tr(),
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
                    return StringsManager.firstNameValidation.tr();
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  StringsManager.lastName.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: StringsManager.lastName.tr(),
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
                    return StringsManager.lastNameValidation.tr();
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  StringsManager.dateOfBirth.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                controller: dateInputController,
                decoration: InputDecoration(
                  hintText: StringsManager.dateOfBirth.tr(),
                  filled: true,
                  fillColor: Theme.of(context).hoverColor,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onTap: () async {
                  selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900, 1, 1),
                      lastDate: DateTime.now(),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: ColorManager.green,
                              onPrimary: Colors.black,
                              onSurface: Colors.green,
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor: ColorManager.green,
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      });
                  if (selectedDate != null) {
                    dateInputController.text = DateFormat('dd MMMM yyyy',
                            // ignore: use_build_context_synchronously
                            context.locale == ENGLISH_LOCALE ? "en" : "ar")
                        .format(selectedDate!);
                  }
                },
                readOnly: true,
                onSaved: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
