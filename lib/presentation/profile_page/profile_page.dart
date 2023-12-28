import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                children: [
                  SizedBox(height: 21.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          right: 22.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            _buildProfileRow(context),
                            SizedBox(height: 17.v),
                            _buildSixtyNineStack(context),
                            SizedBox(height: 9.v),
                            Text(
                              "lbl_johnson_chris".tr,
                              style: CustomTextStyles
                                  .titleLargePromptBlack900Medium,
                            ),
                            SizedBox(height: 8.v),
                            SizedBox(
                              width: 216.h,
                              child: Text(
                                "msg_futa_southgate2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.bodySmallBlack900Regular,
                              ),
                            ),
                            Text(
                              "msg_johnchris_gmail_com".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            Text(
                              "lbl_08133905285".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            SizedBox(height: 44.v),
                            Text(
                              "lbl_order_summary".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 6.v),
                            _buildOrderSummaryRow(context),
                            SizedBox(height: 34.v),
                            Text(
                              "lbl_refer_earn".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 7.v),
                            _buildFrameColumn(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildProfileRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_profile".tr,
          style: theme.textTheme.headlineSmall,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFluentSettings28Filled,
            ),
          ),
        ),
        Container(
          height: 34.v,
          width: 30.h,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 2.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillPrimary2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 13.v,
            width: 4.h,
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtyNineStack(BuildContext context) {
    return SizedBox(
      height: 194.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle518,
            height: 154.v,
            width: 327.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2867,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSummaryRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.fillPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "lbl_45".tr,
                style: CustomTextStyles.titleSmallBlack900,
              ),
              Text(
                "lbl_complete_orders".tr,
                style: CustomTextStyles.bodySmallBlack90012_3,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "lbl_5".tr,
                style: CustomTextStyles.titleSmallBlack900,
              ),
              Text(
                "lbl_failed_orders".tr,
                style: CustomTextStyles.bodySmallBlack90012_3,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_42".tr,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img24NavigationStar,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
              Text(
                "lbl_average_rating".tr,
                style: CustomTextStyles.bodySmallBlack90012_3,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "msg_copy_invitation".tr,
                    style: CustomTextStyles.bodySmallBlack90012_2,
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: theme.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Container(
                    height: 26.v,
                    width: 71.h,
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "lbl_copy".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(top: 5.v),
                            child: IntrinsicWidth(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_copy_invitation".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack90012_2,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSolarCopyLinear,
                                          height: 12.adaptSize,
                                          width: 12.adaptSize,
                                          margin: EdgeInsets.only(bottom: 5.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Divider(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Divider(),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "msg_copy_invitation2".tr,
                  style: CustomTextStyles.bodySmallBlack90012_2,
                ),
              ),
              Text(
                "lbl_12tdne476m".tr,
                style: CustomTextStyles.labelLargeBlack900,
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Divider(),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_referrals".tr,
                  style: CustomTextStyles.bodySmallBlack90012_2,
                ),
                Text(
                  "lbl_24".tr,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
