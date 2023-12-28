import 'bloc/edit_profile_bloc.dart';
import 'models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
        create: (context) => EditProfileBloc(
            EditProfileState(editProfileModelObj: EditProfileModel()))
          ..add(EditProfileInitialEvent()),
        child: EditProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 23.h, right: 23.h, bottom: 5.v),
                          child: Column(children: [
                            _buildEditProfileRow(context),
                            SizedBox(height: 14.v),
                            _buildPhCameraFillStack(context),
                            SizedBox(height: 43.v),
                            _buildFrameRow1(context),
                            SizedBox(height: 17.v),
                            Divider(),
                            SizedBox(height: 17.v),
                            _buildFrameRow(context,
                                billingAddressText: "lbl_email".tr,
                                descriptionText: "msg_johnchris_gmail_com".tr,
                                onTapArrowRight: () {
                              onTapArrowRight(context);
                            }),
                            SizedBox(height: 16.v),
                            Divider(),
                            SizedBox(height: 17.v),
                            _buildFrameRow2(context),
                            SizedBox(height: 17.v),
                            Divider(),
                            SizedBox(height: 18.v),
                            _buildFrameRow3(context),
                            SizedBox(height: 34.v),
                            _buildFrameRow(context,
                                billingAddressText: "lbl_billing_address2".tr,
                                descriptionText: "msg_futa_southgate".tr,
                                onTapArrowRight: () {
                              onTapArrowRight1(context);
                            }),
                            SizedBox(height: 26.v),
                            _buildFrameColumn(context)
                          ])))),
              bottomNavigationBar: _buildSaveChanges(context)));
    });
  }

  /// Section Widget
  Widget _buildEditProfileRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_edit_profile".tr, style: theme.textTheme.headlineSmall),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 9.v),
              child: Text("lbl_cancel".tr,
                  style: CustomTextStyles.bodyMediumPrimaryRegular))
        ]);
  }

  /// Section Widget
  Widget _buildPhCameraFillStack(BuildContext context) {
    return SizedBox(
        height: 194.v,
        width: 327.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 154.v,
                  width: 327.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle518154x327,
                        height: 154.v,
                        width: 327.h,
                        radius: BorderRadius.circular(10.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 61.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPhCameraFill,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text("msg_change_cover_image".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryContainer))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle286780x80,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.circular(10.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            decoration: AppDecoration.fillPrimary3.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPhCameraFill,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                alignment: Alignment.center)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_username".tr, style: theme.textTheme.bodyMedium),
          Spacer(),
          Text("lbl_johnson_chris".tr, style: theme.textTheme.titleSmall),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray800,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("lbl_phone_number".tr, style: theme.textTheme.bodyMedium),
      Spacer(),
      Text("lbl_08133905285".tr, style: theme.textTheme.titleSmall),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightGray800,
          height: 14.v,
          width: 8.h,
          margin: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v),
          onTap: () {
            onTapImgArrowRight1(context);
          })
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow3(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 59.h,
              child: Text("lbl_home_address2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(height: 1.29))),
          Spacer(),
          Container(
              width: 219.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Text("msg_futa_southgate".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.labelMediumBlack900)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray800,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.only(left: 7.h, top: 9.v, bottom: 14.v),
              onTap: () {
                onTapImgArrowRight2(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillPrimary2
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 1.v),
                        child: Text("msg_copy_invitation".tr,
                            style: CustomTextStyles
                                .titleSmallCabinetGroteskBlack900_1)),
                    CustomImageView(
                        imagePath: ImageConstant.imgSolarCopyLinearBlack900,
                        height: 24.adaptSize,
                        width: 24.adaptSize)
                  ])),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("msg_copy_invitation2".tr,
                            style: CustomTextStyles
                                .titleSmallCabinetGroteskBlack900_1)),
                    Text("lbl_12tdne476m".tr,
                        style: CustomTextStyles
                            .titleSmallCabinetGroteskBlack900Bold)
                  ])),
          SizedBox(height: 6.v)
        ]));
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 34.h, right: 33.h, bottom: 40.v));
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String billingAddressText,
    required String descriptionText,
    Function? onTapArrowRight,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 59.h,
              child: Text(billingAddressText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: appTheme.black900.withOpacity(0.8),
                      height: 1.29))),
          Spacer(),
          Container(
              width: 219.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Text(descriptionText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.labelMediumBlack900
                      .copyWith(color: appTheme.black900.withOpacity(0.8)))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray800,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.only(left: 7.h, top: 10.v, bottom: 14.v),
              onTap: () {
                onTapArrowRight!.call();
              })
        ]);
  }

  /// Navigates to the editEmailOneScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editEmailOneScreen,
    );
  }

  /// Navigates to the emailPhoneNumberScreen when the action is triggered.
  onTapImgArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emailPhoneNumberScreen,
    );
  }

  /// Navigates to the editEmailScreen when the action is triggered.
  onTapImgArrowRight2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editEmailScreen,
    );
  }

  /// Navigates to the editEmailTwoScreen when the action is triggered.
  onTapArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editEmailTwoScreen,
    );
  }
}
