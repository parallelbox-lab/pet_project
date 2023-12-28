import 'bloc/filter_bloc.dart';
import 'models/filter_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
        create: (context) =>
            FilterBloc(FilterState(filterModelObj: FilterModel()))
              ..add(FilterInitialEvent()),
        child: FilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        Row(children: [
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
                              child: Text("lbl_filter".tr,
                                  style: theme.textTheme.headlineSmall))
                        ])
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
