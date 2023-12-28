import 'bloc/home_screen_two_bloc.dart';
import 'models/home_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';
import 'package:owoeye_s_application1/widgets/custom_search_view.dart';

class HomeScreenTwoScreen extends StatelessWidget {
  const HomeScreenTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenTwoBloc>(
        create: (context) => HomeScreenTwoBloc(
            HomeScreenTwoState(homeScreenTwoModelObj: HomeScreenTwoModel()))
          ..add(HomeScreenTwoInitialEvent()),
        child: HomeScreenTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
                child: Column(children: [
                  _buildArrowLeftRow(context),
                  SizedBox(height: 20.v),
                  BlocSelector<HomeScreenTwoBloc, HomeScreenTwoState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search".tr);
                      }),
                  SizedBox(height: 71.v),
                  SizedBox(
                      height: 324.v,
                      width: 270.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSearching,
                            height: 268.adaptSize,
                            width: 268.adaptSize,
                            alignment: Alignment.topCenter),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                                width: 255.h,
                                child: Text("msg_you_don_t_have_any".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleLargePromptBlack900
                                        .copyWith(height: 1.29))))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 14.v,
              width: 8.h,
              margin: EdgeInsets.only(top: 11.v, bottom: 10.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child:
                  Text("lbl_search".tr, style: theme.textTheme.headlineSmall)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgIonFilterSharp,
              height: 15.adaptSize,
              width: 15.adaptSize,
              margin: EdgeInsets.only(top: 11.v, bottom: 10.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
