import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'color_manager.dart';

class StripeService {
  Future<void> initPayment(
      {required BuildContext context,
      required String clientSecret,
      required String publishableKey}) async {
    Stripe.publishableKey = publishableKey;
    await initPaymentSheet(context, clientSecret);
    await presentPaymentSheet();
  }

  Future<void> initPaymentSheet(
      BuildContext context, String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        appearance: PaymentSheetAppearance(
          colors: PaymentSheetAppearanceColors(
            icon: Theme.of(context).brightness == Brightness.light
                ? ColorManager.darkBluePrimary
                : ColorManager.whiteText,
            background: Theme.of(context).scaffoldBackgroundColor,
            componentBackground:
                Theme.of(context).brightness == Brightness.light
                    ? ColorManager.whiteBackground
                    : ColorManager.darkBluePrimary,
            componentBorder: ColorManager.borderColorDARK,
            componentDivider: ColorManager.borderColorDARK,
            componentText: Theme.of(context).brightness == Brightness.light
                ? ColorManager.darkBluePrimary
                : ColorManager.whiteText,
            primaryText: Theme.of(context).brightness == Brightness.light
                ? ColorManager.darkBluePrimary
                : ColorManager.whiteText,
            secondaryText: Theme.of(context).brightness == Brightness.light
                ? ColorManager.darkBluePrimary
                : ColorManager.whiteText,
            placeholderText: Theme.of(context).brightness == Brightness.light
                ? ColorManager.darkBluePrimary
                : ColorManager.whiteText,
          ),
          primaryButton: const PaymentSheetPrimaryButtonAppearance(
            colors: PaymentSheetPrimaryButtonTheme(
              light: PaymentSheetPrimaryButtonThemeColors(
                background: ColorManager.green,
              ),
              dark: PaymentSheetPrimaryButtonThemeColors(
                background: ColorManager.green,
              ),
            ),
          ),
        ),
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: 'Nectar',
      ),
    );
  }

  Future<void> presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }
}
