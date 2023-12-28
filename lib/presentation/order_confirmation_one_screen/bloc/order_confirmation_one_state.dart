// ignore_for_file: must_be_immutable

part of 'order_confirmation_one_bloc.dart';

/// Represents the state of OrderConfirmationOne in the application.
class OrderConfirmationOneState extends Equatable {
  OrderConfirmationOneState({this.orderConfirmationOneModelObj});

  OrderConfirmationOneModel? orderConfirmationOneModelObj;

  @override
  List<Object?> get props => [
        orderConfirmationOneModelObj,
      ];
  OrderConfirmationOneState copyWith(
      {OrderConfirmationOneModel? orderConfirmationOneModelObj}) {
    return OrderConfirmationOneState(
      orderConfirmationOneModelObj:
          orderConfirmationOneModelObj ?? this.orderConfirmationOneModelObj,
    );
  }
}
