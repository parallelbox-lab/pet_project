import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import 'package:owoeye_s_application1/presentation/payment_successful_screen/payment_successful_screen.dart';
import 'package:owoeye_s_application1/presentation/verifying_phone_number_popup_screen/verifying_phone_number_popup_screen.dart';
import 'package:owoeye_s_application1/presentation/phone_number_popup_successfully_verified_screen/phone_number_popup_successfully_verified_screen.dart';
import 'package:owoeye_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:owoeye_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:owoeye_s_application1/presentation/change_password_screen/change_password_screen.dart';
import 'package:owoeye_s_application1/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:owoeye_s_application1/presentation/home_screen_one_screen/home_screen_one_screen.dart';
import 'package:owoeye_s_application1/presentation/home_screen_two_screen/home_screen_two_screen.dart';
import 'package:owoeye_s_application1/presentation/filter_screen/filter_screen.dart';
import 'package:owoeye_s_application1/presentation/order_confirmation_one_screen/order_confirmation_one_screen.dart';
import 'package:owoeye_s_application1/presentation/order_confirmation_screen/order_confirmation_screen.dart';
import 'package:owoeye_s_application1/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:owoeye_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:owoeye_s_application1/presentation/cart_two_screen/cart_two_screen.dart';
import 'package:owoeye_s_application1/presentation/settings_one_screen/settings_one_screen.dart';
import 'package:owoeye_s_application1/presentation/settings_two_screen/settings_two_screen.dart';
import 'package:owoeye_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:owoeye_s_application1/presentation/edit_email_screen/edit_email_screen.dart';
import 'package:owoeye_s_application1/presentation/edit_email_two_screen/edit_email_two_screen.dart';
import 'package:owoeye_s_application1/presentation/edit_email_one_screen/edit_email_one_screen.dart';
import 'package:owoeye_s_application1/presentation/email_phone_number_screen/email_phone_number_screen.dart';
import 'package:owoeye_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:owoeye_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String paymentSuccessfulScreen = '/payment_successful_screen';

  static const String verifyingPhoneNumberPopupScreen =
      '/verifying_phone_number_popup_screen';

  static const String phoneNumberPopupSuccessfullyVerifiedScreen =
      '/phone_number_popup_successfully_verified_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String homeScreenOneScreen = '/home_screen_one_screen';

  static const String homeScreenTwoScreen = '/home_screen_two_screen';

  static const String filterScreen = '/filter_screen';

  static const String cartOnePage = '/cart_one_page';

  static const String orderConfirmationOneScreen =
      '/order_confirmation_one_screen';

  static const String orderConfirmationScreen = '/order_confirmation_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String cartScreen = '/cart_screen';

  static const String cartTwoScreen = '/cart_two_screen';

  static const String profilePage = '/profile_page';

  static const String settingsOneScreen = '/settings_one_screen';

  static const String settingsTwoScreen = '/settings_two_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String editEmailScreen = '/edit_email_screen';

  static const String editEmailTwoScreen = '/edit_email_two_screen';

  static const String editEmailOneScreen = '/edit_email_one_screen';

  static const String emailPhoneNumberScreen = '/email_phone_number_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreenOneScreen: OnboardingScreenOneScreen.builder,
        paymentSuccessfulScreen: PaymentSuccessfulScreen.builder,
        verifyingPhoneNumberPopupScreen:
            VerifyingPhoneNumberPopupScreen.builder,
        phoneNumberPopupSuccessfullyVerifiedScreen:
            PhoneNumberPopupSuccessfullyVerifiedScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        signUpScreen: SignUpScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        homeScreenOneScreen: HomeScreenOneScreen.builder,
        homeScreenTwoScreen: HomeScreenTwoScreen.builder,
        filterScreen: FilterScreen.builder,
        orderConfirmationOneScreen: OrderConfirmationOneScreen.builder,
        orderConfirmationScreen: OrderConfirmationScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        cartScreen: CartScreen.builder,
        cartTwoScreen: CartTwoScreen.builder,
        settingsOneScreen: SettingsOneScreen.builder,
        settingsTwoScreen: SettingsTwoScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        editEmailScreen: EditEmailScreen.builder,
        editEmailTwoScreen: EditEmailTwoScreen.builder,
        editEmailOneScreen: EditEmailOneScreen.builder,
        emailPhoneNumberScreen: EmailPhoneNumberScreen.builder,
        settingsScreen: SettingsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreenOneScreen.builder
      };
}
