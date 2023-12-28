import 'bloc/change_password_bloc.dart';
import 'models/change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/core/utils/validation_functions.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
        create: (context) => ChangePasswordBloc(
            ChangePasswordState(changePasswordModelObj: ChangePasswordModel()))
          ..add(ChangePasswordInitialEvent()),
        child: ChangePasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 32.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 14.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                            top: 8.v, bottom: 13.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("lbl_change_password".tr,
                                            style:
                                                theme.textTheme.headlineSmall))
                                  ]))),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, right: 8.h),
                          child: BlocSelector<ChangePasswordBloc,
                                  ChangePasswordState, TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    hintText: "msg_johnchris_gmail_com".tr,
                                    hintStyle: theme.textTheme.titleSmall!,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_email"
                                            .tr;
                                      }
                                      return null;
                                    });
                              })),
                      SizedBox(height: 34.v),
                      Container(
                          width: 318.h,
                          margin: EdgeInsets.only(left: 9.h, right: 15.h),
                          child: Text("msg_a_verification_code".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallBlack90012
                                  .copyWith(height: 1.29))),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, right: 7.h),
                          child: BlocSelector<ChangePasswordBloc,
                                  ChangePasswordState, TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return CustomPinCodeTextField(
                                    context: context,
                                    controller: otpController,
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    });
                              })),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_resend".tr,
                                    style: CustomTextStyles.bodyMediumPrimary),
                                TextSpan(
                                    text: "lbl_in".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                TextSpan(
                                    text: "lbl_34s".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBlack90014)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      SizedBox(height: 43.v),
                      CustomElevatedButton(
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.only(left: 19.h, right: 18.h))
                    ])))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
