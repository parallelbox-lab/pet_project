import 'bloc/cart_bloc.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
        create: (context) => CartBloc(CartState(cartModelObj: CartModel()))
          ..add(CartInitialEvent()),
        child: CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 20.h, right: 20.h, bottom: 5.v),
                        child: Column(children: [
                          _buildStackImageIconButton(context),
                          SizedBox(height: 23.v),
                          _buildRowSolarPanelPrice(context),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_rating".tr,
                                      style: theme.textTheme.bodyMedium))),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img24NavigationStar,
                                        height: 19.adaptSize,
                                        width: 19.adaptSize),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img24NavigationStar,
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        margin: EdgeInsets.only(left: 6.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img24NavigationStar,
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        margin: EdgeInsets.only(left: 6.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img24NavigationStar,
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        margin: EdgeInsets.only(left: 8.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img24NavigationStar,
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        margin: EdgeInsets.only(left: 6.h))
                                  ]))),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_quantity_pcs".tr,
                                      style: CustomTextStyles
                                          .bodySmallBlack900Regular12))),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Row(children: [
                                    SizedBox(
                                        height: 25.v,
                                        width: 39.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment
                                                      .topCenter,
                                                  child: Container(
                                                      height: 24.v,
                                                      width: 39.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.h)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl4".tr,
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 13.h),
                                        child: Text("lbl_1".tr,
                                            style: CustomTextStyles
                                                .titleLargeCabinetGroteskBlack900)),
                                    Container(
                                        height: 25.v,
                                        width: 39.h,
                                        margin: EdgeInsets.only(left: 14.h),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 24.v,
                                                      width: 39.h,
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.h)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl3".tr,
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ]))
                                  ]))),
                          SizedBox(height: 25.v),
                          _buildRowDescriptionReviewsTwelve(context),
                          SizedBox(height: 12.v),
                          Container(
                              width: 324.h,
                              margin: EdgeInsets.only(left: 3.h, right: 6.h),
                              child: Text("msg_introducing_our".tr,
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallBlack90012)),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_order_type".tr,
                                      style: CustomTextStyles
                                          .bodyMediumRegular_1))),
                          SizedBox(height: 11.v),
                          _buildOrderOnly(context),
                          SizedBox(height: 15.v),
                          _buildOrderonly(context),
                          SizedBox(height: 15.v),
                          _buildInstallationOnly(context)
                        ])))),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  Widget _buildStackImageIconButton(BuildContext context) {
    return SizedBox(
        height: 251.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2864,
              height: 251.v,
              width: 327.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 12.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper
                      .gradientOnPrimaryContainerToOnPrimaryContainer,
                  alignment: Alignment.topLeft,
                  onTap: () {
                    onTapBtnIconButton(context);
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame6928Gray800)))
        ]));
  }

  /// Section Widget
  Widget _buildRowSolarPanelPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("lbl_solar_panel".tr,
                  style: CustomTextStyles.titleLargePromptBlack900Medium)),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_2_000".tr,
                  style: CustomTextStyles.titleLargePromptPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildRowDescriptionReviewsTwelve(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_description".tr, style: theme.textTheme.titleSmall),
          GestureDetector(
              onTap: () {
                onTapTxtReviewsTwelve(context);
              },
              child: Text("lbl_reviews_12".tr,
                  style: CustomTextStyles.titleSmallBlack900_2))
        ]));
  }

  /// Section Widget
  Widget _buildOrderOnly(BuildContext context) {
    return BlocSelector<CartBloc, CartState, TextEditingController?>(
        selector: (state) => state.orderOnlyController,
        builder: (context, orderOnlyController) {
          return CustomTextFormField(
              controller: orderOnlyController,
              hintText: "lbl_order_only".tr,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 18.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconparksolidcorrect,
                      height: 23.adaptSize,
                      width: 23.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 49.v),
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
              filled: true,
              fillColor: theme.colorScheme.primary.withOpacity(0.1));
        });
  }

  /// Section Widget
  Widget _buildOrderonly(BuildContext context) {
    return BlocSelector<CartBloc, CartState, TextEditingController?>(
        selector: (state) => state.orderonlyController,
        builder: (context, orderonlyController) {
          return CustomTextFormField(
              controller: orderonlyController,
              hintText: "msg_order_and_installation".tr,
              hintStyle: CustomTextStyles.titleSmallBlack900_3,
              borderDecoration: TextFormFieldStyleHelper.fillBlack,
              filled: true,
              fillColor: appTheme.black900.withOpacity(0.02));
        });
  }

  /// Section Widget
  Widget _buildInstallationOnly(BuildContext context) {
    return BlocSelector<CartBloc, CartState, TextEditingController?>(
        selector: (state) => state.installationOnlyController,
        builder: (context, installationOnlyController) {
          return CustomTextFormField(
              controller: installationOnlyController,
              hintText: "msg_installation_only".tr,
              hintStyle: CustomTextStyles.titleSmallBlack900_3,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillBlack,
              filled: true,
              fillColor: appTheme.black900.withOpacity(0.02));
        });
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 28.v));
  }

  /// Navigates to the orderConfirmationOneScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderConfirmationOneScreen,
    );
  }

  /// Navigates to the cartTwoScreen when the action is triggered.
  onTapTxtReviewsTwelve(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartTwoScreen,
    );
  }
}
