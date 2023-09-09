import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/color_manager.dart';

class OTPInput extends StatefulWidget {
  const OTPInput({super.key});

  @override
  OTPInputState createState() => OTPInputState();
}

class OTPInputState extends State<OTPInput> {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController(text: ''));

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          width: 40.w,
          height: 40.h,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: ColorManager.green,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: const InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 5) {
                  FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                } else {
                  // Last digit reached, you can perform validation or submit the OTP
                }
              }
            },
          ),
        );
      }),
    );
  }
}
