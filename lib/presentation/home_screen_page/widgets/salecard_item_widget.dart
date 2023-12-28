import '../models/salecard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SalecardItemWidget extends StatelessWidget {
  SalecardItemWidget(
    this.salecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SalecardItemModel salecardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: salecardItemModelObj?.image,
            height: 96.v,
            width: 159.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(4.h),
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salecardItemModelObj.title!,
                  style: CustomTextStyles.labelMediumBlack900_1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 53.h),
                  child: Text(
                    salecardItemModelObj.price!,
                    style: CustomTextStyles.labelSmallBlue700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 9.h),
            child: Text(
              salecardItemModelObj.description!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          CustomElevatedButton(
            height: 24.v,
            width: 76.h,
            text: "lbl_see_more".tr,
            margin: EdgeInsets.only(left: 9.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 3.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFearrowup,
                height: 11.adaptSize,
                width: 11.adaptSize,
              ),
            ),
            buttonTextStyle: theme.textTheme.labelSmall!,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
