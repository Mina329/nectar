import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/strings_manager.dart';

class GovernoratesDropdown extends StatefulWidget {
  final bool isEnglish;

  const GovernoratesDropdown({super.key, required this.isEnglish});

  @override
  GovernoratesDropdownState createState() => GovernoratesDropdownState();
}

class GovernoratesDropdownState extends State<GovernoratesDropdown> {
  Map<String, Map<String, String>> governorates = {
    'Cairo': {'arabic': 'القاهرة', 'english': 'Cairo'},
    'Alexandria': {'arabic': 'الإسكندرية', 'english': 'Alexandria'},
    'Giza': {'arabic': 'الجيزة', 'english': 'Giza'},
    'Sharqia': {'arabic': 'الشرقية', 'english': 'Sharqia'},
    'Qalyubia': {'arabic': 'القليوبية', 'english': 'Qalyubia'},
    'Ismailia': {'arabic': 'الإسماعيلية', 'english': 'Ismailia'},
    'Dakahlia': {'arabic': 'الدقهلية', 'english': 'Dakahlia'},
    'Kafr El-Sheikh': {'arabic': 'كفر الشيخ', 'english': 'Kafr El-Sheikh'},
    'Damietta': {'arabic': 'دمياط', 'english': 'Damietta'},
    'Beheira': {'arabic': 'البحيرة', 'english': 'Beheira'},
    'Monufia': {'arabic': 'المنوفية', 'english': 'Monufia'},
    'Port Said': {'arabic': 'بورسعيد', 'english': 'Port Said'},
    'Suez': {'arabic': 'السويس', 'english': 'Suez'},
    'Fayoum': {'arabic': 'الفيوم', 'english': 'Fayoum'},
    'Beni Suef': {'arabic': 'بني سويف', 'english': 'Beni Suef'},
    'Minya': {'arabic': 'المنيا', 'english': 'Minya'},
    'Assiut': {'arabic': 'أسيوط', 'english': 'Assiut'},
    'Sohag': {'arabic': 'سوهاج', 'english': 'Sohag'},
    'Qena': {'arabic': 'قنا', 'english': 'Qena'},
    'Luxor': {'arabic': 'الأقصر', 'english': 'Luxor'},
    'Aswan': {'arabic': 'أسوان', 'english': 'Aswan'},
    'New Valley': {'arabic': 'الوادي الجديد', 'english': 'New Valley'},
    'North Sinai': {'arabic': 'شمال سيناء', 'english': 'North Sinai'},
    'South Sinai': {'arabic': 'جنوب سيناء', 'english': 'South Sinai'},
    'Red Sea': {'arabic': 'البحر الأحمر', 'english': 'Red Sea'},
    'Matrouh': {'arabic': 'مطروح', 'english': 'Matrouh'},
  };

  String? selectedGovernorate = '';

  @override
  void initState() {
    super.initState();
    selectedGovernorate = null;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      borderRadius: BorderRadius.circular(15),
      menuMaxHeight: 300.h,
      hint: Text(
        StringsManager.chooseYourGovernorate.tr(),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16.sp),
      ),
      value: selectedGovernorate,
      onChanged: (value) {
        setState(() {
          selectedGovernorate = value!;
        });
      },
      items: governorates.keys.map((englishName) {
        final governorate = governorates[englishName]!;
        final displayName =
            widget.isEnglish ? governorate['english']! : governorate['arabic']!;
        return DropdownMenuItem<String>(
          value: englishName,
          child: Text(displayName),
        );
      }).toList(),
    );
  }
}
