import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/core/utils/validation_functions.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
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
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_hello_there".tr,
                    style: CustomTextStyles.bodyLargeBlack900Regular,
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_sign_up".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_username".tr,
                    style: CustomTextStyles.bodyMediumBlack900Regular14,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildUserName(context),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.bodyMediumBlack900Regular_1,
                  ),
                ),
                SizedBox(height: 2.v),
                _buildEmail(context),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_phone_number".tr,
                    style: CustomTextStyles.bodyMediumBlack900Regular_1,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildPhoneNumber(context),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.bodyMediumBlack900Regular_1,
                  ),
                ),
                SizedBox(height: 6.v),
                _buildPassword(context),
                SizedBox(height: 19.v),
                Text(
                  "msg_confirm_password".tr,
                  style: CustomTextStyles.bodyMediumBlack900Regular_1,
                ),
                SizedBox(height: 6.v),
                _buildConfirmPassword(context),
                SizedBox(height: 35.v),
                _buildCreateAccount(context),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 45.h,
                      right: 34.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "msg_already_have_an".tr,
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.userNameController,
        builder: (context, userNameController) {
          return CustomTextFormField(
            controller: userNameController,
            hintText: "lbl_example".tr,
            hintStyle: CustomTextStyles.bodyLargeBlack900,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 13.v, 10.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 13.v,
              right: 30.h,
              bottom: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "msg_example_gmail_com".tr,
            hintStyle: CustomTextStyles.bodyMediumBlack900_1,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
            controller: phoneNumberController,
            hintText: "lbl_08133905285".tr,
            hintStyle: CustomTextStyles.bodyMediumBlack900Regular,
            textInputType: TextInputType.phone,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(13.h, 15.v, 10.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.img24NavigationPhone,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              top: 15.v,
              right: 30.h,
              bottom: 15.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl".tr,
            hintStyle: CustomTextStyles.bodyMediumBlack900Regular,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 10.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 21.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 15.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordController,
            hintText: "lbl".tr,
            hintStyle: CustomTextStyles.bodyMediumBlack900Regular,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 10.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent1(
                    value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 21.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 54.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 15.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_create_account".tr,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 9.h,
      ),
      alignment: Alignment.center,
    );
  }
}
