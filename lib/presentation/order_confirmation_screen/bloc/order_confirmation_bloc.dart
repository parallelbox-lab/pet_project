import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/order_confirmation_screen/models/order_confirmation_model.dart';
part 'order_confirmation_event.dart';
part 'order_confirmation_state.dart';

/// A bloc that manages the state of a OrderConfirmation according to the event that is dispatched to it.
class OrderConfirmationBloc
    extends Bloc<OrderConfirmationEvent, OrderConfirmationState> {
  OrderConfirmationBloc(OrderConfirmationState initialState)
      : super(initialState) {
    on<OrderConfirmationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderConfirmationInitialEvent event,
    Emitter<OrderConfirmationState> emit,
  ) async {}
}
