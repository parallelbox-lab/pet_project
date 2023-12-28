// ignore_for_file: must_be_immutable

part of 'payment_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the PaymentSuccessful widget is first created.
class PaymentSuccessfulInitialEvent extends PaymentSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
