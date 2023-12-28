import 'bloc/verifying_phone_number_popup_bloc.dart';
import 'models/verifying_phone_number_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

class VerifyingPhoneNumberPopupScreen extends StatelessWidget {
  const VerifyingPhoneNumberPopupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerifyingPhoneNumberPopupBloc>(
      create: (context) =>
          VerifyingPhoneNumberPopupBloc(VerifyingPhoneNumberPopupState(
        verifyingPhoneNumberPopupModelObj: VerifyingPhoneNumberPopupModel(),
      ))
            ..add(VerifyingPhoneNumberPopupInitialEvent()),
      child: VerifyingPhoneNumberPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyingPhoneNumberPopupBloc,
        VerifyingPhoneNumberPopupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 214.h,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBrightness,
                      height: 57.adaptSize,
                      width: 57.adaptSize,
                    ),
                    SizedBox(height: 27.v),
                    SizedBox(
                      width: 123.h,
                      child: Text(
                        "msg_verifying_phone".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
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
