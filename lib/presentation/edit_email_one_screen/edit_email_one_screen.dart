import 'bloc/edit_email_one_bloc.dart';
import 'models/edit_email_one_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_pin_code_text_field.dart';

class EditEmailOneScreen extends StatelessWidget {
  const EditEmailOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EditEmailOneBloc>(
        create: (context) => EditEmailOneBloc(
            EditEmailOneState(editEmailOneModelObj: EditEmailOneModel()))
          ..add(EditEmailOneInitialEvent()),
        child: EditEmailOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftBlack900,
                                height: 14.v,
                                width: 8.h,
                                margin: EdgeInsets.only(top: 8.v, bottom: 6.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_edit_email".tr,
                                    style: CustomTextStyles
                                        .headlineSmallCabinetGrotesk))
                          ])),
                      SizedBox(height: 51.v),
                      Text("msg_johnchris_gmail_com".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 5.v),
                      Divider(indent: 5.h, endIndent: 3.h),
                      SizedBox(height: 23.v),
                      Container(
                          width: 301.h,
                          margin: EdgeInsets.only(left: 5.h, right: 30.h),
                          child: Text("msg_a_verification_code2".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumRegular
                                  .copyWith(height: 1.29))),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h, right: 3.h),
                          child: BlocSelector<EditEmailOneBloc,
                                  EditEmailOneState, TextEditingController?>(
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
                          child: Padding(
                              padding: EdgeInsets.only(right: 3.h),
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
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSaveChangesButton(context)));
  }

  /// Section Widget
  Widget _buildSaveChangesButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 40.v));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
