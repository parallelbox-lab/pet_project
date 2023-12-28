import '../models/solarpanellist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SolarpanellistItemWidget extends StatelessWidget {
  SolarpanellistItemWidget(
    this.solarpanellistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SolarpanellistItemModel solarpanellistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.outlineGrayA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: solarpanellistItemModelObj?.solarPanelImage,
            height: 102.v,
            width: 103.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 77.v,
                      width: 160.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              solarpanellistItemModelObj.solarPanelText!,
                              style: CustomTextStyles.bodyMediumRegular_1,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 160.h,
                              margin: EdgeInsets.only(bottom: 15.v),
                              child: Text(
                                solarpanellistItemModelObj
                                    .exploreTheFutureText!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallBlack90010
                                    .copyWith(
                                  height: 1.30,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              solarpanellistItemModelObj
                                  .orderAndInstallationText!,
                              style: CustomTextStyles.bodySmallPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgZondiconsMinusSolid,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 41.v,
                        bottom: 16.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Text(
                  solarpanellistItemModelObj.priceText!,
                  style: CustomTextStyles.bodyMediumRegular_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
