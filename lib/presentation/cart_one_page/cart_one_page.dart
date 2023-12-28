import '../cart_one_page/widgets/solarpanellist_item_widget.dart';
import 'bloc/cart_one_bloc.dart';
import 'models/cart_one_model.dart';
import 'models/solarpanellist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_checkbox_button.dart';
import 'package:owoeye_s_application1/widgets/custom_elevated_button.dart';
import 'package:owoeye_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CartOnePage extends StatelessWidget {
  const CartOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CartOneBloc>(
      create: (context) => CartOneBloc(CartOneState(
        cartOneModelObj: CartOneModel(),
      ))
        ..add(CartOneInitialEvent()),
      child: CartOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 26.v,
            ),
            child: Column(
              children: [
                _buildCartRow(context),
                SizedBox(height: 25.v),
                _buildFrameRow(context),
                SizedBox(height: 23.v),
                _buildSolarPanelList(context),
                SizedBox(height: 54.v),
                CustomElevatedButton(
                  text: "lbl_checkout_3".tr,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    right: 10.h,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCartRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_cart".tr,
          style: theme.textTheme.headlineSmall,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFluentDelete32Filled,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            bottom: 2.v,
          ),
          child: CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTdesignNotificationFilled,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          height: 30.v,
          width: 77.h,
          text: "lbl_items_3".tr,
          buttonStyle: CustomButtonStyles.fillPrimaryTL10,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
        ),
        Container(
          width: 128.h,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillPrimary2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            "lbl_total_6_000".tr,
            style: CustomTextStyles.titleSmallPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: BlocSelector<CartOneBloc, CartOneState, bool?>(
            selector: (state) => state.all,
            builder: (context, all) {
              return CustomCheckboxButton(
                text: "lbl_all".tr,
                value: all,
                onChange: (value) {
                  context
                      .read<CartOneBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSolarPanelList(BuildContext context) {
    return BlocSelector<CartOneBloc, CartOneState, CartOneModel?>(
      selector: (state) => state.cartOneModelObj,
      builder: (context, cartOneModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 19.v,
            );
          },
          itemCount: cartOneModelObj?.solarpanellistItemList.length ?? 0,
          itemBuilder: (context, index) {
            SolarpanellistItemModel model =
                cartOneModelObj?.solarpanellistItemList[index] ??
                    SolarpanellistItemModel();
            return SolarpanellistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
