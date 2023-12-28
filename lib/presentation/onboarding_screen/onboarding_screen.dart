import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
              height: 772.v,
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 56.h,
                top: 298.v,
                right: 56.h,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6926,
                    height: 49.v,
                    width: 261.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 59.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6927,
                    height: 49.v,
                    width: 256.h,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 51.adaptSize,
                    width: 51.adaptSize,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 26.v),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
