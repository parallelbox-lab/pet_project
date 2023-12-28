import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/email_phone_number_screen/models/email_phone_number_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'email_phone_number_event.dart';
part 'email_phone_number_state.dart';

/// A bloc that manages the state of a EmailPhoneNumber according to the event that is dispatched to it.
class EmailPhoneNumberBloc
    extends Bloc<EmailPhoneNumberEvent, EmailPhoneNumberState>
    with CodeAutoFill {
  EmailPhoneNumberBloc(EmailPhoneNumberState initialState)
      : super(initialState) {
    on<EmailPhoneNumberInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EmailPhoneNumberState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EmailPhoneNumberInitialEvent event,
    Emitter<EmailPhoneNumberState> emit,
  ) async {
    emit(state.copyWith(
        phoneNumberController: TextEditingController(),
        otpController: TextEditingController()));
    listenForCode();
  }
}
