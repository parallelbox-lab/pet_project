import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/change_password_screen/models/change_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

/// A bloc that manages the state of a ChangePassword according to the event that is dispatched to it.
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState>
    with CodeAutoFill {
  ChangePasswordBloc(ChangePasswordState initialState) : super(initialState) {
    on<ChangePasswordInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ChangePasswordState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    ChangePasswordInitialEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        otpController: TextEditingController()));
    listenForCode();
  }
}
