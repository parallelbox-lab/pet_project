import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/payment_successful_screen/models/payment_successful_model.dart';
part 'payment_successful_event.dart';
part 'payment_successful_state.dart';

/// A bloc that manages the state of a PaymentSuccessful according to the event that is dispatched to it.
class PaymentSuccessfulBloc
    extends Bloc<PaymentSuccessfulEvent, PaymentSuccessfulState> {
  PaymentSuccessfulBloc(PaymentSuccessfulState initialState)
      : super(initialState) {
    on<PaymentSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentSuccessfulInitialEvent event,
    Emitter<PaymentSuccessfulState> emit,
  ) async {}
}
