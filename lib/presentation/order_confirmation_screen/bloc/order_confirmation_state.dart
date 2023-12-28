// ignore_for_file: must_be_immutable

part of 'order_confirmation_bloc.dart';

/// Represents the state of OrderConfirmation in the application.
class OrderConfirmationState extends Equatable {
  OrderConfirmationState({this.orderConfirmationModelObj});

  OrderConfirmationModel? orderConfirmationModelObj;

  @override
  List<Object?> get props => [
        orderConfirmationModelObj,
      ];
  OrderConfirmationState copyWith(
      {OrderConfirmationModel? orderConfirmationModelObj}) {
    return OrderConfirmationState(
      orderConfirmationModelObj:
          orderConfirmationModelObj ?? this.orderConfirmationModelObj,
    );
  }
}
