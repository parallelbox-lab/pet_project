// ignore_for_file: must_be_immutable

part of 'payment_successful_bloc.dart';

/// Represents the state of PaymentSuccessful in the application.
class PaymentSuccessfulState extends Equatable {
  PaymentSuccessfulState({this.paymentSuccessfulModelObj});

  PaymentSuccessfulModel? paymentSuccessfulModelObj;

  @override
  List<Object?> get props => [
        paymentSuccessfulModelObj,
      ];
  PaymentSuccessfulState copyWith(
      {PaymentSuccessfulModel? paymentSuccessfulModelObj}) {
    return PaymentSuccessfulState(
      paymentSuccessfulModelObj:
          paymentSuccessfulModelObj ?? this.paymentSuccessfulModelObj,
    );
  }
}
