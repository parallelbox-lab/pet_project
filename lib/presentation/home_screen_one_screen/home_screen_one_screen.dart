import '../home_screen_one_screen/widgets/salecardgrid_item_widget.dart';
import 'bloc/home_screen_one_bloc.dart';
import 'models/home_screen_one_model.dart';
import 'models/salecardgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/cart_one_page/cart_one_page.dart';
import 'package:owoeye_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:owoeye_s_application1/presentation/profile_page/profile_page.dart';
import 'package:owoeye_s_application1/widgets/custom_bottom_bar.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneScreen extends StatelessWidget {
  HomeScreenOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenOneBloc>(
        create: (context) => HomeScreenOneBloc(
            HomeScreenOneState(homeScreenOneModelObj: HomeScreenOneModel()))
          ..add(HomeScreenOneInitialEvent()),
        child: HomeScreenOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildFrameRow(context),
                  SizedBox(height: 30.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 14.v,
                                width: 8.h,
                                margin: EdgeInsets.only(top: 4.v, bottom: 3.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("lbl_hot_deals2".tr,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1))
                          ]))),
                  SizedBox(height: 19.v),
                  _buildSaleCardGrid(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse45,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.circular(17.h)),
          Spacer(),
          CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(imagePath: ImageConstant.imgSearch)),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgTdesignNotificationFilled)))
        ]));
  }

  /// Section Widget
  Widget _buildSaleCardGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<HomeScreenOneBloc, HomeScreenOneState,
                HomeScreenOneModel?>(
            selector: (state) => state.homeScreenOneModelObj,
            builder: (context, homeScreenOneModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 194.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.h,
                      crossAxisSpacing: 10.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      homeScreenOneModelObj?.salecardgridItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SalecardgridItemModel model =
                        homeScreenOneModelObj?.salecardgridItemList[index] ??
                            SalecardgridItemModel();
                    return SalecardgridItemWidget(model);
                  });
            }));
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
