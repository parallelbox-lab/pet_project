// ignore_for_file: must_be_immutable

part of 'order_confirmation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderConfirmation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderConfirmationEvent extends Equatable {}

/// Event that is dispatched when the OrderConfirmation widget is first created.
class OrderConfirmationInitialEvent extends OrderConfirmationEvent {
  @override
  List<Object?> get props => [];
}
