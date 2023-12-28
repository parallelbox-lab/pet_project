import 'bloc/onboarding_screen_one_bloc.dart';
import 'models/onboarding_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:owoeye_s_application1/core/app_export.dart';

class OnboardingScreenOneScreen extends StatelessWidget {
  const OnboardingScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenOneBloc>(
      create: (context) => OnboardingScreenOneBloc(OnboardingScreenOneState(
        onboardingScreenOneModelObj: OnboardingScreenOneModel(),
      ))
        ..add(OnboardingScreenOneInitialEvent()),
      child: OnboardingScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenOneBloc, OnboardingScreenOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              height: 772.v,
              width: double.maxFinite,
            ),
          ),
        );
      },
    );
  }
}
