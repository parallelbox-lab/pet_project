import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/order_confirmation_one_screen/models/order_confirmation_one_model.dart';
part 'order_confirmation_one_event.dart';
part 'order_confirmation_one_state.dart';

/// A bloc that manages the state of a OrderConfirmationOne according to the event that is dispatched to it.
class OrderConfirmationOneBloc
    extends Bloc<OrderConfirmationOneEvent, OrderConfirmationOneState> {
  OrderConfirmationOneBloc(OrderConfirmationOneState initialState)
      : super(initialState) {
    on<OrderConfirmationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderConfirmationOneInitialEvent event,
    Emitter<OrderConfirmationOneState> emit,
  ) async {}
}
