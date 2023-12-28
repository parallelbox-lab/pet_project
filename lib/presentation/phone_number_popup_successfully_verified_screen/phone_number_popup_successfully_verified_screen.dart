import 'bloc/phone_number_popup_successfully_verified_bloc.dart';
import 'models/phone_number_popup_successfully_verified_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

class PhoneNumberPopupSuccessfullyVerifiedScreen extends StatelessWidget {
  const PhoneNumberPopupSuccessfullyVerifiedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PhoneNumberPopupSuccessfullyVerifiedBloc>(
      create: (context) => PhoneNumberPopupSuccessfullyVerifiedBloc(
          PhoneNumberPopupSuccessfullyVerifiedState(
        phoneNumberPopupSuccessfullyVerifiedModelObj:
            PhoneNumberPopupSuccessfullyVerifiedModel(),
      ))
        ..add(PhoneNumberPopupSuccessfullyVerifiedInitialEvent()),
      child: PhoneNumberPopupSuccessfullyVerifiedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberPopupSuccessfullyVerifiedBloc,
        PhoneNumberPopupSuccessfullyVerifiedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 214.h,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 38.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  children: [
                    CustomIconButton(
                      height: 57.adaptSize,
                      width: 57.adaptSize,
                      padding: EdgeInsets.all(13.h),
                      decoration: IconButtonStyleHelper.fillGreenATL28,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    SizedBox(
                      width: 164.h,
                      child: Text(
                        "msg_phone_number_verified".tr,
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
