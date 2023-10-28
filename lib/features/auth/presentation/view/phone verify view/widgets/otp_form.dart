import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_loading_indicator.dart';
import 'package:nectar/core/widgets/custom_toast_widget.dart';
import 'package:nectar/features/auth/presentation/view%20model/phone_auth_cubit/phone_auth_cubit.dart';

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
    return BlocListener<PhoneAuthCubit, PhoneAuthState>(
      listener: (context, state) {
        if (state is VerifyOTPLoading) {
          CustomLoadingIndicator.buildLoadingIndicator(context);
        } else if (state is VerifyOTPSuccess) {
          GoRouter.of(context).pop();
          GoRouter.of(context).go(AppRouter.kHomeView, extra: 0);
        } else if (state is VerifyOTPFailure) {
          shakeForm();
          setState(() {
            color = false;
          });
          CustomToastWidget.buildCustomToast(
              context, state.errMessage, ToastType.failure, 200.h);
        }
      },
      child: Row(
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
                          await BlocProvider.of<PhoneAuthCubit>(context)
                              .verifyCode(code);
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
      ),
    );
  }
}
