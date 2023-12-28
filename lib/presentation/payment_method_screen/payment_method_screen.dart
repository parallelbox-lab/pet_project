import 'bloc/payment_method_bloc.dart';
import 'models/payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodBloc>(
      create: (context) => PaymentMethodBloc(PaymentMethodState(
        paymentMethodModelObj: PaymentMethodModel(),
      ))
        ..add(PaymentMethodInitialEvent()),
      child: PaymentMethodScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 7.v,
                      width: 53.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v),
                    _buildPaymentMethodRow(context),
                    SizedBox(height: 25.v),
                    _buildPaymentMethodColumn(context),
                    SizedBox(height: 84.v),
                    CustomElevatedButton(
                      text: "lbl_apply".tr,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 13.h,
                      ),
                    ),
                    SizedBox(height: 15.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSolarCardBold,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 1.v,
            ),
            child: Text(
              "lbl_my_wallet".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPrimary,
            height: 14.v,
            width: 18.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 10.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodColumn(BuildContext context) {
    return Container(
      width: 334.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgThumbsUp,
        height: 17.v,
        width: 97.h,
      ),
    );
  }
}
