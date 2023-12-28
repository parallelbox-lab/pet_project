import '../home_screen_page/widgets/salecard_item_widget.dart';
import 'bloc/home_screen_bloc.dart';
import 'models/home_screen_model.dart';
import 'models/salecard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
        create: (context) => HomeScreenBloc(
            HomeScreenState(homeScreenModelObj: HomeScreenModel()))
          ..add(HomeScreenInitialEvent()),
        child: HomeScreenPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildRowWithCircleImageAndSearchButtons(context),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_hot_offers".tr,
                              style: CustomTextStyles.titleSmallBlack900_1))),
                  SizedBox(height: 5.v),
                  _buildSixtyFive(context),
                  SizedBox(height: 16.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup6925,
                      height: 3.v,
                      width: 33.h),
                  SizedBox(height: 17.v),
                  _buildRowWithHotDealsAndSeeAllText(context),
                  SizedBox(height: 14.v),
                  _buildSaleCard(context)
                ]))));
  }

  /// Section Widget
  Widget _buildRowWithCircleImageAndSearchButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
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
              onTap: () {
                onTapBtnSearch(context);
              },
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
  Widget _buildSeeMoreButtonForHotOffers(BuildContext context) {
    return CustomElevatedButton(
        height: 25.v,
        width: 61.h,
        text: "lbl_see_more".tr,
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.labelMediumCabinetGroteskBlack900);
  }

  /// Section Widget
  Widget _buildSeeMoreButtonForHotDeals(BuildContext context) {
    return CustomElevatedButton(
        height: 25.v,
        width: 62.h,
        text: "lbl_see_more".tr,
        buttonStyle: CustomButtonStyles.outlineBlackTL2,
        buttonTextStyle: CustomTextStyles.bodySmallMontserrat);
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.blue900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Container(
                      height: 123.v,
                      width: 328.h,
                      decoration: AppDecoration.fillBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCloseUpGrayG,
                            height: 123.v,
                            width: 328.h,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 301.h,
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 10.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 15.v, bottom: 13.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_get".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumCabinetGroteskOnPrimaryContainer),
                                                RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_50".tr,
                                                          style: CustomTextStyles
                                                              .titleLargeCabinetGrotesk),
                                                      TextSpan(text: " "),
                                                      TextSpan(
                                                          text: "lbl_off".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumCabinetGroteskOnPrimaryContainer13)
                                                    ]),
                                                    textAlign: TextAlign.left),
                                                Text("lbl_on_your_orders".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumCabinetGroteskOnPrimaryContainer),
                                                SizedBox(height: 7.v),
                                                _buildSeeMoreButtonForHotOffers(
                                                    context)
                                              ])),
                                      SizedBox(
                                          height: 123.v,
                                          width: 150.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                        height: 6.v,
                                                        width: 113.h,
                                                        margin: EdgeInsets.only(
                                                            right: 3.h,
                                                            bottom: 7.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .black900,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(56
                                                                        .h)))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSolarPanels,
                                                    height: 123.v,
                                                    width: 150.h,
                                                    alignment: Alignment.center)
                                              ]))
                                    ])))
                      ]))),
              Container(
                  height: 123.v,
                  width: 332.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.pink700,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Container(
                                height: 122.v,
                                width: 331.h,
                                decoration: AppDecoration.fillPink.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCloseUpGrayG122x331,
                                          height: 122.v,
                                          width: 331.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              width: 286.h,
                                              margin: EdgeInsets.fromLTRB(
                                                  16.h, 16.v, 28.h, 14.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("lbl_get".tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumMontserratOnPrimaryContainer),
                                                          RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_502"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleLarge22_2),
                                                                    TextSpan(
                                                                        text: "lbl_off"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumMontserratOnPrimaryContainer13)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left),
                                                          Text(
                                                              "msg_on_your_bookings"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumMontserratOnPrimaryContainer),
                                                          SizedBox(height: 7.v),
                                                          _buildSeeMoreButtonForHotDeals(
                                                              context)
                                                        ]),
                                                    Container(
                                                        height: 41.v,
                                                        width: 105.h,
                                                        margin: EdgeInsets.only(
                                                            top: 50.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .black900,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        52.h)))
                                                  ])))
                                    ])))),
                    CustomImageView(
                        imagePath: ImageConstant.imgHouse,
                        height: 100.v,
                        width: 156.h,
                        alignment: Alignment.bottomRight)
                  ]))
            ]))));
  }

  /// Section Widget
  Widget _buildRowWithHotDealsAndSeeAllText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 23.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_hot_deals".tr,
              style: CustomTextStyles.titleSmallBlack900_1),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll(context);
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.labelMediumPrimary)))
        ]));
  }

  /// Section Widget
  Widget _buildSaleCard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<HomeScreenBloc, HomeScreenState, HomeScreenModel?>(
            selector: (state) => state.homeScreenModelObj,
            builder: (context, homeScreenModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 194.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 17.h,
                      crossAxisSpacing: 17.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: homeScreenModelObj?.salecardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SalecardItemModel model =
                        homeScreenModelObj?.salecardItemList[index] ??
                            SalecardItemModel();
                    return SalecardItemWidget(model);
                  });
            }));
  }

  /// Navigates to the homeScreenTwoScreen when the action is triggered.
  onTapBtnSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreenTwoScreen,
    );
  }

  /// Navigates to the homeScreenOneScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreenOneScreen,
    );
  }
}
