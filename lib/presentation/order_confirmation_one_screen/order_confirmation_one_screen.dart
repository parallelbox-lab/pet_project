import 'bloc/order_confirmation_one_bloc.dart';
import 'models/order_confirmation_one_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';

class OrderConfirmationOneScreen extends StatelessWidget {
  const OrderConfirmationOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderConfirmationOneBloc>(
        create: (context) => OrderConfirmationOneBloc(OrderConfirmationOneState(
            orderConfirmationOneModelObj: OrderConfirmationOneModel()))
          ..add(OrderConfirmationOneInitialEvent()),
        child: OrderConfirmationOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderConfirmationOneBloc, OrderConfirmationOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 21.h, right: 15.h, bottom: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.h, right: 92.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgArrowLeft,
                                          height: 14.v,
                                          width: 8.h,
                                          margin: EdgeInsets.only(
                                              top: 11.v, bottom: 10.v),
                                          onTap: () {
                                            onTapImgArrowLeft(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                              "msg_order_confirmation".tr,
                                              style: theme
                                                  .textTheme.headlineSmall))
                                    ])),
                                SizedBox(height: 22.v),
                                _buildFrameAddressImage(context),
                                SizedBox(height: 6.v),
                                SizedBox(
                                    width: 233.h,
                                    child: Text("msg_futa_southgate".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallBlack90012
                                            .copyWith(height: 1.58))),
                                SizedBox(height: 15.v),
                                Divider(endIndent: 9.h),
                                SizedBox(height: 15.v),
                                _buildFramePaymentMethodImage(context),
                                SizedBox(height: 8.v),
                                Text("lbl_bank_card".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack90012),
                                SizedBox(height: 6.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroup,
                                    height: 18.v,
                                    width: 104.h),
                                SizedBox(height: 19.v),
                                Divider(indent: 2.h, endIndent: 8.h),
                                SizedBox(height: 14.v),
                                _buildFrameItemsArrowRight(context),
                                SizedBox(height: 10.v),
                                Row(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapFrame(context);
                                      },
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle490,
                                                height: 102.v,
                                                width: 103.h,
                                                radius:
                                                    BorderRadius.circular(5.h)),
                                            SizedBox(height: 9.v),
                                            Text("lbl_2_000".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            SizedBox(height: 3.v),
                                            Text("lbl_quantity".tr,
                                                style: CustomTextStyles
                                                    .bodySmallBlack90010),
                                            SizedBox(height: 7.v),
                                            Row(children: [
                                              SizedBox(
                                                  height: 19.v,
                                                  width: 23.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height: 15.v,
                                                                width: 23.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom: 1
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .gray50001,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 8
                                                                            .h),
                                                                child: Text(
                                                                    "lbl2".tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallMontserratOnPrimaryContainer)))
                                                      ])),
                                              Opacity(
                                                  opacity: 0.5,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text("lbl_1".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallCabinetGroteskBlack900))),
                                              Container(
                                                  height: 19.v,
                                                  width: 23.h,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 15.v,
                                                                width: 23.h,
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "lbl3".tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallMontserratOnPrimaryContainer))
                                                      ]))
                                            ])
                                          ])),
                                  GestureDetector(
                                      onTap: () {
                                        onTapFrame1(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 26.h),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle491,
                                                    height: 102.v,
                                                    width: 103.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            5.h)),
                                                SizedBox(height: 9.v),
                                                Text("lbl_2_000".tr,
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 3.v),
                                                Text("lbl_quantity".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBlack90010),
                                                SizedBox(height: 7.v),
                                                Row(children: [
                                                  SizedBox(
                                                      height: 19.v,
                                                      width: 23.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        15.v,
                                                                    width: 23.h,
                                                                    margin: EdgeInsets.only(
                                                                        bottom: 1
                                                                            .v),
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .gray50001,
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 8
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl2"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleSmallMontserratOnPrimaryContainer)))
                                                          ])),
                                                  Opacity(
                                                      opacity: 0.5,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 16.h),
                                                          child: Text(
                                                              "lbl_1".tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallCabinetGroteskBlack900))),
                                                  Container(
                                                      height: 19.v,
                                                      width: 23.h,
                                                      margin: EdgeInsets.only(
                                                          left: 10.h),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        15.v,
                                                                    width: 23.h,
                                                                    decoration: BoxDecoration(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.h)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "lbl3".tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallMontserratOnPrimaryContainer))
                                                          ]))
                                                ])
                                              ])))
                                ]),
                                SizedBox(height: 18.v),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_delivery_time".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack90012_1),
                                      TextSpan(
                                          text: "msg_27th_january_2045".tr,
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    textAlign: TextAlign.left),
                                SizedBox(height: 15.v),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_delivery_fee".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack90012_1),
                                      TextSpan(
                                          text: "lbl_800".tr,
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    textAlign: TextAlign.left),
                                SizedBox(height: 12.v),
                                Divider(endIndent: 9.h),
                                SizedBox(height: 15.v),
                                Text("lbl_summary".tr,
                                    style: theme.textTheme.titleSmall),
                                SizedBox(height: 3.v),
                                _buildFrameTotalItemsCostPrice(context),
                                SizedBox(height: 13.v),
                                _buildFrameDeliveryFeePrice(context),
                                SizedBox(height: 13.v),
                                _buildFrameTotalPrice(context)
                              ])))),
              bottomNavigationBar: _buildPayNow(context)));
    });
  }

  /// Section Widget
  Widget _buildFrameAddressImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_address".tr, style: theme.textTheme.titleSmall),
          CustomImageView(
              imagePath: ImageConstant.imgFrame6928,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.symmetric(vertical: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildFramePaymentMethodImage(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_payment_method".tr, style: theme.textTheme.titleSmall),
          CustomImageView(
              imagePath: ImageConstant.imgFrame6928,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameItemsArrowRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_items".tr, style: theme.textTheme.titleSmall),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 14.v,
                  width: 8.h,
                  margin: EdgeInsets.symmetric(vertical: 4.v))
            ]));
  }

  /// Section Widget
  Widget _buildFrameTotalItemsCostPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_total_items_cost".tr,
              style: CustomTextStyles.bodySmallBlack90012),
          Text("lbl_4_000".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildFrameDeliveryFeePrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_delivery_fee2".tr,
              style: CustomTextStyles.bodySmallBlack90012),
          Text("lbl_800".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildFrameTotalPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_total".tr,
              style: CustomTextStyles.bodyMediumCabinetGrotesk_1),
          Text("lbl_4_800".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildPayNow(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay_now".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 34.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartScreen,
    );
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapFrame1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartScreen,
    );
  }
}
