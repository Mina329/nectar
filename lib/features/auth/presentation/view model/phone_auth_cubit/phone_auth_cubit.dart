import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:nectar/core/utils/env.dart';
import 'package:nectar/core/utils/strings_manager.dart';
import 'dart:math';

import 'package:twilio_flutter/twilio_flutter.dart';

import '../../../data/repos/auth_repo.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  PhoneAuthCubit(this._authRepo) : super(PhoneAuthInitial());
  String code = '';
  late TwilioFlutter twilioFlutter;
  late String savedPhoneNumber;
  final AuthRepo _authRepo;
  void init() {
    twilioFlutter = TwilioFlutter(
      accountSid: Env.TWILIO_SID,
      authToken: Env.TWILIO_TOKEN,
      twilioNumber: Env.TWILIO_PHONE_NUMBER,
    );
    for (int i = 0; i < 6; i++) {
      code += Random().nextInt(10).toString();
    }
  }

  void sendOTP(String phoneNumber) async {
    savedPhoneNumber = phoneNumber;
    emit(SendOTPLoading());
    try {
      int statusCode = await twilioFlutter.sendSMS(
        toNumber: phoneNumber,
        messageBody: code,
      );
      if (statusCode == 201) {
        emit(SendOTPSuccess());
      } else {
        emit(
          SendOTPFailure(
            StringsManager.somethingWrong.tr(),
          ),
        );
      }
    } catch (e) {
      emit(
        SendOTPFailure(
          StringsManager.somethingWrong.tr(),
        ),
      );
    }
  }

  void resend() async {
    try {
      await twilioFlutter.sendSMS(
        toNumber: savedPhoneNumber,
        messageBody: code,
      );
    } catch (e) {}
  }

  Future<void> verifyCode(String smsCode) async {
    emit(VerifyOTPLoading());
    if (smsCode == code) {
      var data = await _authRepo.addPhoneNumber(phoneNumber: savedPhoneNumber);
      return data.fold(
        (l) => emit(
          VerifyOTPFailure(
            StringsManager.somethingWrong.tr(),
          ),
        ),
        (r) => emit(
          VerifyOTPSuccess(),
        ),
      );
    } else {
      return emit(
        SendOTPFailure(
          StringsManager.invalidData.tr(),
        ),
      );
    }
  }
}
