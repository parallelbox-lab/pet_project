import 'bloc/order_confirmation_bloc.dart';
import 'models/order_confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderConfirmationBloc>(
        create: (context) => OrderConfirmationBloc(OrderConfirmationState(
            orderConfirmationModelObj: OrderConfirmationModel()))
          ..add(OrderConfirmationInitialEvent()),
        child: OrderConfirmationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderConfirmationBloc, OrderConfirmationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 14.v,
                              width: 8.h,
                              margin: EdgeInsets.only(top: 12.v, bottom: 10.v),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("lbl_address".tr,
                                  style: theme.textTheme.headlineSmall))
                        ]),
                        SizedBox(height: 28.v),
                        Text("lbl_home_address".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 12.v),
                        _buildImageAndFrame(context),
                        SizedBox(height: 31.v),
                        Text("lbl_billing_address".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 11.v),
                        _buildImageAndFrame(context),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildProceed(context)));
    });
  }

  /// Section Widget
  Widget _buildProceed(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_proceed".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 38.v));
  }

  /// Common widget
  Widget _buildImageAndFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v),
        decoration: AppDecoration.outlineGrayA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 233.h,
                            child: Text("msg_futa_southgate".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack90012)),
                        SizedBox(height: 10.v),
                        Text("lbl_edit".tr,
                            style: CustomTextStyles.titleSmallPrimary)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgCheckCirclePrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 29.h, top: 23.v, bottom: 28.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
