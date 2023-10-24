import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/auth/presentation/view%20model/phone_auth_cubit/phone_auth_cubit.dart';

import '../../../../../../core/cache/cache_helper.dart';
import '../../../../../../core/cache/cache_keys_values.dart';
import '../../../../../../main.dart';

class OTPInput extends StatefulWidget {
  const OTPInput({super.key});

  @override
  OTPInputState createState() => OTPInputState();
}

class OTPInputState extends State<OTPInput>
    with SingleTickerProviderStateMixin {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  late List<TextEditingController> _controllers;
  late AnimationController shakeController;
  late Animation<double> shakeAnimation;
  bool color = true;
  @override
  void initState() {
    super.initState();
    _controllers = List.generate(6, (index) => TextEditingController(text: ''));
    shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    shakeAnimation = Tween(begin: 0.0, end: 10.0).animate(shakeController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          shakeController.reverse();
        }
      });
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    shakeController.dispose();
    super.dispose();
  }

  void shakeForm() {
    shakeController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return AnimatedBuilder(
          animation: shakeController,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, shakeAnimation.value),
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: color ? Colors.green : Colors.red,
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
                  onChanged: (value) async {
                    if (value.isNotEmpty) {
                      if (index < 5) {
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index + 1]);
                      } else {
                        String code = '';
                        for (var controller in _controllers) {
                          code += controller.text;
                        }

                        if (BlocProvider.of<PhoneAuthCubit>(context)
                            .verifyCode(code)) {
                          await CacheData.setData(
                              key: CacheKeys.kSIGNED, value: testToken);
                          if (context.mounted) {
                            GoRouter.of(context)
                                .go(AppRouter.kHomeView, extra: 0); 
                          }
                        } else {
                          shakeForm();
                          setState(() {
                            color = false;
                          });
                          Fluttertoast.showToast(msg: 'Invalid Code');
                        }
                      }
                    } else {
                      if (index > 0) {
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index - 1]);
                      }
                    }
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
