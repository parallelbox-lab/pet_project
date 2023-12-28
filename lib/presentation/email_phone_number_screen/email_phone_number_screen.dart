import 'bloc/email_phone_number_bloc.dart';
import 'models/email_phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/core/utils/validation_functions.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EmailPhoneNumberScreen extends StatelessWidget {
  EmailPhoneNumberScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EmailPhoneNumberBloc>(
        create: (context) => EmailPhoneNumberBloc(EmailPhoneNumberState(
            emailPhoneNumberModelObj: EmailPhoneNumberModel()))
          ..add(EmailPhoneNumberInitialEvent()),
        child: EmailPhoneNumberScreen());
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
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 27.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 14.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                            top: 6.v, bottom: 8.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("msg_edit_phone_number".tr,
                                            style: CustomTextStyles
                                                .headlineSmallCabinetGrotesk))
                                  ])),
                          SizedBox(height: 48.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: BlocSelector<
                                      EmailPhoneNumberBloc,
                                      EmailPhoneNumberState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.phoneNumberController,
                                  builder: (context, phoneNumberController) {
                                    return CustomTextFormField(
                                        controller: phoneNumberController,
                                        hintText: "lbl_08133905285".tr,
                                        hintStyle: theme.textTheme.titleSmall!,
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "err_msg_please_enter_valid_phone_number"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  })),
                          SizedBox(height: 23.v),
                          Container(
                              width: 299.h,
                              margin: EdgeInsets.only(left: 2.h, right: 29.h),
                              child: Text("msg_a_verification_code3".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodySmallBlack900Regular12
                                      .copyWith(height: 1.29))),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: BlocSelector<
                                      EmailPhoneNumberBloc,
                                      EmailPhoneNumberState,
                                      TextEditingController?>(
                                  selector: (state) => state.otpController,
                                  builder: (context, otpController) {
                                    return CustomPinCodeTextField(
                                        context: context,
                                        controller: otpController,
                                        onChanged: (value) {
                                          otpController?.text = value;
                                        });
                                  })),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_resend".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary),
                                    TextSpan(
                                        text: "lbl_in".tr,
                                        style: CustomTextStyles.bodyMedium14),
                                    TextSpan(
                                        text: "lbl_34s".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack90014)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 40.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
