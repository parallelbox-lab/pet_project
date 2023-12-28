// ignore_for_file: must_be_immutable

part of 'order_confirmation_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderConfirmationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderConfirmationOneEvent extends Equatable {}

/// Event that is dispatched when the OrderConfirmationOne widget is first created.
class OrderConfirmationOneInitialEvent extends OrderConfirmationOneEvent {
  @override
  List<Object?> get props => [];
}
