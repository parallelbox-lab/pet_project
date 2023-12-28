import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "ONBOARDING SCREEN One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment successful".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentSuccessfulScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VERIFYING PHONE NUMBER POPUP".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verifyingPhoneNumberPopupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "PHONE NUMBER POPUP SUCCESSFULLY VERIFIED".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .phoneNumberPopupSuccessfullyVerifiedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ONBOARDING SCREEN".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "SIGN UP".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "CHANGE PASSWORD".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.changePasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "HOME SCREEN - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "HOME SCREEN One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "HOME SCREEN Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FILTER".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ORDER CONFIRMATION One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderConfirmationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "ORDER CONFIRMATION".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.orderConfirmationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "CART".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "CART Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EDIT PROFILE".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EDIT EMAIL".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editEmailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EDIT EMAIL Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editEmailTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EDIT EMAIL One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.editEmailOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "EMAIL PHONE NUMBER".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.emailPhoneNumberScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
