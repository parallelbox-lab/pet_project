import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/edit_email_one_screen/models/edit_email_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'edit_email_one_event.dart';
part 'edit_email_one_state.dart';

/// A bloc that manages the state of a EditEmailOne according to the event that is dispatched to it.
class EditEmailOneBloc extends Bloc<EditEmailOneEvent, EditEmailOneState>
    with CodeAutoFill {
  EditEmailOneBloc(EditEmailOneState initialState) : super(initialState) {
    on<EditEmailOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EditEmailOneState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    EditEmailOneInitialEvent event,
    Emitter<EditEmailOneState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
