import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/edit_email_screen/models/edit_email_model.dart';
part 'edit_email_event.dart';
part 'edit_email_state.dart';

/// A bloc that manages the state of a EditEmail according to the event that is dispatched to it.
class EditEmailBloc extends Bloc<EditEmailEvent, EditEmailState> {
  EditEmailBloc(EditEmailState initialState) : super(initialState) {
    on<EditEmailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditEmailInitialEvent event,
    Emitter<EditEmailState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        mobileNoController: TextEditingController(),
        addressController: TextEditingController(),
        zipcodeController: TextEditingController()));
  }
}
