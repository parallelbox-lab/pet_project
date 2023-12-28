import 'bloc/cart_two_bloc.dart';
import 'models/cart_two_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

class CartTwoScreen extends StatelessWidget {
  const CartTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CartTwoBloc>(
        create: (context) =>
            CartTwoBloc(CartTwoState(cartTwoModelObj: CartTwoModel()))
              ..add(CartTwoInitialEvent()),
        child: CartTwoScreen());
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
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStackImageIconButton(context),
                              SizedBox(height: 25.v),
                              _buildRowSolarPanelPrice(context),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_rating".tr,
                                      style: theme.textTheme.bodyMedium)),
                              SizedBox(height: 6.v),
                              Padding(
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
                                  ])),
                              SizedBox(height: 18.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_quantity_pcs".tr,
                                      style: CustomTextStyles
                                          .bodySmallBlack900Regular12)),
                              SizedBox(height: 9.v),
                              Padding(
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
                                  ])),
                              SizedBox(height: 25.v),
                              _buildRowDescriptionReviewsTwelve(context),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse25,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        radius: BorderRadius.circular(16.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, top: 9.v, bottom: 7.v),
                                        child: Text("lbl_dora_queen".tr,
                                            style: CustomTextStyles
                                                .labelLargeMontserratPrimaryContainer))
                                  ])),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 9.v,
                                        width: 49.h,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("lbl_1_09_2022".tr,
                                            style: CustomTextStyles
                                                .labelMediumMontserratGray400))
                                  ])),
                              SizedBox(height: 7.v),
                              Container(
                                  width: 304.h,
                                  margin:
                                      EdgeInsets.only(left: 3.h, right: 26.h),
                                  child: Text("msg_thrilled_with_my".tr,
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallErrorContainer)),
                              SizedBox(height: 19.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_order_type".tr,
                                      style: CustomTextStyles
                                          .bodyMediumRegular_1)),
                              SizedBox(height: 11.v),
                              _buildEditTextOrderOnly(context),
                              SizedBox(height: 15.v),
                              _buildEditTextOrderonly(context),
                              SizedBox(height: 15.v),
                              _buildEditTextInstallationOnly(context)
                            ])))),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  Widget _buildStackImageIconButton(BuildContext context) {
    return Container(
        height: 251.v,
        width: 327.h,
        margin: EdgeInsets.only(left: 3.h),
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
          Text("lbl_solar_panel".tr,
              style: CustomTextStyles.titleLargePromptBlack900Medium),
          Text("lbl_2_000".tr, style: CustomTextStyles.titleLargePromptPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildRowDescriptionReviewsTwelve(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapTxtDescription(context);
              },
              child: Text("lbl_description".tr,
                  style: CustomTextStyles.titleSmallBlack900_2)),
          Text("lbl_reviews_12".tr, style: theme.textTheme.titleSmall)
        ]));
  }

  /// Section Widget
  Widget _buildEditTextOrderOnly(BuildContext context) {
    return BlocSelector<CartTwoBloc, CartTwoState, TextEditingController?>(
        selector: (state) => state.editTextOrderOnlyController,
        builder: (context, editTextOrderOnlyController) {
          return CustomTextFormField(
              controller: editTextOrderOnlyController,
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
  Widget _buildEditTextOrderonly(BuildContext context) {
    return BlocSelector<CartTwoBloc, CartTwoState, TextEditingController?>(
        selector: (state) => state.editTextOrderonlyController,
        builder: (context, editTextOrderonlyController) {
          return CustomTextFormField(
              controller: editTextOrderonlyController,
              hintText: "msg_order_and_installation".tr,
              hintStyle: CustomTextStyles.titleSmallBlack900_3,
              borderDecoration: TextFormFieldStyleHelper.fillBlack,
              filled: true,
              fillColor: appTheme.black900.withOpacity(0.02));
        });
  }

  /// Section Widget
  Widget _buildEditTextInstallationOnly(BuildContext context) {
    return BlocSelector<CartTwoBloc, CartTwoState, TextEditingController?>(
        selector: (state) => state.editTextInstallationOnlyController,
        builder: (context, editTextInstallationOnlyController) {
          return CustomTextFormField(
              controller: editTextInstallationOnlyController,
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

  /// Navigates to the cartScreen when the action is triggered.
  onTapTxtDescription(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartScreen,
    );
  }
}
