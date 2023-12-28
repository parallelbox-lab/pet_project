import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/onboarding_screen_one_screen/models/onboarding_screen_one_model.dart';
part 'onboarding_screen_one_event.dart';
part 'onboarding_screen_one_state.dart';

/// A bloc that manages the state of a OnboardingScreenOne according to the event that is dispatched to it.
class OnboardingScreenOneBloc
    extends Bloc<OnboardingScreenOneEvent, OnboardingScreenOneState> {
  OnboardingScreenOneBloc(OnboardingScreenOneState initialState)
      : super(initialState) {
    on<OnboardingScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenOneInitialEvent event,
    Emitter<OnboardingScreenOneState> emit,
  ) async {}
}
