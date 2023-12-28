import 'bloc/edit_email_two_bloc.dart';
import 'models/edit_email_two_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/core/utils/validation_functions.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditEmailTwoScreen extends StatelessWidget {
  EditEmailTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EditEmailTwoBloc>(
        create: (context) => EditEmailTwoBloc(
            EditEmailTwoState(editEmailTwoModelObj: EditEmailTwoModel()))
          ..add(EditEmailTwoInitialEvent()),
        child: EditEmailTwoScreen());
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
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftBlack900,
                                        height: 14.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                            top: 6.v, bottom: 8.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text(
                                            "msg_edit_billing_address".tr,
                                            style: CustomTextStyles
                                                .headlineSmallCabinetGrotesk))
                                  ]))),
                      SizedBox(height: 39.v),
                      _buildFrame(context),
                      SizedBox(height: 5.v),
                      Divider(indent: 8.h, endIndent: 6.h),
                      SizedBox(height: 30.v),
                      _buildName(context),
                      SizedBox(height: 30.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(children: [
                                _buildMobileNoFrame(context),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("lbl_8133905285".tr,
                                        style: theme.textTheme.bodyMedium))
                              ]))),
                      SizedBox(height: 6.v),
                      Divider(indent: 8.h, endIndent: 7.h),
                      SizedBox(height: 30.v),
                      _buildAddress(context),
                      SizedBox(height: 30.v),
                      _buildOndoState(context),
                      SizedBox(height: 6.v),
                      Divider(indent: 8.h, endIndent: 7.h),
                      SizedBox(height: 30.v),
                      _buildAkureSouth(context),
                      SizedBox(height: 6.v),
                      Divider(indent: 8.h, endIndent: 7.h),
                      SizedBox(height: 31.v),
                      _buildZipcode(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconNigeria,
                  height: 22.v,
                  width: 30.h,
                  margin: EdgeInsets.only(bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 3.v),
                  child: Text("lbl_nigeria".tr,
                      style: theme.textTheme.bodyMedium)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 8.v,
                  width: 14.h,
                  margin: EdgeInsets.only(top: 7.v, bottom: 11.v))
            ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 7.h),
        child: BlocSelector<EditEmailTwoBloc, EditEmailTwoState,
                TextEditingController?>(
            selector: (state) => state.nameController,
            builder: (context, nameController) {
              return CustomTextFormField(
                  controller: nameController,
                  hintText: "lbl_contact_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return BlocSelector<EditEmailTwoBloc, EditEmailTwoState,
            TextEditingController?>(
        selector: (state) => state.mobileNoController,
        builder: (context, mobileNoController) {
          return CustomTextFormField(
              width: 328.h,
              controller: mobileNoController,
              hintText: "lbl_8133905285".tr,
              textInputType: TextInputType.phone,
              alignment: Alignment.bottomRight,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 30.h));
        });
  }

  /// Section Widget
  Widget _buildMobileNoFrame(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 23.v,
                width: 53.h,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_234".tr,
                          style: theme.textTheme.bodyMedium)),
                  _buildMobileNo(context)
                ]))));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 7.h),
        child: BlocSelector<EditEmailTwoBloc, EditEmailTwoState,
                TextEditingController?>(
            selector: (state) => state.addressController,
            builder: (context, addressController) {
              return CustomTextFormField(
                  controller: addressController, hintText: "lbl_address".tr);
            }));
  }

  /// Section Widget
  Widget _buildOndoState(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_ondo_state".tr, style: theme.textTheme.bodyMedium),
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 8.v,
              width: 14.h,
              margin: EdgeInsets.symmetric(vertical: 7.v))
        ]));
  }

  /// Section Widget
  Widget _buildAkureSouth(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_akure_south".tr, style: theme.textTheme.bodyMedium),
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 8.v,
              width: 14.h,
              margin: EdgeInsets.symmetric(vertical: 7.v))
        ]));
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 7.h),
        child: BlocSelector<EditEmailTwoBloc, EditEmailTwoState,
                TextEditingController?>(
            selector: (state) => state.zipcodeController,
            builder: (context, zipcodeController) {
              return CustomTextFormField(
                  controller: zipcodeController,
                  hintText: "lbl_zip_code".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  });
            }));
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
