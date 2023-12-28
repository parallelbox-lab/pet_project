import 'bloc/payment_successful_bloc.dart';
import 'models/payment_successful_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentSuccessfulBloc>(
      create: (context) => PaymentSuccessfulBloc(PaymentSuccessfulState(
        paymentSuccessfulModelObj: PaymentSuccessfulModel(),
      ))
        ..add(PaymentSuccessfulInitialEvent()),
      child: PaymentSuccessfulScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentSuccessfulBloc, PaymentSuccessfulState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 258.h,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 40.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 21.v),
                    CustomIconButton(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      padding: EdgeInsets.all(15.h),
                      decoration: IconButtonStyleHelper.fillGreenA,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Container(
                      width: 200.h,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        right: 5.h,
                      ),
                      child: Text(
                        "msg_your_payment_was".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBlack900_2,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    CustomElevatedButton(
                      height: 41.v,
                      text: "lbl_alright".tr,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
