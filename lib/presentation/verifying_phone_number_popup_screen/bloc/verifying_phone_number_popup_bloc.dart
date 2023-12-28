import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/verifying_phone_number_popup_screen/models/verifying_phone_number_popup_model.dart';
part 'verifying_phone_number_popup_event.dart';
part 'verifying_phone_number_popup_state.dart';

/// A bloc that manages the state of a VerifyingPhoneNumberPopup according to the event that is dispatched to it.
class VerifyingPhoneNumberPopupBloc extends Bloc<VerifyingPhoneNumberPopupEvent,
    VerifyingPhoneNumberPopupState> {
  VerifyingPhoneNumberPopupBloc(VerifyingPhoneNumberPopupState initialState)
      : super(initialState) {
    on<VerifyingPhoneNumberPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VerifyingPhoneNumberPopupInitialEvent event,
    Emitter<VerifyingPhoneNumberPopupState> emit,
  ) async {}
}
