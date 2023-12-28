import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/edit_email_two_screen/models/edit_email_two_model.dart';
part 'edit_email_two_event.dart';
part 'edit_email_two_state.dart';

/// A bloc that manages the state of a EditEmailTwo according to the event that is dispatched to it.
class EditEmailTwoBloc extends Bloc<EditEmailTwoEvent, EditEmailTwoState> {
  EditEmailTwoBloc(EditEmailTwoState initialState) : super(initialState) {
    on<EditEmailTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditEmailTwoInitialEvent event,
    Emitter<EditEmailTwoState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        mobileNoController: TextEditingController(),
        addressController: TextEditingController(),
        zipcodeController: TextEditingController()));
  }
}
