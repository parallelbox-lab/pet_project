import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/phone_number_popup_successfully_verified_screen/models/phone_number_popup_successfully_verified_model.dart';
part 'phone_number_popup_successfully_verified_event.dart';
part 'phone_number_popup_successfully_verified_state.dart';

/// A bloc that manages the state of a PhoneNumberPopupSuccessfullyVerified according to the event that is dispatched to it.
class PhoneNumberPopupSuccessfullyVerifiedBloc extends Bloc<
    PhoneNumberPopupSuccessfullyVerifiedEvent,
    PhoneNumberPopupSuccessfullyVerifiedState> {
  PhoneNumberPopupSuccessfullyVerifiedBloc(
      PhoneNumberPopupSuccessfullyVerifiedState initialState)
      : super(initialState) {
    on<PhoneNumberPopupSuccessfullyVerifiedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PhoneNumberPopupSuccessfullyVerifiedInitialEvent event,
    Emitter<PhoneNumberPopupSuccessfullyVerifiedState> emit,
  ) async {}
}
