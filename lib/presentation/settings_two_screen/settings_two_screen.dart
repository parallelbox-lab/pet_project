import 'bloc/settings_two_bloc.dart';
import 'models/settings_two_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/cart_one_page/cart_one_page.dart';
import 'package:owoeye_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:owoeye_s_application1/presentation/profile_page/profile_page.dart';
import 'package:owoeye_s_application1/widgets/custom_bottom_bar.dart';
import 'package:owoeye_s_application1/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsTwoScreen extends StatelessWidget {
  SettingsTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsTwoBloc>(
        create: (context) => SettingsTwoBloc(
            SettingsTwoState(settingsTwoModelObj: SettingsTwoModel()))
          ..add(SettingsTwoInitialEvent()),
        child: SettingsTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildSettingsTwo(context)))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSettingsTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 14.v,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 9.v, bottom: 12.v),
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Text("msg_notification_settings".tr,
                            style: theme.textTheme.headlineSmall)),
                    Spacer(),
                    Container(
                        height: 34.v,
                        width: 30.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 10.v),
                        decoration: AppDecoration.fillPrimary2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 13.v,
                            width: 4.h,
                            alignment: Alignment.centerRight))
                  ])),
          SizedBox(height: 24.v),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 9.v),
              decoration: AppDecoration.outlineBlack9001,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text("lbl_on_off".tr,
                            style: theme.textTheme.titleSmall)),
                    BlocSelector<SettingsTwoBloc, SettingsTwoState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                              margin: EdgeInsets.only(bottom: 1.v),
                              value: isSelectedSwitch,
                              onChange: (value) {
                                context
                                    .read<SettingsTwoBloc>()
                                    .add(ChangeSwitchEvent(value: value));
                              });
                        })
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.cartOnePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.cartOnePage:
        return CartOnePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
